<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- Feb 11th 2010 -->
<xsl:template match="elementlist">
<![CDATA[<?xml version="1.0" encoding="UTF-8"?>]]>
<![CDATA[<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">]]>
<![CDATA[<!-- Paul Alan Freshney February 11th 2010 -->]]>

<xsl:for-each select="element"><xsl:sort select="atomicno" data-type="number"/><xsl:value-of select="atomicweight"/>, </xsl:for-each>
</xsl:template>

</xsl:stylesheet>