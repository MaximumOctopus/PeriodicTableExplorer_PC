<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- January 26th 2006 -->

<xsl:template match="event">	
    <xsl:param name="boing" select="@daycode"/>
	<xsl:document href="{concat('pages\',$boing, '.htm')}">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="paf.css" />
		</HEAD>
		<BODY leftmargin="5" topmargin="0">
		<TABLE width="100%">
  		<tr bgcolor="#FFFF33" class="JF"><td height="18"><b><xsl:value-of select="title"/></b></td></tr>
		</TABLE>
			
		<table width="100%" class="JF">
		<xsl:for-each select="body/ptxt">			
			<xsl:choose>
				<xsl:when test="@year!=''">
					<TR>
						<td width="2%" valign="top"><B><xsl:value-of select="@year" /></B></td>
						<TD><xsl:apply-templates/></TD>
					</TR>
				</xsl:when>
				<xsl:when test="@year=''">
					<TR>
						<td width="2%">&nbsp;</td>
						<TD><xsl:apply-templates/></TD>
					</TR>
				</xsl:when>			
			</xsl:choose>
		</xsl:for-each>
		</table>	
		
		</BODY></HTML>
	</xsl:document>
</xsl:template>


<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="i"><i><xsl:value-of select="."/></i></xsl:template>

<xsl:template match="wlink"><span class="wlink"><xsl:value-of select="."/></span></xsl:template>

<xsl:template match="elink"><span class="elink"><xsl:value-of select="."/></span></xsl:template>

<xsl:template match="glink"><span class="glink"><xsl:value-of select="."/></span></xsl:template>

<xsl:template match="blink"><span class="blink"><xsl:value-of select="."/></span></xsl:template>

</xsl:stylesheet>