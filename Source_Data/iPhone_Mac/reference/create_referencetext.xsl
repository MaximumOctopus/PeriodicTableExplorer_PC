<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>

<xsl:template match="constants">
<xsl:for-each select="constant">
<xsl:value-of select="name"/>*<xsl:value-of select="symbol"/>:<xsl:value-of select="value"/>;<xsl:value-of select="units"/>#<xsl:value-of select="uncer"/>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>