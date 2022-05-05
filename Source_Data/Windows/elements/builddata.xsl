<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- June 15th 2006 -->

<xsl:template match="elementlist">
	<xsl:for-each select="element">
	<xsl:sort select="data/vep" lang="" data-type="number" order="descending" />
		<![CDATA[<row>]]>
			<![CDATA[<c>]]><![CDATA[<elink ref="]]><xsl:value-of select="atomicno"/><![CDATA[">]]><xsl:value-of select="name"/><![CDATA[</elink></c>]]>
			<![CDATA[<c>]]><xsl:value-of select="symbol"/><![CDATA[</c>]]>
			<![CDATA[<c>]]><xsl:value-of select="data/vep"/><![CDATA[</c>]]>
		<![CDATA[</row>]]>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
