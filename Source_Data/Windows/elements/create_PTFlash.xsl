<?xml version="1.0"?>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">

<xsl:output method="html"/>
<!-- August 17th 2007 -->

<xsl:template match="/">	
	<xsl:apply-templates/>	
</xsl:template>

<xsl:template match="element">	
    <xsl:param name="boing" select="atomicno"/>
	<xsl:document href="{concat('ptflash\',$boing, '.htm')}">
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head><title></title>
	<style type="text/css">
	<xsl:comment>
	body {margin-left: 0px; margin-top: 0px;}
	.style1 {font-size: large; font-family: Verdana, Arial, Helvetica, sans-serif;}
	.style2 {font-family: Geneva, Arial, Helvetica, sans-serif;	font-size: x-small;}
	</xsl:comment>
	</style></head>
	<body>
	<table width="630" border="0" cellpadding="0" cellspacing="0">
  	<tr>
	    <td width="141" rowspan="11" valign="top" bgcolor="#000000"><div align="center"><img src="../images/150x150/{@index}.jpg" width="135" height="135" /></div></td>
	    <td>
	    <xsl:choose>
	    	<xsl:when test="@type='0'"><xsl:attribute name="bgcolor">#38e741</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='1'"><xsl:attribute name="bgcolor">#96dbe7</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='2'"><xsl:attribute name="bgcolor">#9c97ff</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='3'"><xsl:attribute name="bgcolor">#2dc443</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='4'"><xsl:attribute name="bgcolor">#c4afda</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='5'"><xsl:attribute name="bgcolor">#e19da4</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='6'"><xsl:attribute name="bgcolor">#e2aa5f</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='7'"><xsl:attribute name="bgcolor">#efe77e</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='8'"><xsl:attribute name="bgcolor">#c5c1ff</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='9'"><xsl:attribute name="bgcolor">#c1c1c1</xsl:attribute></xsl:when>
	    	<xsl:when test="@type='10'"><xsl:attribute name="bgcolor">#d4d4d4</xsl:attribute></xsl:when>
	    </xsl:choose>
	    <div align="center" class="style1"><xsl:value-of select="name"/> - <xsl:value-of select="symbol"/></div></td>
  	</tr>
  	<tr>
	    <td><img src="spacer_pixel.gif" width="10" height="5" /></td>
  	</tr>
  	<tr>
	    <td class="style2"><div align="center">Neutrons: <xsl:value-of select="neutrons"/> <img src="oc.gif" width="12" height="8" /> Protons: 1  <img src="oc.gif" width="12" height="8" /> Electrons: 1 <img src="oc.gif" width="12" height="8" /> Atomic Mass: <xsl:value-of select="atomicweight"/></div></td>
  	</tr>
  	<tr>
	    <td><img src="spacer_pixel.gif" width="10" height="10" /></td>
  	</tr>
  	<tr>
	    <td class="style2"><div align="center">Colour: <xsl:value-of select="colour"/> <img src="oc.gif" width="12" height="8" /> State: <xsl:value-of select="state"/></div></td>
  	</tr>
  	<tr>
	    <td><img src="spacer_pixel.gif" width="10" height="10" /></td>
  	</tr>
  	<tr>
    	<td class="style2"><div align="center">Boiling Point: <xsl:value-of select="boiling"/>K (<xsl:value-of select="boilingC"/>) <img src="oc.gif" width="12" height="8" /> Melting Point: <xsl:value-of select="melting"/>K (<xsl:value-of select="meltingC"/>)</div></td>
  	</tr>
  	<tr>
	    <td><img src="spacer_pixel.gif" width="10" height="10" /></td>
  	</tr>
  	<tr>
    	<td></td>
  	</tr>
  	<tr>
    	<td></td>
  	</tr>
  	<tr>
    	<td width="489"></td>
  	</tr>
	</table>
	</body></html>	
	
	</xsl:document>
</xsl:template>

</xsl:stylesheet>