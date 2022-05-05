<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- January 26th 2006 -->

<xsl:template match="country">	
    <xsl:param name="boing" select="@code"/>
    <xsl:if test="@type='entry'">

	<xsl:document href="{concat('map\m',$boing, '.htm')}">
		<HTML><HEAD><link type="text/css" rel="stylesheet" href="element.css" /></HEAD>
		<BODY leftmargin="1" topmargin="1">
		<TABLE width="100%">
		<tr bgcolor="#EFCBCB" class="JF"><td height="18"><b><xsl:value-of select="title"/></b></td></tr>
		<tr><td class="JF"><div align="center"><img src="{@code}.gif" width="300" height="190"/></div></td></tr> 
		</TABLE>
			
		<table width="100%">
		<xsl:for-each select="sections">
			
			<xsl:for-each select="section">
	
				<tr><td class="JF"><img src="bluecube.gif"/><B><a class="elink" href="{@an}.htm"><xsl:value-of select="@title" /></a></B></td></tr>
				
					<xsl:for-each select="ptxt">
						<tr><td class="JF"><xsl:apply-templates/></td></tr>
					</xsl:for-each>				
				
			</xsl:for-each>
		</xsl:for-each>
		</table>	
		
		</BODY></HTML>
	</xsl:document>
	
	</xsl:if>	
</xsl:template>


<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="i"><i><xsl:value-of select="."/></i></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="g{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="b{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="slink"><a class="slink" href="m{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>