<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY deg "&#176;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- December 1st 2005 -->

<xsl:template match="/">	
	<xsl:apply-templates/>	
</xsl:template>

<xsl:template match="document">	
    <xsl:param name="boing" select="filename"/>
	<xsl:document href="{concat('element_lists\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Element: <xsl:value-of select="name"/></TITLE>
		<style type="text/css">
		<xsl:comment>
		A.blink:link {color:#006666; text-decoration: none}
		A.blink:visited {color:#006666; text-decoration: none}
		A.blink:hover {color:#FF0000; text-decoration: underline}
		A.blink:active {color:#006666; text-decoration: none}
		A.elink:link {color:#006600; text-decoration: none; font-family: Verdana; font-size:10pt;}
		A.elink:visited {color:#006600; text-decoration: none; font-family: Verdana; font-size:10pt;}
		A.elink:hover {color:#FF0000; text-decoration: underline; font-family: Verdana; font-size:10pt;}
		A.elink:active {color:#006600; text-decoration: none; font-family: Verdana; font-size:10pt;}
		A:link {color:#000000; text-decoration: none}
		A:visited {color:#000000; text-decoration: none}
		A:hover {color:#FF0000; text-decoration: underline}
		A:active {color:#FF000; text-decoration: none}
		.H1 {font-family: Verdana; font-size:10pt; color:#888888; font-weight:bold;}
		.JF {font-family: Verdana; font-size:10pt; color:#000000;}
		</xsl:comment>
		</style>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		
		<TR bgcolor="#DDDDDD">
			<TD colspan="3" class="JF" align="center"><xsl:value-of select="title" /></TD>
		</TR>
		
		<xsl:apply-templates select="body" />

		</TABLE>
		
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="body">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="header">
	<TR bgcolor="{@col}">
		<TD class="JF"><B><xsl:apply-templates select="c[1]"/></B></TD>
		<TD class="JF" align="center"><B><xsl:apply-templates select="c[2]"/></B></TD>
		<TD class="JF" align="center"><B><xsl:apply-templates select="c[3]"/></B></TD>
	</TR>
</xsl:template>

<xsl:template match="footer">
	<TR>
		<TD class="JF" align="center"><i><xsl:apply-templates/></i></TD>
	</TR>
</xsl:template>

<xsl:template match="headingtitle">
	<tr colspan="3"><td><img src="spacer.gif" width="12" height="10"/></td></tr>
	<tr bgcolor="#F3F8F4">
	<td class="H1" colspan="3"><img src="bluecube.gif"/><xsl:apply-templates/></td>
	</tr>
</xsl:template>

<xsl:template match="row">
	<TR>
		<TD><xsl:apply-templates select="c[1]"/></TD>
		<TD class="JF" align="center"><xsl:apply-templates select="c[2]"/></TD>
		<TD class="JF" align="center"><xsl:apply-templates select="c[3]"/></TD>
	</TR>
</xsl:template>

<xsl:template match="est">[<xsl:value-of select="."/>]</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="bi{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>