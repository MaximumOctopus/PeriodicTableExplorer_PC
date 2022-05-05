<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- January 26th 2006 -->

<xsl:template match="biog">	
    <xsl:param name="boing" select="ab"/>
	<xsl:document href="{concat('biogs\b',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Biography for: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="element.css" />
		</HEAD>
		<BODY leftmargin="5" topmargin="0">
		<TABLE width="100%">
  		<tr bgcolor="#FF6D70"><td height="18"><font size="2" face="Verdana, Arial, Helvetica, sans-serif" color="#FFFFFF"><b><xsl:value-of select="name"/></b></font></td></tr>
  		<tr bgcolor="#FFB0B3" class="JF"><td height="18"><xsl:value-of select="birthbig" /></td></tr>
		</TABLE>
	
		<xsl:if test="@image='y'">			
			<TABLE width="100%">
  			<tr><td height="18"><IMG SRC="{ab}.jpg" /></td></tr>
			</TABLE>
		</xsl:if>	
	
		<table width="100%">
		<xsl:for-each select="ptxt">
			<tr>
			<td class="JF"><xsl:apply-templates/></td>
			</tr>
			<tr><td></td></tr>
		</xsl:for-each>
		</table>	
		
		</BODY></HTML>
	</xsl:document>
</xsl:template>


<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="i"><i><xsl:value-of select="."/></i></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="g{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="b{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="wlink"><a class="wlink" href="http://{@ref}" target="_blank"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>