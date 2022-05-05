<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="text"/>
<!-- June 1st 2004 PAF -->

<xsl:template match="/">
	<![CDATA[<HTML>]]>
	<![CDATA[<style type="text/css">]]>
	<![CDATA[<!--]]>
	<![CDATA[A:link {color:#000000; text-decoration: none}]]>
	<![CDATA[A:visited {color:#000000; text-decoration: none}]]>
	<![CDATA[A:hover {color:#FF0000; text-decoration: underline}]]>
	<![CDATA[A:active {color:#FF000; text-decoration: none}]]>
	<![CDATA[-->]]>
	<![CDATA[</style>]]>
	<![CDATA[<BODY leftmargin="0" topmargin="0"><TABLE width="100%">]]>
	<xsl:apply-templates/>
	<![CDATA[</TABLE></BODY></HTML>]]>
</xsl:template>

<xsl:template match="element">	
	<![CDATA[<tr><td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><img src="bluecube.gif"/><a href="content\]]><xsl:value-of select="name"/><![CDATA[.htm">]]><xsl:value-of select="name"/><![CDATA[ (]]><xsl:value-of select="symbol"/><![CDATA[)</a></font></td></tr>]]>
</xsl:template>

</xsl:stylesheet>