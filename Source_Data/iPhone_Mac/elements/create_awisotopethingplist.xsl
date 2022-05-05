<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- Feb 11th 2010 -->
<xsl:template match="elementlist">
<![CDATA[<?xml version="1.0" encoding="UTF-8"?>]]>
<![CDATA[<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">]]>
<![CDATA[<!-- Paul Alan Freshney September 7th 2011 -->]]>

<![CDATA[<plist version="1.0">]]>
<![CDATA[<array>]]>
<xsl:for-each select="element">
	<xsl:sort select="atomicno" data-type="number"/>
	<![CDATA[<dict>]]>
		<![CDATA[<key>atomicnumber</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="atomicno"/><![CDATA[</integer>]]>
		<![CDATA[<key>aw</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="atomicweight"/><![CDATA[</string>]]>
		<![CDATA[<key>atomicicoint</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="count(atomicic/i)"/><![CDATA[</integer>]]>		
		<xsl:for-each select="atomicic/i">
		<![CDATA[<key>iname]]><xsl:value-of select="position()"/><![CDATA[</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="@name"/><![CDATA[</string>]]>
		<![CDATA[<key>ip]]><xsl:value-of select="position()"/><![CDATA[</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="@p"/><![CDATA[</string>]]>
		<![CDATA[<key>iw]]><xsl:value-of select="position()"/><![CDATA[</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="."/><![CDATA[</string>]]>
		</xsl:for-each>
	<![CDATA[</dict>]]>
</xsl:for-each>
<![CDATA[</array>]]>
<![CDATA[</plist>]]>
</xsl:template>

</xsl:stylesheet>