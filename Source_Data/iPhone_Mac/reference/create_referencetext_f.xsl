<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>

<xsl:template match="constant">
<xsl:value-of select="name"/>_<xsl:value-of select="symbol"/>_<xsl:value-of select="value"/>_<xsl:value-of select="units"/>_<xsl:value-of select="uncer"/>
</xsl:template>

</xsl:stylesheet>