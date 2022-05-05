<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>

<xsl:template match="questions">
	<xsl:for-each select="q">
		#<xsl:value-of select="text"/>$<xsl:value-of select="@type"/>~<xsl:value-of select="image"/>^<xsl:for-each select="answers/answer"><xsl:value-of select="."/>*</xsl:for-each>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>