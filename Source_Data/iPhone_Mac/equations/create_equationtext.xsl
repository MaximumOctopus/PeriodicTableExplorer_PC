<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>

<xsl:template match="equation">
<xsl:value-of select="ab"/>/<xsl:value-of select="name"/>
</xsl:template>

</xsl:stylesheet>