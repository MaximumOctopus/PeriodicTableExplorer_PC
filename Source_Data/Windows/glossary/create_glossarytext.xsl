<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text" encoding="UTF-16"/>

<xsl:template match="glossaryitems">
	<xsl:for-each select="glossary">
		<xsl:if test="@type='entry'"><xsl:value-of select="filename"/>/<xsl:value-of select="title"/>:</xsl:if>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>