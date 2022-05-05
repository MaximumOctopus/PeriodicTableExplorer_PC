<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">

<xsl:output method="html"/>
<!-- April 29th 2008 PAF -->

<xsl:template match="equation">	
    <xsl:param name="boing" select="ab"/>
	<xsl:document href="{concat('equations\',$boing, '.htm')}">
		<HTML><HEAD>		
		<link type="text/css" rel="stylesheet" href="element.css" />
		</HEAD>
		<BODY leftmargin="5" topmargin="0">
		<TABLE width="100%">
	  	<tr bgcolor="#d6b1ff">
	    <td height="18" class="JF"><b><xsl:value-of select="name"/></b></td>
	    </tr>
		</TABLE>
	
		<table width="100%"><tr><TD align="center"><IMG SRC="e{ab}.gif" /></TD></tr></table>
	
		<xsl:apply-templates select="data"/>
		
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

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="image"><div align="center"><IMG SRC="{@ref}.gif"/></div></xsl:template>
<xsl:template match="img"><IMG SRC="{@ref}.gif"/></xsl:template>
<xsl:template match="space"><IMG SRC="spacer.gif" width="20" height="10"/></xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>
<xsl:template match="b"><b><xsl:apply-templates/></b></xsl:template>
<xsl:template match="i"><i><xsl:apply-templates/></i></xsl:template>
<xsl:template match="bi"><b><I><xsl:value-of select="."/></I></b></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="qlink"><a class="qlink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="g{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="b{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="wlink"><a class="wlink" href="http://{@ref}" target="_blank"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>