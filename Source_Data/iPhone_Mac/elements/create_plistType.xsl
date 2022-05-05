<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- Feb 11th 2010 -->
<xsl:template match="elementlist">
<![CDATA[<?xml version="1.0" encoding="UTF-8"?>]]>
<![CDATA[<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">]]>
<![CDATA[<!-- Paul Alan Freshney February 11th 2010 -->]]>

<![CDATA[<plist version="1.0">]]>
<![CDATA[<array>]]>
<xsl:for-each select="element">
	<xsl:sort select="atomicno" data-type="number" order="ascending"/>
	<![CDATA[<dict>]]>
		<![CDATA[<key>atomicnumber</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="atomicno"/><![CDATA[</integer>]]>
		<![CDATA[<key>atomicweight</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="atomicweight"/><![CDATA[</string>]]>
		<![CDATA[<key>name</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="name"/><![CDATA[</string>]]>
		<![CDATA[<key>group</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="groupname"/><![CDATA[</string>]]>
		<![CDATA[<key>state</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="state"/><![CDATA[</string>]]>
		<![CDATA[<key>colour</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="colour"/><![CDATA[</string>]]>
		<![CDATA[<key>enps</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/enps"/><![CDATA[</string>]]>
		<![CDATA[<key>period</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="periodno"/><![CDATA[</string>]]>
		<![CDATA[<key>symbol</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="symbol"/><![CDATA[</string>]]>
		<![CDATA[<key>type</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="@type"/><![CDATA[</integer>]]>
		<![CDATA[<key>bp</key>]]>
		<xsl:choose>
		<xsl:when test="boiling='unknown'"><![CDATA[<string>]]><xsl:value-of select="boiling"/><![CDATA[</string>]]></xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="boiling"/>K<![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
		<![CDATA[<key>mp</key>]]>
		<xsl:choose>
		<xsl:when test="melting='unknown'"><![CDATA[<string>]]><xsl:value-of select="melting"/><![CDATA[</string>]]></xsl:when>
		<xsl:otherwise><![CDATA[<string>]]><xsl:value-of select="melting"/>K<![CDATA[</string>]]></xsl:otherwise>
		</xsl:choose>
	<![CDATA[</dict>]]>
</xsl:for-each>
<![CDATA[</array>]]>
<![CDATA[</plist>]]>
</xsl:template>

</xsl:stylesheet>