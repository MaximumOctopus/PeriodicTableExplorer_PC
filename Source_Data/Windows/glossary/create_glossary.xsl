<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- February 17th 2007 PAF -->

<xsl:template match="glossary">	
    <xsl:param name="boing" select="filename"/>
	<xsl:document href="{concat('glossary\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Glossary: <xsl:apply-templates select="title"/></TITLE>
		<link type="text/css" rel="stylesheet" href="paf.css" />
		</HEAD>
		<BODY leftmargin="5" topmargin="0">
		<TABLE width="100%">
	  	<tr bgcolor="#ffd6b1">
	    <td height="18" class="JF"><b><xsl:apply-templates select="title"/></b></td>
	    </tr>
		</TABLE>
	
		<xsl:apply-templates select="data"/>
		
		<xsl:apply-templates select="seealso"/>
		
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="data">
	<table width="100%">
	<xsl:for-each select="ptxt">
		<tr>
		<td class="JF"><xsl:apply-templates select="."/></td>
		</tr>
	</xsl:for-each>
	</table>
</xsl:template>

<xsl:template match="seealso">
	<table width="100%">
	<tr>
		<td class="JX"><img src="..\greycube.gif"/>See Also</td>
	</tr>
	<xsl:for-each select="ptxt">
		<tr>
		<td class="JF"><xsl:apply-templates select="."/></td>
		</tr>
	</xsl:for-each>
	</table>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="image"><div align="center"><IMG SRC="{@ref}.gif"/></div></xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>
<xsl:template match="b"><b><xsl:value-of select="."/></b></xsl:template>
<xsl:template match="bi"><b><I><xsl:value-of select="."/></I></b></xsl:template>

<xsl:template match="elink"><a class="elink" href="..\elements\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="ilink"><a class="ilink" href="..\isotope\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="..\biography\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="wlink"><a class="wlink" href="http://{@ref}" target="_blank"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>