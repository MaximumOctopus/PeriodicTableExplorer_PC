<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 16th 2006 -->

<xsl:template match="/">	
	<xsl:apply-templates/>	
</xsl:template>

<xsl:template match="element">	
    <xsl:param name="boing" select="an"/>
	<xsl:document href="{concat('allotropes\a',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Allotrope : <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="element.css" />
		</HEAD>
		<BODY leftmargin="1" topmargin="1">
		<TABLE width="100%">
  		<tr>
  			<xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#33FF00</xsl:if>
  		    	<xsl:if test="@type='1'">#00FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#9C97FF</xsl:if>
  		    	<xsl:if test="@type='3'">#2DC443</xsl:if>
  		    	<xsl:if test="@type='4'">#C4AFDA</xsl:if>
  		    	<xsl:if test="@type='5'">#E19DA4</xsl:if>
  		    	<xsl:if test="@type='6'">#E2AA5F</xsl:if>
  		    	<xsl:if test="@type='7'">#EFE77E</xsl:if>
  		    	<xsl:if test="@type='8'">#C5C1FF</xsl:if>
  		    	<xsl:if test="@type='9'">#C1C1C1</xsl:if>
  		    	<xsl:if test="@type='10'">#D4D4D4</xsl:if>
      		</xsl:attribute>
      		<td width="100%" height="18" valign="middle" class="JF"><b>Allotropes of <xsl:value-of select="name"/></b></td>
		</tr>		
				
		<xsl:if test="header!=''">
			<xsl:apply-templates select="header"/>
		</xsl:if>
		</TABLE>
		
		<xsl:apply-templates select="allotropes"/>

		<table width="100%">
			<tr><td class="JZ"><img src="greycube.gif"/>See Also</td></tr>
			<tr><td class="JF"><A HREF="gallotrope.htm">Allotrope</A>.</td></tr>
		</table>

		</BODY></HTML>		
	</xsl:document>
</xsl:template>

<xsl:template match="allotropes">
	<table width="100%">
	<xsl:for-each select="allotrope">		
	   	<tr><td></td></tr>
	   	<tr>
	    <td class="JF"><img src="redcube.gif"/><xsl:apply-templates select="name" /><SPAN class="JZ"> [ <xsl:apply-templates select="formula" /> ]</SPAN></td>
	    </tr>
		
		<xsl:if test="notes/ptxt!=''">
			<xsl:apply-templates select="notes" />
		</xsl:if>
	</xsl:for-each>
	</table>
</xsl:template>

<xsl:template match="notes">
	<TR><TD>
	<table width="100%" class="JF">
	<xsl:for-each select="ptxt">
		<tr><td><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
	</table></TD></TR>
</xsl:template>

<xsl:template match="header">
	<TR><TD></TD></TR>
	<TR><TD>
	<table width="100%" class="JF">
	<xsl:for-each select="ptxt">
		<tr><td><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
	</table></TD></TR>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="g{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="b{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>