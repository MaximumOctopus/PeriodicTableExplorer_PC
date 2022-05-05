<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- August 29th 2011 -->
<xsl:template match="elementlist">
<![CDATA[<?xml version="1.0" encoding="UTF-8"?>]]>
<![CDATA[<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">]]>
<![CDATA[<!-- Paul Alan Freshney February 11th 2010 -->]]>

<![CDATA[<plist version="1.0">]]>
<![CDATA[<array>]]>
<xsl:for-each select="element">
	<xsl:sort select="atomicno" data-type="number"/>
	<![CDATA[<dict>]]>
		<![CDATA[<key>atomicnumber</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="atomicno"/><![CDATA[</integer>]]>
		<![CDATA[<key>name</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="name"/><![CDATA[</string>]]>

		<![CDATA[<key>aec</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/ec"/> ppm<![CDATA[</string>]]>
<!-- Abundance Sun =============================================================================================== -->		
		<![CDATA[<key>ac</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/sun"/> ppm<![CDATA[</string>]]>
<!-- Abundance Universe =============================================================================================== -->				
		<![CDATA[<key>au</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/uni"/> ppm<![CDATA[</string>]]>		
<!-- Atomic Radius =============================================================================================== -->		
		<![CDATA[<key>ar</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/atomicradii/ar"/> pm<![CDATA[</string>]]>
<!-- Atomic Weight =============================================================================================== -->		
		<![CDATA[<key>aw</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="atomicweight"/><![CDATA[</string>]]>
<!-- Atomic Volume =============================================================================================== -->		
		<![CDATA[<key>av</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/av"/><![CDATA[</string>]]>
<!-- Boiling Point =============================================================================================== -->				
		<![CDATA[<key>bp</key>]]>
		<xsl:choose>
		<xsl:when test="boiling='unknown'"><![CDATA[<string>]]><xsl:value-of select="boiling"/><![CDATA[</string>]]></xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="boiling"/>K<![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
<!-- Colour =============================================================================================== -->
		<![CDATA[<key>colour</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="colour"/><![CDATA[</string>]]>		
<!-- Discovery Date =============================================================================================== -->				
		<![CDATA[<key>dd</key>]]>
		<xsl:choose>
		<xsl:when test="dwhen=''"><![CDATA[<string>Known to the ancients.</string>]]></xsl:when>
		<xsl:when test="dwhen='unknown'">Unknown.</xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="dwhen"/><![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
<!-- Discovery Where =============================================================================================== -->				
		<![CDATA[<key>dl</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="dwhere"/><![CDATA[</string>]]>
<!-- Discovery Who =============================================================================================== -->				
		<![CDATA[<key>dw</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="dwho"/><![CDATA[</string>]]>
<!-- ENPS =============================================================================================== -->						
		<![CDATA[<key>enps</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/enps"/><![CDATA[</string>]]>	
<!-- Enthalpy of Atomisation =============================================================================================== -->								
		<![CDATA[<key>eoa</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/eoa"/> kJ/mol<![CDATA[</string>]]>
<!-- Enthalpy of Fusion =============================================================================================== -->
		<![CDATA[<key>eof</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/eof"/> kJ/mol<![CDATA[</string>]]>	
<!-- Enthalpy of Vaporisation =============================================================================================== -->
		<![CDATA[<key>eov</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/eov"/> kJ/mol<![CDATA[</string>]]>
<!-- Group No. =============================================================================================== -->
		<![CDATA[<key>group</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="groupname"/><![CDATA[</string>]]>		
<!-- Heat Capacity =============================================================================================== -->
		<![CDATA[<key>hc</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/hc"/> kJ/mol<![CDATA[</string>]]>		
<!-- Melting Point =============================================================================================== -->
		<![CDATA[<key>mp</key>]]>
		<xsl:choose>
		<xsl:when test="melting='unknown'"><![CDATA[<string>]]><xsl:value-of select="melting"/><![CDATA[</string>]]></xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="melting"/>K<![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
<!-- Period =============================================================================================== -->
		<![CDATA[<key>period</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="periodno"/><![CDATA[</string>]]>		
<!-- Speed of Sound =============================================================================================== -->
		<![CDATA[<key>sos</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/sos"/> m/s<![CDATA[</string>]]>
<!-- State =============================================================================================== -->
		<![CDATA[<key>state</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="state"/><![CDATA[</string>]]>
<!-- Symbol =============================================================================================== -->
		<![CDATA[<key>symbol</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="symbol"/><![CDATA[</string>]]>		
<!-- Thermal Conductivity =============================================================================================== -->		
		<![CDATA[<key>tc</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/tc"/> W/m/K<![CDATA[</string>]]>
<!-- Thermal Expansion =============================================================================================== -->		
		<![CDATA[<key>te</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/te"/> micrometeres/m/K<![CDATA[</string>]]>
<!-- Type =============================================================================================== -->
		<![CDATA[<key>type</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="@type"/><![CDATA[</integer>]]>		
<!-- VEP =============================================================================================== -->
		<![CDATA[<key>vep</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/vep"/><![CDATA[</string>]]>
	<![CDATA[</dict>]]>
</xsl:for-each>
<![CDATA[</array>]]>
<![CDATA[</plist>]]>
</xsl:template>

</xsl:stylesheet>