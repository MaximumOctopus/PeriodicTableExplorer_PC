<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- June 19th 2007 -->

<xsl:template match="element">
    <xsl:value-of select="name" />
    {
    <xsl:for-each select="isotopes/notable/isotope">
    	<xsl:if test="na!='trace' and na!='' and na!='synthetic'">
    	[
    	<xsl:value-of select="sym" />:<xsl:value-of select="na" />
		]
    	</xsl:if>
    </xsl:for-each>
    }
</xsl:template>

</xsl:stylesheet>