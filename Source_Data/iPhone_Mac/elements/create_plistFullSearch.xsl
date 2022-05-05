<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- Feb 11th 2010 -->
<xsl:template match="elementlist">
<![CDATA[<?xml version="1.0" encoding="UTF-8"?>]]>
<![CDATA[<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">]]>
<![CDATA[<!-- Paul Alan Freshney September 15th 2011 -->]]>

<![CDATA[<plist version="1.0">]]>
<![CDATA[<array>]]>
<xsl:for-each select="element">
	<xsl:sort select="atomicno" data-type="number"/>
	<![CDATA[<dict>]]>
		<![CDATA[<key>atomicnumber</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="atomicno"/><![CDATA[</integer>]]>
		<![CDATA[<key>name</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="name"/><![CDATA[</string>]]>
		<![CDATA[<key>aec</key>]]><!-- Abundance EC ============================================================================ -->
		<xsl:choose>
		<xsl:when test="abundance/ec=''">
		<![CDATA[<string>-999</string>]]>
		</xsl:when>
		<xsl:otherwise>
		<![CDATA[<string>]]><xsl:value-of select="abundance/ec"/><![CDATA[</string>]]>
		<![CDATA[<key>aec_s</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/ec/@search"/><![CDATA[</string>]]>
		</xsl:otherwise>
		</xsl:choose>		
		<![CDATA[<key>ahw</key>]]><!-- Abundance Human (Weight) ================================================================ -->
		<xsl:choose>
		<xsl:when test="abundance/hu/byw=''">
		<![CDATA[<string>-999</string>]]>
		</xsl:when>
		<xsl:otherwise>
		<![CDATA[<string>]]><xsl:value-of select="abundance/hu/byw"/><![CDATA[</string>]]>
		<![CDATA[<key>ahw_s</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/hu/byw/@search"/><![CDATA[</string>]]>
		</xsl:otherwise>
		</xsl:choose>
		<![CDATA[<key>aha</key>]]><!-- Abundance Human (Weight) ================================================================ -->
		<xsl:choose>
		<xsl:when test="abundance/hu/bya=''">
		<![CDATA[<string>-999</string>]]>
		</xsl:when>
		<xsl:otherwise>
		<![CDATA[<string>]]><xsl:value-of select="abundance/hu/bya"/><![CDATA[</string>]]>
		<![CDATA[<key>aha_s</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/hu/bya/@search"/><![CDATA[</string>]]>
		</xsl:otherwise>
		</xsl:choose>
		<![CDATA[<key>as</key>]]><!-- Abundance Sun =========================================================================== -->
		<xsl:choose>
		<xsl:when test="abundance/sun=''">
		<![CDATA[<string>-999</string>]]>
		</xsl:when>
		<xsl:otherwise>
		<![CDATA[<string>]]><xsl:value-of select="abundance/sun"/><![CDATA[</string>]]>
		<![CDATA[<key>as_s</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/sun/@search"/><![CDATA[</string>]]>
		</xsl:otherwise>
		</xsl:choose>		
		<![CDATA[<key>au</key>]]><!-- Abundance Universe ====================================================================== -->
		<xsl:choose>
		<xsl:when test="abundance/uni=''">
		<![CDATA[<string>-999</string>]]>
		</xsl:when>
		<xsl:otherwise>
		<![CDATA[<string>]]><xsl:value-of select="abundance/uni"/><![CDATA[</string>]]>
		<![CDATA[<key>au_s</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="abundance/uni/@search"/><![CDATA[</string>]]>
		</xsl:otherwise>
		</xsl:choose>		
		<![CDATA[<key>ar</key>]]><!-- Atomic Radius =========================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/atomicradii/ar"/><![CDATA[</string>]]>
		<![CDATA[<key>atomicweight</key>]]><!-- Atomic Weight ================================================================= -->
		<![CDATA[<string>]]><xsl:value-of select="atomicweight"/><![CDATA[</string>]]>
		<![CDATA[<key>av</key>]]><!-- Atomic Volume =========================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/av"/><![CDATA[</string>]]>
		<![CDATA[<key>bp</key>]]><!-- Boiling Point =========================================================================== -->
		<xsl:choose>
		<xsl:when test="boiling='unknown'"><![CDATA[<string>]]>-999<![CDATA[</string>]]></xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="boiling"/><![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
		<![CDATA[<key>bh</key>]]><!-- Brinell Hardness ==================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/bh"/><![CDATA[</string>]]>
		<![CDATA[<key>bm</key>]]><!-- Bulk Modulus ============================================================================ -->
		<![CDATA[<string>]]><xsl:value-of select="data/bm"/><![CDATA[</string>]]>
		<![CDATA[<key>colour</key>]]><!-- Colour ============================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="colour"/><![CDATA[</string>]]>
		<![CDATA[<key>density</key>]]><!-- Density ============================================================================ -->
		<![CDATA[<string>]]><xsl:value-of select="density"/><![CDATA[</string>]]>		
		<![CDATA[<key>dd</key>]]><!-- Discovery Date ========================================================================== -->
		<xsl:choose>
		<xsl:when test="dwhen=''"><![CDATA[<string>0</string>]]></xsl:when>
		<xsl:when test="dwhen='unknown'"><![CDATA[<string>Unknown</string>]]></xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="dwhen"/><![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
		<![CDATA[<key>dl</key>]]><!-- Discovery Where ========================================================================= -->
		<![CDATA[<string>]]><xsl:value-of select="dwhere"/><![CDATA[</string>]]>
		<![CDATA[<key>dw</key>]]><!-- Discovery Who =========================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="dwho"/><![CDATA[</string>]]>
		<![CDATA[<key>ec</key>]]><!-- Electrical Conductivity ================================================================= -->
		<xsl:choose>
		<xsl:when test="data/elc='?'">
		<![CDATA[<string>-999</string>]]>
		</xsl:when>
		<xsl:otherwise>
		<![CDATA[<string>]]><xsl:value-of select="data/elc"/><![CDATA[</string>]]>
		<![CDATA[<key>ec_s</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/elc/@search"/><![CDATA[</string>]]>
		</xsl:otherwise>
		</xsl:choose>
		<![CDATA[<key>er</key>]]><!-- Electrical Resistivity ================================================================== -->
		<xsl:choose>
		<xsl:when test="data/er='?'">
		<![CDATA[<string>-999</string>]]>
		</xsl:when>
		<xsl:otherwise>
		<![CDATA[<string>]]><xsl:value-of select="data/er"/><![CDATA[</string>]]>
		<![CDATA[<key>er_s</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/er/@search"/><![CDATA[</string>]]>
		</xsl:otherwise>
		</xsl:choose>		
		<![CDATA[<key>enps</key>]]><!-- ENPS ================================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/enps"/><![CDATA[</string>]]>	
		<![CDATA[<key>eoa</key>]]><!-- Enthalpy of Atomisation ================================================================ -->
		<![CDATA[<string>]]><xsl:value-of select="data/eoa"/><![CDATA[</string>]]>
		<![CDATA[<key>eof</key>]]><!-- Enthalpy of Fusion ===================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/eof"/><![CDATA[</string>]]>
		<![CDATA[<key>eov</key>]]><!-- Enthalpy of Vaporisation =============================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/eov"/><![CDATA[</string>]]>
		<![CDATA[<key>group</key>]]><!-- Group No. ============================================================================ -->
		<![CDATA[<string>]]><xsl:value-of select="groupname"/><![CDATA[</string>]]>
		<![CDATA[<key>hc</key>]]><!-- Heat Capacity =========================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/hc"/><![CDATA[</string>]]>
		<![CDATA[<key>mp</key>]]><!-- Melting Point =========================================================================== -->
		<xsl:choose>
		<xsl:when test="melting='unknown'"><![CDATA[<string>]]>-999<![CDATA[</string>]]></xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="melting"/><![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
		<![CDATA[<key>pr</key>]]><!-- Poisson Ratio =========================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/pr"/><![CDATA[</string>]]>
		<![CDATA[<key>period</key>]]><!-- Period ============================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="periodno"/><![CDATA[</string>]]>
		<![CDATA[<key>sm</key>]]><!-- Shear Modulus =========================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/sm"/><![CDATA[</string>]]>
		<![CDATA[<key>sos</key>]]><!-- Speed of Sound ========================================================================= -->
		<![CDATA[<string>]]><xsl:value-of select="data/sos"/><![CDATA[</string>]]>
		<![CDATA[<key>state</key>]]><!-- State ================================================================================ -->
		<![CDATA[<string>]]><xsl:value-of select="state"/><![CDATA[</string>]]>
		<![CDATA[<key>symbol</key>]]><!-- Symbol ============================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="symbol"/><![CDATA[</string>]]>
		<![CDATA[<key>tv</key>]]><!-- Thermal Conductivity ==================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/tc"/><![CDATA[</string>]]>
		<![CDATA[<key>te</key>]]><!-- Thermal Expansion ======================================================================= -->
		<![CDATA[<string>]]><xsl:value-of select="data/te"/><![CDATA[</string>]]>
		<![CDATA[<key>type</key>]]><!-- Type ================================================================================== -->
		<![CDATA[<integer>]]><xsl:value-of select="@type"/><![CDATA[</integer>]]>
		<![CDATA[<key>vep</key>]]><!-- VEP ==================================================================================== -->
		<![CDATA[<string>]]><xsl:value-of select="data/vep"/><![CDATA[</string>]]>
		<![CDATA[<key>vh</key>]]><!-- Vickers Hardnes ========================================================================= -->
		<![CDATA[<string>]]><xsl:value-of select="data/vh"/><![CDATA[</string>]]>
		<![CDATA[<key>ym</key>]]><!-- Young's Modulus ========================================================================= -->
		<![CDATA[<string>]]><xsl:value-of select="data/ym"/><![CDATA[</string>]]>
	<![CDATA[</dict>]]>
</xsl:for-each>
<![CDATA[</array>]]>
<![CDATA[</plist>]]>
</xsl:template>

</xsl:stylesheet>