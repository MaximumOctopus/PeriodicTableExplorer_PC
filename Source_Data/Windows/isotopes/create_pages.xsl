<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 19th 2007 -->

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
    	  		<B>Isotopes</B> |
    	  		<xsl:if test="name/@allotrope!='n'">
    	 			<A HREF="..\allotrope\{an}.htm">Allotropes</A> |
	    		</xsl:if>
	      		<A HREF="..\spectra\{an}.htm">Spectra</A>
	      	  </div>
	      	</td>
	    </tr>      		
		<tr bgcolor="#F0EDED">
    	  <td height="18" class="PF"><div align="center"><A HREF="..\compound\{an}.htm">Compounds</A> | <A HREF="..\reactions\{an}.htm">Reactions</A> | <A HREF="..\production\{an}.htm">Production</A> | <A HREF="..\video\s{an}.htm">Video</A></div></td>
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
      		<td width="95%" height="18" valign="middle" class="JF"><b>Isotopes of <xsl:value-of select="name"/></b></td>
		</tr>
		<tr><td></td></tr>
		</TABLE>

		<xsl:if test="info/ptxt!=''">
			<xsl:apply-templates select="info"/>	
		</xsl:if>

		<xsl:apply-templates select="isotopes/notable"/>

		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="isotopes/notable">
	<table width="100%">
	<tr>
		<td class="H1"><img src="../bluecube.gif"/>Notable Isotopes <A HREF="isoabund:{../../an}"><IMG SRC="..\graph.gif" ALT="show graph" border="0"/></A></td>
	</tr>
	<xsl:for-each select="isotope">		
	   	<tr><td></td></tr>
	   	<tr>
	    <td class="JF"><img src="..\redcube.gif"/><xsl:apply-templates select="sym" /><SPAN class="JZ"> [<xsl:apply-templates select="n" /> neutrons]</SPAN></td>
	    </tr>
	    <tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="..\glossary\xa.htm">Abundance:</a>&nbsp;<xsl:value-of select="na" /></td></tr>
	   	<xsl:if test="stable!=''">
			<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><xsl:value-of select="stable" /></td></tr>
		</xsl:if>
		<xsl:if test="hl!=''">
			<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="../glossary/hl.htm" class="glink">Half life:</a>&nbsp;<xsl:apply-templates select="hl" />
			<xsl:if test="dm='eb+'"> [  <a class="glink" href="../glossary/decay_e.htm">e<SUP>-</SUP></a> and <a class="glink" href="../glossary/decay_b+.htm">b<SUP>+</SUP></a>]</xsl:if>
			<xsl:if test="dm='b-'"> [ <a class="glink" href="../glossary/decay_b-.htm">beta<SUP>-</SUP></a> ]</xsl:if>
			<xsl:if test="dm='b+'"> [ <a class="glink" href="../glossary/decay_b+.htm">beta<SUP>+</SUP></a> ]</xsl:if>
			<xsl:if test="dm='bb'"> [ <a class="glink" href="../glossary/decay_bb.htm">Double beta decay</a> ]</xsl:if>			
			<xsl:if test="dm='g'"> [ <a class="glink" href="../glossary/gr.htm">Gamma Radiation</a> ]</xsl:if>			
			<xsl:if test="dm='e'"> [ <a class="glink" href="../glossary/decay_e.htm">Electron Capture</a> ]</xsl:if>
			<xsl:if test="dm='ee'"> [ <a class="glink" href="../glossary/decay_ee.htm">Double Electron Capture</a> ]</xsl:if>			
			<xsl:if test="dm='sf'"> [ <a class="glink" href="../glossary/decay_sf.htm">Spontaneous Fission</a> ]</xsl:if>
			<xsl:if test="dm='a'"> [ <a class="glink" href="../glossary/decay_a.htm">Alpha Decay</a> ]</xsl:if>							
			<xsl:if test="dm='it'"> [ <a class="glink" href="../glossary/decay_it.htm">Isometric Transition</a> ]</xsl:if>
			<xsl:if test="dm='SF and A'"> [ <a class="glink" href="../glossary/decay_sf.htm">SF</a> and <a class="glink" href="../glossary/decay_a.htm">a</a> ]</xsl:if>			
			</td></tr>
			
			<xsl:if test="de!=''">
				<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="..\glossary\de.htm" class="glink">Decay Energy:</a>&nbsp;<xsl:apply-templates select="de" />&nbsp;<a href="..\glossary\ev.htm" class="glink">MeV</a></td></tr>
			</xsl:if>
			<xsl:if test="dp!=''">
				<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/>Decays to <xsl:apply-templates select="dp" />.</td></tr>
			</xsl:if>
	
			<xsl:if test="dm2!=''">
				<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="../glossary/hl.htm" class="glink">Half life:</a>&nbsp;<xsl:apply-templates select="hl" />
				<xsl:if test="dm2='b-'"> [ <a class="glink" href="../glossary/decay_b-.htm">beta<SUP>-</SUP></a> ]</xsl:if>
				<xsl:if test="dm2='b+'"> [ <a class="glink" href="../glossary/decay_b+.htm">beta<SUP>+</SUP></a> ]</xsl:if>
				<xsl:if test="dm2='bb'"> [ <a class="glink" href="../glossary/decay_bb.htm">Double beta decay</a> ]</xsl:if>			
				<xsl:if test="dm2='g'"> [ <a class="glink" href="../glossary/gr.htm">Gamma Radiation</a> ]</xsl:if>			
				<xsl:if test="dm2='e'">	[ <a class="glink" href="../glossary/decay_e.htm">Electron Capture</a> ]</xsl:if>
				<xsl:if test="dm2='ee'"> [ <a class="glink" href="../glossary/decay_ee.htm">Double Electron Capture</a> ]</xsl:if>			
				<xsl:if test="dm2='sf'"> [ <a class="glink" href="../glossary/decay_sf.htm">Spontaneous Fission</a> ]</xsl:if>
				<xsl:if test="dm2='a'"> [ <a class="glink" href="../glossary/decay_a.htm">Alpha Decay</a> ]</xsl:if>							
				<xsl:if test="dm2='it'"> [ <a class="glink" href="../glossary/decay_it.htm">Isometric Transition</a> ]</xsl:if>
				</td></tr>
								
				<xsl:if test="de2!=''">
					<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="..\glossary\de.htm" class="glink">Decay Energy:</a>&nbsp;<xsl:apply-templates select="de2" />&nbsp;<a href="..\glossary\ev.htm" class="glink">MeV</a></td></tr>
				</xsl:if>
				<xsl:if test="dp2!=''">
					<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/>Decays to <xsl:apply-templates select="dp2" />.</td></tr>
				</xsl:if>
			</xsl:if>
			
			<xsl:if test="dm3!=''">
				<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="../glossary/hl.htm" class="glink">Half life:</a>&nbsp;<xsl:apply-templates select="hl" />
				<xsl:if test="dm3='b-'"> [ <a class="glink" href="../glossary/decay_b-.htm">beta<SUP>-</SUP></a> ]</xsl:if>
				<xsl:if test="dm3='b+'"> [ <a class="glink" href="../glossary/decay_b+.htm">beta<SUP>+</SUP></a> ]</xsl:if>
				<xsl:if test="dm3='bb'"> [ <a class="glink" href="../glossary/decay_bb.htm">Double beta decay</a> ]</xsl:if>			
				<xsl:if test="dm3='g'"> [ <a class="glink" href="../glossary/gr.htm">Gamma Radiation</a> ]</xsl:if>			
				<xsl:if test="dm3='e'"> [ <a class="glink" href="../glossary/decay_e.htm">Electron Capture</a> ]</xsl:if>
				<xsl:if test="dm3='ee'"> [ <a class="glink" href="../glossary/decay_ee.htm">Double Electron Capture</a> ]</xsl:if>			
				<xsl:if test="dm3='sf'"> [ <a class="glink" href="../glossary/decay_sf.htm">Spontaneous Fission</a> ]</xsl:if>
				<xsl:if test="dm3='a'"> [ <a class="glink" href="../glossary/decay_a.htm">Alpha Decay</a> ]</xsl:if>							
				<xsl:if test="dm3='it'"> [ <a class="glink" href="../glossary/decay_it.htm">Isometric Transition</a> ]</xsl:if>
				</td></tr>
								
				<xsl:if test="de3!=''">
					<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="..\glossary\de.htm" class="glink">Decay Energy:</a>&nbsp;<xsl:apply-templates select="de3" />&nbsp;<a href="..\glossary\ev.htm" class="glink">MeV</a></td></tr>
				</xsl:if>
				<xsl:if test="dp3!=''">
					<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/>Decays to <xsl:apply-templates select="dp3" />.</td></tr>
				</xsl:if>
			</xsl:if>
			
			<xsl:if test="dm4!=''">
				<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="../glossary/hl.htm" class="glink">Half life:</a>&nbsp;<xsl:apply-templates select="hl" />
				<xsl:if test="dm4='b-'"> [ <a class="glink" href="../glossary/decay_b-.htm">beta<SUP>-</SUP></a> ]</xsl:if>
				<xsl:if test="dm4='b+'"> [ <a class="glink" href="../glossary/decay_b+.htm">beta<SUP>+</SUP></a> ]</xsl:if>
				<xsl:if test="dm4='bb'"> [ <a class="glink" href="../glossary/decay_bb.htm">Double beta decay</a> ]</xsl:if>			
				<xsl:if test="dm4='g'"> [ <a class="glink" href="../glossary/gr.htm">Gamma Radiation</a> ]</xsl:if>			
				<xsl:if test="dm4='e'"> [ <a class="glink" href="../glossary/decay_e.htm">Electron Capture</a> ]</xsl:if>
				<xsl:if test="dm4='ee'"> [ <a class="glink" href="../glossary/decay_ee.htm">Double Electron Capture</a> ]</xsl:if>			
				<xsl:if test="dm4='sf'"> [ <a class="glink" href="../glossary/decay_sf.htm">Spontaneous Fission</a> ]</xsl:if>
				<xsl:if test="dm4='a'"> [ <a class="glink" href="../glossary/decay_a.htm">Alpha Decay</a> ]</xsl:if>							
				<xsl:if test="dm4='it'"> [ <a class="glink" href="../glossary/decay_it.htm">Isometric Transition</a> ]</xsl:if>
				</td></tr>
								
				<xsl:if test="de4!=''">
					<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/><a href="..\glossary\de.htm" class="glink">Decay Energy:</a>&nbsp;<xsl:apply-templates select="de4" />&nbsp;<a href="..\glossary\ev.htm" class="glink">MeV</a></td></tr>
				</xsl:if>
				<xsl:if test="dp4!=''">
					<tr><td class="JF"><img src="../spacer_pixel.gif" width="10"/>Decays to <xsl:apply-templates select="dp4" />.</td></tr>
				</xsl:if>
			</xsl:if>
		</xsl:if>	
		
		<xsl:if test="notes/ptxt!=''">
			<xsl:apply-templates select="notes" />
		</xsl:if>
	</xsl:for-each>
	</table>
</xsl:template>

<xsl:template match="notes">
	<tr><td>
	<table width="90%" class="JX">
	<xsl:for-each select="ptxt">
		<tr><td><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
	</table></td></tr>
</xsl:template>

<xsl:template match="info">
	<table width="100%" class="JF">
	<tr>
		<td class="H1"><img src="../greencube.gif"/>Notes</td>
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