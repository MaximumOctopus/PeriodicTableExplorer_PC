<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 1st 2004 PAF -->

<xsl:template match="letter">	
    <xsl:param name="boing" select="@ref"/>
	<xsl:document href="{concat('pages\idx_',$boing, '.htm')}">
		<html><head><link type="text/css" rel="stylesheet" href="index.css" /></head>
		<body leftmargin="5" topmargin="0">		
		<table width="100%" class="JF">
		<tr align="center"><td>
		<a href="idx_a.htm">A</a>&nbsp;<a href="idx_b.htm">B</a>&nbsp;<a href="idx_c.htm">C</a>&nbsp;<a href="idx_d.htm">D</a>&nbsp;<a href="idx_e.htm">E</a>&nbsp;<a href="idx_f.htm">F</a>&nbsp;<a href="idx_g.htm">G</a>&nbsp;<a href="idx_h.htm">H</a>&nbsp;<a href="idx_i.htm">I</a>&nbsp;<a href="idx_j.htm">J</a>&nbsp;<a href="idx_k.htm">K</a>&nbsp;<a href="idx_l.htm">L</a>
		</td></tr>
		<tr align="center"><td>
		<a href="idx_m.htm">M</a>&nbsp;<a href="idx_n.htm">N</a>&nbsp;<a href="idx_o.htm">O</a>&nbsp;<a href="idx_p.htm">P</a>&nbsp;<a href="idx_q.htm">Q</a>&nbsp;<a href="idx_r.htm">R</a>&nbsp;<a href="idx_s.htm">S</a>&nbsp;<a href="idx_t.htm">T</a>&nbsp;<a href="idx_u.htm">U</a>&nbsp;<a href="idx_v.htm">V</a>&nbsp;<a href="idx_w.htm">W</a>&nbsp;<a href="idx_x.htm">X</a>&nbsp;<a href="idx_y.htm">Y</a>&nbsp;<a href="idx_z.htm">Z</a>
		</td></tr>
		</table>
		<hr/>		
		
		<xsl:for-each select="word">
			<xsl:if test="count(reference) != 0">
			<table border="0" cellpadding="0" cellspacing="0"><tr><td class="H1"><xsl:value-of select="@ref" /> &nbsp;<span class="cx">(<xsl:value-of select="count(reference)" />)</span></td></tr><xsl:for-each select="reference"><xsl:sort select="description"/><tr><td>&nbsp;<A class="{link/@ref}" href="{link}"><xsl:apply-templates select="description" /></A></td></tr></xsl:for-each>			
			<tr><td>&nbsp;</td></tr>
			</table>
			</xsl:if>
		</xsl:for-each>
		
		</body></html>
	</xsl:document>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>
<xsl:template match="b"><b><xsl:value-of select="."/></b></xsl:template>
<xsl:template match="bi"><b><I><xsl:value-of select="."/></I></b></xsl:template>

</xsl:stylesheet>