<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text" encoding="UTF-16"/>

<xsl:template match="media/images">
	<xsl:for-each select="element"><xsl:value-of select="an"/>/<xsl:for-each select="imagelist/image"><xsl:value-of select="filename"/>:<xsl:value-of select="title"/>*<xsl:value-of select="notes/ptext"/>@</xsl:for-each></xsl:for-each>#
</xsl:template>

</xsl:stylesheet>