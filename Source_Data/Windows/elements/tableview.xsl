<?xml version="1.0"?>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- November 10th 2006 PAF -->

<xsl:template match="elementlist">
	<HTML><HEAD><TITLE>Elements of the Periodic Table (Paul Alan Freshney 2006)</TITLE></HEAD>
	<style type="text/css">
	<![CDATA[<!--
	A:link {color:#000000; text-decoration: none}
	A:visited {color:#000000; text-decoration: none}
	A:hover {color:#FF0000; text-decoration: underline}
	A:active {color:#FF000; text-decoration: none}
	.JF {font-family: Verdana; font-size:10pt; color:#000000;}
	.JX {font-family: Verdana; font-size:10pt; color:#000000; font-weight: bold;}
	--> ]]>
	</style>
	<BODY leftmargin="10" topmargin="0"><TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
	
	<tr bgcolor="#CEDFFF">
	<td class="JX">Name</td>
	<td class="JX" width="60" align="center">Symbol</td>
	<td class="JX" width="60" align="center">A#</td>
	<td class="JX">A<SUB>w</SUB></td>
	<td class="JX" width="60" align="center">N#</td>
	<td class="JX">T<SUB>m</SUB></td>
	<td class="JX" width="60">T<SUB>b</SUB></td>
	<td class="JX">Density</td>
	<td class="JX">Classification</td>
	</tr>
	
	<xsl:apply-templates select="element"/>
	
	</TABLE></BODY></HTML>
</xsl:template>

<xsl:template match="element">	
<tr>
	<xsl:if test="position() mod 2 = 1">
		<xsl:attribute name="bgcolor">#E8FFF4</xsl:attribute>
	</xsl:if>

	<td class="JF"><xsl:value-of select="name"/></td>
	<td class="JF" align="center"><xsl:value-of select="symbol"/></td>
	<td class="JF" align="center"><xsl:value-of select="atomicno"/></td>
	<td class="JF"><xsl:value-of select="atomicweight"/></td>
	<td class="JF" align="center"><xsl:value-of select="neutrons"/></td>
	
	<xsl:choose>
		<xsl:when test="melting!='unknown'">
			<td class="JF"><xsl:value-of select="melting"/></td>
		</xsl:when>
		<xsl:otherwise>
			<td class="JF">?</td>
		</xsl:otherwise>
	</xsl:choose>
	
	<xsl:choose>
		<xsl:when test="boiling!='unknown'">
			<td class="JF"><xsl:value-of select="boiling"/></td>
		</xsl:when>
		<xsl:otherwise>
			<td class="JF">?</td>
		</xsl:otherwise>
	</xsl:choose>	
	
	<xsl:if test="density!=''">
		<xsl:choose>
			<xsl:when test="density!='unknown'">
				<td class="JF"><xsl:value-of select="density"/> g/cm<SUP>3</SUP></td>
			</xsl:when>
		<xsl:otherwise>
			<td class="JF">?</td>
		</xsl:otherwise>
	</xsl:choose>	
		
	</xsl:if>
	<xsl:if test="densityg!=''">
		<td class="JF"><xsl:value-of select="densityg"/> g/l</td>
	</xsl:if>

	<xsl:if test="density=''">
		<td class="JF">unknown</td>
	</xsl:if>
	
	<td class="JF"><xsl:value-of select="classification"/></td>
</tr>
</xsl:template>

</xsl:stylesheet>