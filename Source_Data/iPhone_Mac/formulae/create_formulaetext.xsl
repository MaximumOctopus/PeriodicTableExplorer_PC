<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>

<xsl:template match="chemical">
{
$<xsl:value-of select="realname" />
%<xsl:value-of select="formula" />
^<xsl:value-of select="cas" />
<xsl:if test="othernames!=''">
<xsl:for-each select="othernames/othername">
!<xsl:value-of select="." />
</xsl:for-each>
</xsl:if>
}
</xsl:template>

</xsl:stylesheet>