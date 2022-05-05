<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 21st 2007 -->

<xsl:template match="/">	
	<xsl:apply-templates/>	
</xsl:template>

<xsl:template match="document">	
    <xsl:param name="boing" select="filename"/>
	<xsl:document href="{concat('docs\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE></TITLE>
		<style type="text/css">
		<xsl:comment>
		A.elink:link {color:#006600; text-decoration: none}
		A.elink:visited {color:#006600; text-decoration: none}
		A.elink:hover {color:#FF0000; text-decoration: underline}
		A.elink:active {color:#006600; text-decoration: none}
		A.glink:link {color:#000066; text-decoration: none}
		A.glink:visited {color:#000066; text-decoration: none}
		A.glink:hover {color:#FF0000; text-decoration: underline}
		A.glink:active {color:#000066; text-decoration: none}
		A.doclink:link {color:#663300; text-decoration: none}
		A.doclink:visited {color:#663300; text-decoration: none}
		A.doclink:hover {color:#FF0000; text-decoration: underline}
		A.doclink:active {color:#663300; text-decoration: none}		
		A:link {color:#000000; text-decoration: none}
		A:visited {color:#000000; text-decoration: none}
		A:hover {color:#FF0000; text-decoration: underline}
		A:active {color:#FF000; text-decoration: none}
		.H1 {font-family: Verdana; font-size:10pt; color:#888888; font-weight:bold;}
		.JF {font-family: Verdana; font-size:10pt; color:#000000;}
		.JX {font-family: Verdana; font-size:8pt; color:#000000;}
		</xsl:comment>
		</style>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
    	
    	<TABLE width="100%">
			<TR bgcolor="#EEEEEE" class="JF"><TD><B><xsl:value-of select="title" /></B></TD></TR>
			
			<xsl:apply-templates select="body" />			
		</TABLE>
		
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="ptxt">
	<TR><TD class="JF"><xsl:apply-templates/></TD></TR>
</xsl:template>

<xsl:template match="table">
	<TABLE>
		<xsl:for-each select="tr">
			<TR class="JF">
				<xsl:for-each select="td">
					<td><xsl:apply-templates select="." /></td>
				</xsl:for-each>
			</TR>
		</xsl:for-each>		
	</TABLE>
</xsl:template>

<xsl:template match="title"><TD class="H1"><IMG SRC="../bluecube.gif" /> <B><xsl:value-of select="." /></B></TD></xsl:template>
<xsl:template match="ectlnk">[<a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a>]</xsl:template>
<xsl:template match="elink"><a class="elink" href="..\elements\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>
<xsl:template match="glink"><a class="glink" href="..\glossary\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>
<xsl:template match="doclink"><a class="doclink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="img"><IMG SRC="images/{@ref}.gif"/></xsl:template>

<xsl:template match="b"><b><xsl:value-of select="."/></b></xsl:template>
<xsl:template match="i"><i><xsl:value-of select="."/></i></xsl:template>
<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

</xsl:stylesheet>