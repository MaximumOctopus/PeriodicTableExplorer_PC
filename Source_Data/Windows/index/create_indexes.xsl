<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 1st 2004 PAF -->

<xsl:template match="letter">	
    <xsl:param name="boing" select="@ref"/>
	<xsl:document href="{concat('pages\',$boing, '.htm')}">
		<HTML><HEAD><link type="text/css" rel="stylesheet" href="index.css" /></HEAD>
		<BODY leftmargin="5" topmargin="0">		
		<TABLE width="100%"><TR><TD class="JF" align="center"><a href="a.htm">A</a><a href="B.htm">B</a><a href="C.htm">C</a><a href="D.htm">D</a><a href="E.htm">E</a><a href="F.htm">F</a><a href="G.htm">G</a><a href="H.htm">H</a><a href="I.htm">I</a><a href="J.htm">J</a><a href="K.htm">K</a><a href="L.htm">L</a><a href="M.htm">M</a><a href="N.htm">N</a><a href="O.htm">O</a><a href="P.htm">P</a><a href="Q.htm">Q</a><a href="R.htm">R</a><a href="S.htm">S</a><a href="T.htm">T</a><a href="U.htm">U</a><a href="V.htm">V</a><a href="W.htm">W</a><a href="X.htm">X</a><a href="Y.htm">Y</a><a href="Z.htm">Z</a></TD></TR></TABLE>
		
		<xsl:for-each select="word">
			<TABLE border="0" cellpadding="0" cellspacing="0">
			<TR><TD class="H1"><xsl:value-of select="@ref" />&nbsp;<SPAN class="cx">(<xsl:value-of select="count(reference)" />)</SPAN></TD></TR>
			<xsl:for-each select="reference"><xsl:sort select="description"/><TR><TD>&nbsp;<A HREF="..\{link}"><xsl:apply-templates select="description" /></A></TD></TR></xsl:for-each>			
			<TR><TD>&nbsp;</TD></TR>
			</TABLE>
		</xsl:for-each>
		
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>
<xsl:template match="b"><b><xsl:value-of select="."/></b></xsl:template>
<xsl:template match="bi"><b><I><xsl:value-of select="."/></I></b></xsl:template>

</xsl:stylesheet>