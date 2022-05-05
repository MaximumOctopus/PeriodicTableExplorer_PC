<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- March 30th 2006 -->

<xsl:template match="isotopelist">	
	<HTML><HEAD>
	<TITLE>Isotope Listing</TITLE>
	<style type="text/css">
	<xsl:comment>
	A.blink:link {color:#006666; text-decoration: none}
	A.blink:visited {color:#006666; text-decoration: none}
	A.blink:hover {color:#FF0000; text-decoration: underline}
	A.blink:active {color:#006666; text-decoration: none}
	A.elink:link {color:#006600; text-decoration: none}
	A.elink:visited {color:#006600; text-decoration: none}
	A.elink:hover {color:#FF0000; text-decoration: underline}
	A.elink:active {color:#006600; text-decoration: none}
	A.glink:link {color:#000066; text-decoration: none}
	A.glink:visited {color:#000066; text-decoration: none}
	A.glink:hover {color:#FF0000; text-decoration: underline}
	A.glink:active {color:#000066; text-decoration: none}
	A:link {color:#000000; text-decoration: none}
	A:visited {color:#000000; text-decoration: none}
	A:hover {color:#FF0000; text-decoration: underline}
	A:active {color:#FF000; text-decoration: none}
	.H1 {font-family: Verdana; font-size:10pt; color:#888888; font-weight:bold;}
	.JF {font-family: Verdana; font-size:10pt; color:#000000;}
	.JZ {font-family: Verdana; font-size:8pt; color:#888888;}
	.JX {font-family: Verdana; font-size:8pt; color:#666666;}
	</xsl:comment>
	</style>
	</HEAD>
	<BODY leftmargin="3" topmargin="2">

	<xsl:apply-templates select="element"/>

	</BODY></HTML>
</xsl:template>

<xsl:template match="element">
	<xsl:apply-templates select="isotopes/notable"/>	
</xsl:template>

<xsl:template match="isotopes/notable">
	<table width="100%">
	<tr bgcolor="#F2F200">
		<td class="H1">Notable Isotopes of <xsl:value-of select="../../name"/></td>
	</tr>
	<xsl:for-each select="isotope">		
	   	<tr><td></td></tr>
	   	<tr>
	    <td class="JF"><xsl:apply-templates select="sym" /><SPAN class="JZ"> [<xsl:apply-templates select="n" /> neutrons]</SPAN></td>
	    </tr>
	    <tr><td class="JF">&nbsp;&nbsp;Abundance:&nbsp;<xsl:value-of select="na" /></td></tr>
	   	<xsl:if test="stable!=''">
			<tr><td class="JF">&nbsp;&nbsp;<xsl:value-of select="stable" /></td></tr>
		</xsl:if>
		<xsl:if test="hl!=''">
			<tr><td class="JF">Half life:&nbsp;<xsl:apply-templates select="hl" />
			<xsl:if test="dm='eb+'"> [  e<SUP>-</SUP> and b<SUP>+</SUP> ]</xsl:if>
			<xsl:if test="dm='b-'"> [ beta<SUP>-</SUP> ]</xsl:if>
			<xsl:if test="dm='b+'"> [ beta<SUP>+</SUP> ]</xsl:if>
			<xsl:if test="dm='bb'"> [ Double beta decay ]</xsl:if>			
			<xsl:if test="dm='g'"> [ Gamma Radiation ]</xsl:if>			
			<xsl:if test="dm='e'"> [ Electron Capture ]</xsl:if>
			<xsl:if test="dm='ee'"> [ Double Electron Capture ]</xsl:if>			
			<xsl:if test="dm='sf'"> [ Spontaneous Fission ]</xsl:if>
			<xsl:if test="dm='a'"> [ Alpha Decay ]</xsl:if>							
			<xsl:if test="dm='it'"> [ Isometric Transition ]</xsl:if>
			<xsl:if test="dm='SF and A'"> [ SF and a ]</xsl:if>			
			</td></tr>
					
			<tr><td class="JF">&nbsp;&nbsp;Decay Energy:&nbsp;<xsl:apply-templates select="de" /> MeV</td></tr>
			<tr><td class="JF">&nbsp;&nbsp;Decays to <xsl:apply-templates select="dp" />.</td></tr>
	
			<xsl:if test="dm2!=''">
				<tr><td class="JF">Half life:&nbsp;<xsl:apply-templates select="hl" />
				<xsl:if test="dm2='b-'"> [ beta<SUP>-</SUP> ]</xsl:if>
				<xsl:if test="dm2='b+'"> [ beta<SUP>+</SUP> ]</xsl:if>
				<xsl:if test="dm2='bb'"> [ Double beta decay ]</xsl:if>			
				<xsl:if test="dm2='g'"> [ Gamma Radiation ]</xsl:if>			
				<xsl:if test="dm2='e'">	[ Electron Capture ]</xsl:if>
				<xsl:if test="dm2='ee'"> [ Double Electron Capture ]</xsl:if>			
				<xsl:if test="dm2='sf'"> [ Spontaneous Fission ]</xsl:if>
				<xsl:if test="dm2='a'"> [ Alpha Decay ]</xsl:if>							
				<xsl:if test="dm2='it'"> [ Isometric Transition ]</xsl:if>
				</td></tr>
								
				<tr><td class="JF">Decay Energy:&nbsp; MeV</td></tr>
				<tr><td class="JF">Decays to <xsl:apply-templates select="dp2" />.</td></tr>
			</xsl:if>
			
			<xsl:if test="dm3!=''">
				<tr><td class="JF">Half life:&nbsp;<xsl:apply-templates select="hl" />
				<xsl:if test="dm3='b-'"> [ beta<SUP>-</SUP> ]</xsl:if>
				<xsl:if test="dm3='b+'"> [ beta<SUP>+</SUP> ]</xsl:if>
				<xsl:if test="dm3='bb'"> [ Double beta decay ]</xsl:if>			
				<xsl:if test="dm3='g'"> [ Gamma Radiation ]</xsl:if>			
				<xsl:if test="dm3='e'"> [ Electron Capture ]</xsl:if>
				<xsl:if test="dm3='ee'"> [ Double Electron Capture ]</xsl:if>			
				<xsl:if test="dm3='sf'"> [ Spontaneous Fission ]</xsl:if>
				<xsl:if test="dm3='a'"> [ Alpha Decay ]</xsl:if>							
				<xsl:if test="dm3='it'"> [ Isometric Transition ]</xsl:if>
				</td></tr>
								
				<tr><td class="JF">Decay Energy:&nbsp;<xsl:apply-templates select="de3" /> MeV</td></tr>
				<tr><td class="JF">Decays to <xsl:apply-templates select="dp3" />.</td></tr>
			</xsl:if>
			
			<xsl:if test="dm4!=''">
				<tr><td class="JF">Half life:&nbsp;<xsl:apply-templates select="hl" />
				<xsl:if test="dm4='b-'"> [ beta<SUP>-</SUP> ]</xsl:if>
				<xsl:if test="dm4='b+'"> [ beta<SUP>+</SUP> ]</xsl:if>
				<xsl:if test="dm4='bb'"> [ Double beta decay ]</xsl:if>			
				<xsl:if test="dm4='g'"> [ Gamma Radiation ]</xsl:if>			
				<xsl:if test="dm4='e'"> [ Electron Capture ]</xsl:if>
				<xsl:if test="dm4='ee'"> [ Double Electron Capture ]</xsl:if>			
				<xsl:if test="dm4='sf'"> [ Spontaneous Fission ]</xsl:if>
				<xsl:if test="dm4='a'"> [ Alpha Decay ]</xsl:if>							
				<xsl:if test="dm4='it'"> [ Isometric Transition ]</xsl:if>
				</td></tr>
								
				<tr><td class="JF">Decay Energy&nbsp;<xsl:apply-templates select="de4" /> MeV</td></tr>
				<tr><td class="JF">Decays to <xsl:apply-templates select="dp4" />.</td></tr>
			</xsl:if>
		</xsl:if>	
		
		<xsl:if test="notes/ptxt!=''">
			<xsl:apply-templates select="notes" />
		</xsl:if>
	</xsl:for-each>
	<TR><TD></TD></TR>
	</table>
</xsl:template>

<xsl:template match="notes">
	<tr><td>
	<table width="80%" class="JX">
	<xsl:for-each select="ptxt">
		<tr><td><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
	</table></td></tr>
</xsl:template>

<xsl:template match="info">
	<table width="100%" class="JF">
	<tr>
		<td class="H1">Notes</td>
	</tr>
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

<xsl:template match="elink"><a class="elink" href="..\elements\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="..\glossary\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="..\biography\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="ilink"><a class="blink" href="isotope\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>