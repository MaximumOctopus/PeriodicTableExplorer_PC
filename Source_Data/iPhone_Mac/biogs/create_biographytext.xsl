<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text" encoding="UTF-16"/>

<xsl:template match="elementbiog">
	<xsl:for-each select="biog">
	<xsl:if test="@type='entry'"><xsl:value-of select="ab"/>/<xsl:value-of select="name"/>:</xsl:if>
	</xsl:for-each>	
</xsl:template>

</xsl:stylesheet>