<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>

<!-- June 14th 2006 -->

<xsl:template match="element">	
    <xsl:param name="boing" select="an"/>
	<xsl:document href="{concat('reactions\r',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Reactions: <xsl:value-of select="name"/></TITLE>
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
      		<td width="95%" height="18" valign="middle" class="JF"><b>Reactions of <xsl:value-of select="name"/></b></td>
		</tr>
		<xsl:for-each select="reactions/reaction">
			<xsl:apply-templates select="."/>
		</xsl:for-each>
		<TR><TD>&nbsp;</TD></TR>
		</TABLE>
		
		<xsl:apply-templates select="reductions"/>	
	
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="ptxt">
	<TR class="JF"><TD><xsl:apply-templates/></TD></TR>
</xsl:template>

<xsl:template match="reductions">
	<TABLE width="100%">
	<tr>
	<td bgcolor="#AAAAAA" class="JF" colspan="2"><B>Reduction Potentials</B></td>
	</tr>
	<tr>
		<td class="JF">Balanced half-reaction </td>
		<td class="JF">E<SUP>0</SUP> / V</td>
	</tr>
	<xsl:for-each select="reduction">
		<tr>
			<td class="JF"><xsl:apply-templates select="eq" /></td>
			<td class="JF"><xsl:apply-templates select="ev" /></td>
		</tr>
	</xsl:for-each>
	</TABLE>
</xsl:template>

<xsl:template match="title"><TR class="JF"><TD><img src="bluecube.gif"/><b><xsl:apply-templates/></b></TD></TR></xsl:template>

<xsl:template match="img"><IMG SRC="{@type}.gif"/></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="g{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="gap">&nbsp;&nbsp;</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

</xsl:stylesheet>