<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- Feb 11th 2010 -->
<xsl:template match="elementlist">
<![CDATA[<?xml version="1.0" encoding="UTF-8"?>]]>
<![CDATA[<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">]]>
<![CDATA[<!-- Paul Alan Freshney August 21st 2010 -->]]>

<![CDATA[<plist version="1.0">]]>
<![CDATA[<array>]]>
<xsl:for-each select="element">
	<xsl:sort select="data/hc" data-type="number"  order="descending"/>
	<![CDATA[<dict>]]>
		<![CDATA[<key>atomicnumber</key>]]>
		<![CDATA[<integer>]]><xsl:value-of select="atomicno"/><![CDATA[</integer>]]>
		<![CDATA[<key>name</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="name"/><![CDATA[</string>]]>
		<![CDATA[<key>data</key>]]>
		<![CDATA[<string>]]><xsl:value-of select="data/hc"/> kJ/mol<![CDATA[</string>]]>
	<![CDATA[</dict>]]>
</xsl:for-each>
<![CDATA[</array>]]>
<![CDATA[</plist>]]>
</xsl:template>

</xsl:stylesheet>