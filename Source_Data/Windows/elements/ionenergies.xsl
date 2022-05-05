<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- June 15th 2006 -->
<xsl:template match="element">+<xsl:value-of select="atomicno" />:<xsl:value-of select="data/ion/ion1" />:<xsl:value-of select="data/ion/ion2" />:<xsl:value-of select="data/ion/ion3" />:<xsl:value-of select="data/ion/ion4" />:<xsl:value-of select="data/ion/ion5" />:<xsl:value-of select="data/ion/ion6" />:<xsl:value-of select="data/ion/ion7" />:<xsl:value-of select="data/ion/ion8" />:<xsl:value-of select="data/ion/ion9" />:<xsl:value-of select="data/ion/ion10" />:</xsl:template>
</xsl:stylesheet>