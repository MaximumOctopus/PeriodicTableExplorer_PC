<?xml version="1.0"?>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 14th 2006 -->

<xsl:template match="element">	
    <xsl:param name="boing" select="atomicno"/>
	<xsl:document href="{concat('spectra\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Spectra: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="paf.css" />
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		<tr bgcolor="#F0F0F0">
			<td height="18" class="PF"><div align="center">
			<A HREF="..\elements\{atomicno}.htm">Properties</A> |
			<A HREF="..\other\{atomicno}.htm">More Info</A> |
    	  	<A HREF="..\isotope\{atomicno}.htm">Isotopes</A> |
    	  	<xsl:if test="name/@allotrope!='n'">
    	 		<A HREF="..\allotrope\{atomicno}.htm">Allotropes</A> |
	    	</xsl:if>
	      	<B>Spectra</B>
	      	</div></td>
	    </tr>
		<tr bgcolor="#F0EDED">
    	  <td height="18" class="JX"><div align="center"><A HREF="..\compound\{atomicno}.htm">Compounds</A> | <A HREF="..\reactions\{atomicno}.htm">Reactions</A> | <A HREF="..\production\{atomicno}.htm">Production</A> | <A HREF="..\video\s{atomicno}.htm">Video</A></div></td>
	    </tr>
		<tr bgcolor="#F0EAEA">
    	  <td height="18" class="JX"><div align="center">Atomic: <A HREF="..\atomic\mac{atomicno}.htm">M.A.C.</A> | <A HREF="..\atomic\{atomicno}.htm">Reference</A></div></td>
	    </tr>
    	<tr bgcolor="#F0E7E7">
      		<td height="18" class="JX"><div align="center">Diagrams: <a href="electron:{atomicno}">Shell</a> | <a href="atomicradius:{atomicno}">Atomic Radius</a> | <a href="energy:{atomicno}">Electron</a> || <a href="image:{atomicno}">Images</a></div></td>
    	</tr>	    
    	</TABLE>
    	
    	<xsl:if test="data/spectra_air/header/ptxt!=''">
			<xsl:apply-templates select="data/spectra_air/header"/>	
		</xsl:if>
    	
    	<xsl:if test="data/spectra_vac!=''">
		<TABLE width="100%">
		<TR class="JF" bgcolor="#DDDDDD">
			<TD colspan="3"><b>Vacuum Wavelengths</b></TD>
		</TR>
		<TR class="JF" bgcolor="#d5edff">
			<TD align="right" width="15%">Intensity</TD>
			<TD align="center" width="50%">Wavelength</TD>
			<TD align="center" width="35%">Spectrum</TD>
		</TR>
		<xsl:for-each select="data/spectra_vac/line">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1">
					<TR bgcolor="#F3F8F4" class="JF">
						<TD align="right" width="15%"><xsl:value-of select="@intensity" /></TD>
						<TD align="center" width="50%"><xsl:value-of select="wavelength" /></TD>
						<TD align="center" width="35%"><xsl:value-of select="spectrum" /></TD>
					</TR>
				</xsl:when>		
				<xsl:otherwise>
					<TR class="JF">
						<TD align="right" width="15%"><xsl:value-of select="@intensity" /></TD>
						<TD align="center" width="50%"><xsl:value-of select="wavelength" /></TD>
						<TD align="center" width="35%"><xsl:value-of select="spectrum" /></TD>
					</TR>
				</xsl:otherwise>	
			</xsl:choose>
		</xsl:for-each>
		</TABLE>
		</xsl:if>
		
		<xsl:if test="data/spectra_air/line!=''">
		<TABLE width="100%">
		<TR class="JF" bgcolor="#DDDDDD">
			<TD colspan="3"><b>Air Wavelengths</b></TD>
		</TR>
		<TR class="JF" bgcolor="#d5edff">
			<TD align="right" width="15%">Intensity</TD>
			<TD align="center" width="50%">Wavelength</TD>
			<TD align="center" width="35%">Spectrum</TD>
		</TR>
		<xsl:for-each select="data/spectra_air/line">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1">
					<TR bgcolor="#F3F8F4" class="JF">
						<TD align="right" width="15%"><xsl:value-of select="@intensity" /></TD>
						<TD align="center" width="50%"><xsl:value-of select="wavelength" /></TD>
						<TD align="center" width="35%"><xsl:value-of select="spectrum" /></TD>
					</TR>
				</xsl:when>		
				<xsl:otherwise>
					<TR class="JF">
						<TD align="right" width="15%"><xsl:value-of select="@intensity" /></TD>
						<TD align="center" width="50%"><xsl:value-of select="wavelength" /></TD>
						<TD align="center" width="35%"><xsl:value-of select="spectrum" /></TD>
					</TR>
				</xsl:otherwise>	
			</xsl:choose>
		</xsl:for-each>
		</TABLE>
		</xsl:if>

		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="data/spectra_air/header">
	<table width="100%" class="JF">
	<tr>
		<td class="H1"><img src="../greencube.gif"/>Notes</td>
	</tr>
	<xsl:for-each select="ptxt">
		<tr><td><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
	</table>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

</xsl:stylesheet>