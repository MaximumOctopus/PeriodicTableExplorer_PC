<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- March 30th 2006 -->

<xsl:template match="element">	
    <xsl:param name="boing" select="an"/>
	<xsl:document href="{concat('pages\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Isolation: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="paf.css" />
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">		
		<tr bgcolor="#F0F0F0">
			<td height="18" class="PF"><div align="center">
				<A HREF="..\elements\{an}.htm">Properties</A> |
				<A HREF="..\other\{an}.htm">More Info</A> |
    	  		<A HREF="..\isotope\{an}.htm">Isotopes</A> |
    	  		<xsl:if test="name/@allotrope!='n'">
    	 			<A HREF="..\allotrope\{an}.htm">Allotropes</A> |
	    		</xsl:if>
	      		<A HREF="..\spectra\{an}.htm">Spectra</A>
	      	  </div>
	      	</td>
	    </tr>      		
		<tr bgcolor="#F0EDED">
    	  <td height="18" class="PF"><div align="center"><A HREF="..\compound\{an}.htm">Compounds</A> | <A HREF="..\reactions\{an}.htm">Reactions</A> | <B>Production</B> | <A HREF="..\video\s{an}.htm">Video</A></div></td>
	    </tr>
		<tr bgcolor="#F0EAEA">
    	  <td height="18" class="JX"><div align="center">Atomic: <A HREF="..\atomic\mac{an}.htm">M.A.C.</A> | <A HREF="..\atomic\{an}.htm">Reference</A></div></td>
	    </tr>
    	<tr bgcolor="#F0E7E7">
      		<td height="18" class="JX"><div align="center">Diagrams: <a href="electron:{an}">Shell</a> | <a href="atomicradius:{an}">Atomic Radius</a> | <a href="energy:{an}">Electron</a> || <a href="image:{an}">Images</a></div></td>
    	</tr>
    	</TABLE>

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
      		<td width="95%" height="18" valign="middle" class="JF"><b>Occurrence and Production of <xsl:value-of select="name"/></b></td>
		</tr>
		<tr><td></td></tr>
		</TABLE>

		<xsl:apply-templates select="notes" />

		<xsl:apply-templates select="isolation" />

		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="isolation">
	<xsl:for-each select="method">
	<table width="100%">
	<tr>
		<td class="H1"><img src="../bluecube.gif"/><xsl:value-of select="@title" /></td>
	</tr>	
	<xsl:for-each select="ptxt">
		<tr class="JF"><td><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
	<tr><td></td></tr>
	</table>
	</xsl:for-each>
</xsl:template>

<xsl:template match="notes">
	<table width="80%" class="JX">
	<xsl:for-each select="ptxt">
		<tr><td><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
	</table>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="img"><IMG SRC="{@type}.gif"/></xsl:template>

<xsl:template match="elink"><a class="elink" href="..\elements\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="..\glossary\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="..\biography\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="ilink"><a class="blink" href="isotope\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="slink"><a class="slink" href="..\country\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>