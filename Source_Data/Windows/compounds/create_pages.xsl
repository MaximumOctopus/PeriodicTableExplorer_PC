<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- September 3rd 2006 -->

<xsl:template match="element">	
    <xsl:param name="boing" select="an"/>
	<xsl:document href="{concat('pages\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Element: <xsl:value-of select="name"/></TITLE>
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
    	  <td height="18" class="PF"><div align="center"><B>Compounds</B> | <A HREF="..\reactions\{an}.htm">Reactions</A> | <A HREF="..\production\{an}.htm">Production</A> | <A HREF="..\video\s{an}.htm">Video</A></div></td>
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
      		<td height="18" valign="middle" class="JF"><b><xsl:value-of select="name"/> Compounds</b></td>
		</tr>
		<xsl:if test="header!=''">
			<xsl:for-each select="header/ptxt">
				<TR class="JF"><TD><xsl:apply-templates select="." /></TD></TR>		
			</xsl:for-each>			
		</xsl:if>
		<xsl:for-each select="compounds/compound">
			<TR class="JF"><TD>&nbsp;&nbsp;&nbsp;<A HREF="#{position()}"><xsl:value-of select="name" /></A></TD></TR>		
		</xsl:for-each>
		</TABLE>		
		
		<xsl:apply-templates select="compounds/compound"/>	
		
		</BODY></HTML>
		
		</xsl:document>
</xsl:template>

<xsl:template match="compound">
	<TABLE width="100%">
		<TR><TD class="JF"><A name="{position()}" /><img src="..\bluecube.gif"/><B><xsl:value-of select="name" />&nbsp;</B><xsl:apply-templates select="formula" /></TD></TR>
		
		<xsl:if test="classes!=''">
			<TR><TD class="JX">:
			<xsl:for-each select="classes/class">
				<xsl:choose>
					<xsl:when test=".='C'">Carcinogenic : </xsl:when>
					<xsl:when test=".='A'">Corrosive : </xsl:when>
					<xsl:when test=".='HA'">Highly Corrosive : </xsl:when>
					<xsl:when test=".='E'">Explosive : </xsl:when>
					<xsl:when test=".='HT'">Highly Toxic : </xsl:when>
					<xsl:when test=".='MI'">Mild Irritant : </xsl:when>
					<xsl:when test=".='MT'">Mildly Toxic : </xsl:when>
					<xsl:when test=".='I'">Irritant : </xsl:when>
					<xsl:when test=".='O'">Oxidizer : </xsl:when>
					<xsl:when test=".='T'">Toxic : </xsl:when>
				</xsl:choose>
			</xsl:for-each>
			</TD></TR>
		</xsl:if>
				
		<xsl:for-each select="notes/ptxt">
		<TR class="JF"><TD><xsl:apply-templates select="." /></TD></TR>
		<TR><TD></TD></TR>
		</xsl:for-each>
	</TABLE>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="img"><IMG SRC="..\{@ref}.gif"/></xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="elink"><a class="elink" href="..\elements\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="..\glossary\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>