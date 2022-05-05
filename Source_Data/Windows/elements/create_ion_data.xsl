<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY Aring "&#197;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- August 21st 2012 -->

<xsl:template match="element">	
<xsl:value-of select="name"/>,<xsl:value-of select="atomicno"/>,<xsl:value-of select="data/ion/ion1" />,<xsl:value-of select="data/ion/ion2" />,<xsl:value-of select="data/ion/ion3" />,<xsl:value-of select="data/ion/ion4" />,<xsl:value-of select="data/ion/ion5" />,<xsl:value-of select="data/ion/ion6" />,<xsl:value-of select="data/ion/ion7" />,<xsl:value-of select="data/ion/ion8" />,<xsl:value-of select="data/ion/ion9" />,<xsl:value-of select="data/ion/ion10" />
</xsl:template>

</xsl:stylesheet>