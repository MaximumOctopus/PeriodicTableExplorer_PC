<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text" />

<xsl:template match="map">
<![CDATA[<?xml version="1.0" encoding="UTF-8"?>]]>
<![CDATA[<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">]]>
<![CDATA[<!-- Paul Alan Freshney November 23rd 2011 -->]]>

<![CDATA[<plist version="1.0">]]>
<![CDATA[<array>]]>

<xsl:for-each select="country">
<xsl:if test="@type='entry'">
	<![CDATA[<dict>]]>
		<![CDATA[<key>name</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="title"/><![CDATA[</string>]]>
		<![CDATA[<key>code</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="@code"/><![CDATA[</string>]]>
		<![CDATA[<key>continent</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="@continent"/><![CDATA[</string>]]>
		<![CDATA[<key>data</key>]]>
		<![CDATA[<string>]]><xsl:for-each select="sections/section"><xsl:value-of select="@title"/>,</xsl:for-each><![CDATA[</string>]]>
	<![CDATA[</dict>]]>
</xsl:if>
</xsl:for-each>
	
<![CDATA[</array>]]>
<![CDATA[</plist>]]>
</xsl:template>

</xsl:stylesheet>