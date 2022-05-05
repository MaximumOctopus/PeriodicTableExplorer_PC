<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 1st 2004 PAF -->

<xsl:template match="glossaryitems">
	<HTML><HEAD><TITLE>Glossary Page</TITLE>
	<style type="text/css">
	<xsl:comment>
	A:link {color:#000000; text-decoration: none}
	A:visited {color:#000000; text-decoration: none}
	A:hover {color:#FF0000; text-decoration: underline}
	A:active {color:#FF000; text-decoration: none}
	.JF {font-family: Verdana; font-size:10pt; color:#000000;}
	.JZ {font-family: Verdana; font-size:6pt; color:#BBBBBB;}
	</xsl:comment>
	</style></HEAD>
	<BODY leftmargin="0" topmargin="0"><TABLE width="100%">
	<TR><TD class="JF" align="center"><A NAME="top" />
	<xsl:for-each select="glossary[@type='astop']">
		<a href="#{title}"><xsl:value-of select="title" /> </a>
	</xsl:for-each>
	</TD>
	</TR>
	
	<xsl:for-each select="glossary">
		<xsl:if test="@type='entry'">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1">
					<tr><td bgcolor="#F3F8F4">
					<DIV class="JF">&nbsp;&nbsp;<img src="bluecube.gif"/><a href="glossary\{filename}.htm"><xsl:apply-templates select="title"/></a></DIV></td></tr>
				</xsl:when>		
				<xsl:otherwise>
					<tr><td>
					<DIV class="JF">&nbsp;&nbsp;<img src="bluecube.gif"/><a href="glossary\{filename}.htm"><xsl:apply-templates select="title"/></a></DIV></td></tr>
				</xsl:otherwise>	
			</xsl:choose>		
		</xsl:if>
		<xsl:if test="@type='astop'">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1">
					<tr><td bgcolor="#F3F8F4">
					<SPAN class="JF"><a name="{title}"/><img src="greencube.gif"/><xsl:value-of select="title"/></SPAN>&nbsp;&nbsp;<SPAN class="JZ"><A HREF="#top">[top]</A></SPAN></td></tr>
				</xsl:when>		
				<xsl:otherwise>
					<tr><td>
					<SPAN class="JF"><a name="{title}"/><img src="greencube.gif"/><xsl:value-of select="title"/></SPAN>&nbsp;&nbsp;<SPAN class="JZ"><A HREF="#top">[top]</A></SPAN></td></tr>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>		
	</xsl:for-each>
	
	</TABLE></BODY></HTML>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

</xsl:stylesheet>