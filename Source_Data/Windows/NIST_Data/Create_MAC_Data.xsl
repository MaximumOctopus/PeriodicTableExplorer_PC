<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- July 20th 2008 -->

<xsl:template match="xray_mac/element">
+<xsl:value-of select="an" />
{
<xsl:for-each select="macs/mac">
<xsl:value-of select="energy" />:<xsl:value-of select="up" />;<xsl:value-of select="uenp" />$
</xsl:for-each>
}
</xsl:template>

</xsl:stylesheet>