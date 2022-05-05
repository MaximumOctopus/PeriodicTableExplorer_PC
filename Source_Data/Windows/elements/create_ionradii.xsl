<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY Aring "&#197;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- December 3rd 2007 -->

<xsl:template match="element">	
<xsl:param name="z" select="atomicno"/>
<xsl:param name="zname" select="name"/>
<xsl:for-each select="data/radii/charge">
<xsl:for-each select="coordination">
^<xsl:value-of select="$zname"/>,<xsl:value-of select="$z"/>,<xsl:value-of select="../@value" />,<xsl:choose><xsl:when test="@spin!=''"><xsl:value-of select="@value" /> (<xsl:value-of select="@spin" /> spin)</xsl:when><xsl:otherwise><xsl:value-of select="@value" />,</xsl:otherwise></xsl:choose><xsl:value-of select="cr" />, <xsl:value-of select="ir" />, <xsl:value-of select="key" />

</xsl:for-each>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>