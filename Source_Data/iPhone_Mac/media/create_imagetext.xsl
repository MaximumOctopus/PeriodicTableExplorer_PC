<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>

<xsl:template match="element">
<xsl:param name="boing" select="an"/>
<xsl:for-each select="imagelist/image">
<xsl:document href="{concat('imagepages\',$boing, '_', position(), '.txt')}">
<xsl:value-of select="notes/ptext"/>
</xsl:document>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>