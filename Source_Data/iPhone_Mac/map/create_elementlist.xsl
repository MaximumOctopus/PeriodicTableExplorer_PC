<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text" />

<xsl:template match="country">
	<xsl:if test="@type='entry'">
	<xsl:value-of select="@code" />:<xsl:for-each select="sections/section"><xsl:value-of select="@title"/>:</xsl:for-each>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>