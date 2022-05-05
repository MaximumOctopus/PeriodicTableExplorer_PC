<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY Aring "&#197;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- December 3rd 2007 -->

<xsl:template match="element">	
    <xsl:param name="boing" select="atomicno"/>
	<xsl:document href="{concat('other\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Element: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="paf.css" />
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		<tr bgcolor="#F0F0F0">
			<td height="18" class="PF"><div align="center">
				<A HREF="..\elements\{atomicno}.htm">Properties</A> |
				<B>More Info</B> |
    	  		<A HREF="..\isotope\{atomicno}.htm">Isotopes</A> |
    	  		<xsl:if test="name/@allotrope!='n'">
    	 			<A HREF="..\allotrope\{atomicno}.htm">Allotropes</A> |
	    		</xsl:if>
	      		<A HREF="..\spectra\{atomicno}.htm">Spectra</A>
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
      		<td colspan="2" height="18" valign="middle" class="JF"><b><xsl:value-of select="name"/></b></td>
		</tr>
		<TR class="JF" width="180"><TD>Electrons per shell</TD><TD><xsl:value-of select="data/es" /></TD></TR>
		<TR class="JF" width="180"><TD>Electron Configuration</TD><TD><xsl:apply-templates select="data/ect" />&nbsp;<A HREF="econfig:{atomicno}"><IMG SRC="..\econfig.gif" border="0" alt="open electron config"/></A></TD></TR>
		<TR class="JF" width="180"><TD>Ground state</TD><TD><xsl:apply-templates select="data/groundstate" /></TD></TR>
		<TR class="JF" width="180"><TD>Atomic Volume</TD><TD><xsl:apply-templates select="data/av" /> cm<SUP>3</SUP> mol<SUP>-1</SUP></TD></TR>
		
		<xsl:choose>
 			<xsl:when test="data/enps!=0">
 				<TR class="JF" width="180"><TD><A class="glink" HREF="..\glossary\elecneg.htm">Electronegativity</A></TD><TD><xsl:value-of select="data/enps" /></TD></TR>
 			</xsl:when>
 			<xsl:otherwise>
 				<TR class="JF" width="180"><TD><A class="glink" HREF="..\glossary\elecneg.htm">Electronegativity</A></TD><TD>No data.</TD></TR>
 			</xsl:otherwise>
 		</xsl:choose>		
 		
 		<xsl:if test="data/mo!=''">
 			<TR class="JF">
				<TD width="180"><A class="glink" HREF="..\glossary\magord.htm">Magnetic ordering</A></TD><TD><xsl:value-of select="data/mo" /></TD>
 			</TR>
 		</xsl:if>

 		<xsl:if test="data/massmag!=''">
 			<TR class="JF">
				<TD width="180"><A class="glink" HREF="..\glossary\massmag.htm">Mass magnetic susceptibility</A></TD><TD><xsl:apply-templates select="data/massmag" /></TD>
 			</TR>
 		</xsl:if>
 		<xsl:if test="data/molarmag!=''">
 			<TR class="JF">
				<TD width="180"><A class="glink" HREF="..\glossary\molarmag.htm">Molar magnetic susceptibility</A></TD><TD><xsl:apply-templates select="data/molarmag" /></TD>
 			</TR>
 		</xsl:if>
 		
 		<xsl:if test="data/sos!=''">
 			<TR class="JF">
				<TD width="180"><A class="glink" HREF="..\glossary\sos.htm">Speed of sound</A></TD><TD><xsl:value-of select="data/sos" /> m s<SUP>-1</SUP></TD>
 			</TR>
 		</xsl:if>
 		</TABLE>
		
			<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Thermal Properties</B></TD>
			</TR>
			<TR class="JF">
				<xsl:choose>
 					<xsl:when test="data/eoa!=0">
 						<TD width="180"><A class="glink" HREF="..\glossary\eoa.htm">Enthalpy of Atomization</A></TD><TD><xsl:value-of select="data/eoa" /> kJ mol<SUP>-1</SUP> @25&degree;C</TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD width="180"><A class="glink" HREF="..\glossary\eoa.htm">Enthalpy of Atomization</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose>			
 			</TR>
			<TR class="JF"> 				
 				<xsl:choose>
 					<xsl:when test="data/eof!=0">
 						<TD width="180"><A class="glink" HREF="..\glossary\eof.htm">Enthalpy of Fusion</A></TD><TD><xsl:value-of select="data/eof" /> kJ mol<SUP>-1</SUP></TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD width="180"><A class="glink" HREF="..\glossary\eof.htm">Enthalpy of Fusion</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose>
 			</TR>
 			<TR class="JF">
 				 <xsl:choose>
 					<xsl:when test="data/eov!=0">
 						<TD><A class="glink" HREF="..\glossary\eov.htm">Enthalpy of Vaporisation</A></TD><TD><xsl:value-of select="data/eov" />  kJ mol<SUP>-1</SUP></TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD><A class="glink" HREF="..\glossary\eov.htm">Enthalpy of Vaporisation</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose> 				
 			</TR> 		
 			<TR class="JF">
 				 <xsl:choose>
 					<xsl:when test="data/hc!=0">
 						<TD><A class="glink" HREF="..\glossary\heatcap.htm">Heat Capacity</A></TD><TD><xsl:value-of select="data/hc" /> J mol<SUP>-1</SUP> K<SUP>-1</SUP></TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD><A class="glink" HREF="..\glossary\heatcap.htm">Heat Capacity</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose> 				
 			</TR>
 			<TR class="JF">
  				 <xsl:choose>
 					<xsl:when test="data/tc!=0">
 						<TD><A class="glink" HREF="..\glossary\thercon.htm">Thermal Conductivity</A></TD><TD><xsl:value-of select="data/tc" /> W m<SUP>-1</SUP> K<SUP>-1</SUP></TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD><A class="glink" HREF="..\glossary\thercon.htm">Thermal Conductivity</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose> 
 			</TR>
 			<TR class="JF">
 				<xsl:choose>
 					<xsl:when test="data/te!=0">
 						<TD><A class="glink" HREF="..\glossary\therex.htm">Thermal Expansion</A></TD><TD><xsl:value-of select="data/te" /> &mu;m m<SUP>-1</SUP> K<SUP>-1</SUP></TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD><A class="glink" HREF="..\glossary\therex.htm">Thermal Expansion</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose>
 			</TR>
 			<TR class="JF">
 				<xsl:choose>
 					<xsl:when test="critical!=0">
 						<TD><A class="glink" HREF="..\glossary\ct.htm">Critcal Temperature</A></TD><TD><xsl:value-of select="critical"/> K&nbsp;(<xsl:value-of select="criticalC"/>&degree;C)</TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD><A class="glink" HREF="..\glossary\ct.htm">Critcal Temperature</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose>
 			</TR>
 			<TR class="JF">
 				<xsl:choose>
 					<xsl:when test="data/criticalpressure!=0">
 						<TD><A class="glink" HREF="..\glossary\cp.htm">Critcal Pressure</A></TD><TD><xsl:value-of select="criticalpressure"/> MPa</TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD><A class="glink" HREF="..\glossary\cp.htm">Critcal Pressure</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose>
 			</TR> 
 			<TR class="JF">
 				<xsl:choose>
 					<xsl:when test="data/adiindex!=0">
 						<TD><A class="glink" HREF="..\glossary\adiindex.htm">Adiabatic index</A></TD><TD><xsl:value-of select="adiindex"/></TD>
 					</xsl:when>
 					<xsl:otherwise>
 						<TD><A class="glink" HREF="..\glossary\adiindex.htm">Adiabatic index</A></TD><TD>No data.</TD>
 					</xsl:otherwise>
 				</xsl:choose>
 			</TR> 						 			
			</TABLE>
				
		<xsl:if test="(data/mohs!='') or (data/vh!='') or (data/bh!='')">
			<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Hardness</B></TD>
			</TR>
			<xsl:if test="data/bh!=''">
 				<TR class="JF">
					<TD width="180"><A class="glink" HREF="..\glossary\brinellh.htm">Brinell hardness</A></TD><TD><xsl:value-of select="data/bh" /> MPa</TD>
 				</TR>
 			</xsl:if>
 			<xsl:if test="data/mohs!=''">
 				<TR class="JF">
					<TD width="180"><A class="glink" HREF="..\glossary\mohsh.htm">Mohs hardness</A></TD><TD><xsl:value-of select="data/mohs" /></TD>
 				</TR>
 			</xsl:if>
 			<xsl:if test="data/vh!=''">
 				<TR class="JF">
					<TD width="180"><A class="glink" HREF="..\glossary\vickersh.htm">Vickers hardness</A></TD><TD><xsl:value-of select="data/vh" /> MPa</TD>
 				</TR>
 			</xsl:if>
			</TABLE>
		</xsl:if>
		
		<xsl:if test="(data/bm!='') or (data/pr!='') or (data/sm!='') or (data/ym!='')">
			<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Elastic Properties</B></TD>
			</TR>
			<xsl:if test="data/bm!=''">
 				<TR class="JF" width="180">
					<TD width="180"><A class="glink" HREF="..\glossary\bulkm.htm">Bulk modulus</A></TD><TD><xsl:value-of select="data/bm" /> GPa</TD>
 				</TR>
 			</xsl:if>
		    <xsl:if test="data/pr!=''">
 				<TR class="JF" width="180">
					<TD><A class="glink" HREF="..\glossary\poisson.htm">Poisson ratio</A></TD><TD><xsl:value-of select="data/pr" /></TD>
 				</TR>
	 		</xsl:if>
	 		<xsl:if test="data/sm!=''">
 				<TR class="JF" width="180">
					<TD><A class="glink" HREF="..\glossary\shearm.htm">Shear modulus</A></TD><TD><xsl:value-of select="data/sm" /> GPa</TD>
 				</TR>
 			</xsl:if>
			<xsl:if test="data/ym!=''">
 				<TR class="JF" width="180">
					<TD><A class="glink" HREF="..\glossary\youngsm.htm">Young's modulus</A></TD><TD><xsl:value-of select="data/ym" /> GPa</TD>
 				</TR>
	 		</xsl:if>
			</TABLE>
 		</xsl:if>
		
		<xsl:if test="(data/er!='') or (data/elc!='')">
			<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Electrical Properties</B></TD>
			</TR>
			<xsl:if test="data/er!=''">
				<TR class="JF">
	 				<xsl:choose>
 						<xsl:when test="data/er!=0">
	 						<TD width="180"><A class="glink" HREF="..\glossary\elecresis.htm">Electrical resistivity</A></TD><TD><xsl:apply-templates select="data/er" /> &Omega; m</TD>
 						</xsl:when>
 						<xsl:otherwise>
 							<TD width="180"><A class="glink" HREF="..\glossary\elecresis.htm">Electrical resistivity</A></TD><TD>No data.</TD>
 						</xsl:otherwise>
 					</xsl:choose>
 				</TR>
 			</xsl:if>
 			<xsl:if test="data/elc!=''">
 				<TR class="JF">
 					<xsl:choose>
 						<xsl:when test="data/elc!=0">
	 						<TD width="180"><A class="glink" HREF="..\glossary\eleccon.htm">Electrical conductivity</A></TD><TD><xsl:apply-templates select="data/elc" /> 10<SUP>6</SUP>/cm &Omega;</TD>
 						</xsl:when>
 						<xsl:otherwise>
 							<TD width="180"><A class="glink" HREF="..\glossary\eleccon.htm">Electrical conductivity</A></TD><TD>No data.</TD>
 						</xsl:otherwise>
 					</xsl:choose>
 				</TR>
 			</xsl:if>
			</TABLE>
 		</xsl:if>
 		
 		<xsl:if test="data/iop/iop1!=''"> 			
 			<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Chemical Properties</B></TD>
			</TR>
			<xsl:if test="data/ece!=''">
				<TR class="JF">
 					<TD width="180"><A class="glink" HREF="..\glossary\ece.htm">Electrochemical Equivalent</A></TD><TD><xsl:apply-templates select="data/ece" /> g Ah<SUP>-1</SUP></TD>
 				</TR>
			</xsl:if>
			<xsl:if test="data/ewf!=''">
				<TR class="JF">
 					<TD width="180"><A class="glink" HREF="..\glossary\ewf.htm">Electron Work Function</A></TD><TD><xsl:apply-templates select="data/ewf" /> eV</TD>
 				</TR>
			</xsl:if>
			<xsl:if test="data/vep!=''">
				<TR class="JF">
 					<TD width="180"><A class="glink" HREF="..\glossary\vep.htm">Valence Electron Potential (-eV)</A></TD><TD><xsl:apply-templates select="data/vep" /></TD>
 				</TR>
			</xsl:if>	
			<TR class="JF">
				<TD width="180"><A class="glink" HREF="..\glossary\iop.htm">Ionization Potential</A></TD><TD>&nbsp;</TD>
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>First</TD><TD><xsl:apply-templates select="data/iop/iop1" /></TD>
			</TR>
			<xsl:if test="data/iop/iop2!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Second</TD><TD><xsl:apply-templates select="data/iop/iop2" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/iop/iop3!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Third</TD><TD><xsl:apply-templates select="data/iop/iop3" /></TD>
				</TR>
			</xsl:if>			
			<xsl:if test="data/incomp!=''">
				<TR class="JF">
 					<TD width="180" valign="top">Incompatibilities</TD><TD><xsl:apply-templates select="data/incomp" /></TD>
 				</TR>
			</xsl:if>					
			</TABLE>
 		</xsl:if>
		
		<xsl:if test="data/flam/@type!=''">
			<TABLE width="100%">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Flammability</B></TD>
			</TR>
			<TR class="JF">
				<TD width="300" colspan="2"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/><xsl:value-of select="data/flam/@type" /></TD>
			</TR>
			<xsl:if test="data/flam/ait!=''">
				<TR class="JF">
					<TD width="150"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Autoignition temp</TD>
					<TD width="190"><xsl:value-of select="data/flam/ait" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/flam/fp!=''">
				<TR class="JF">
					<TD width="150"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Flashpoint</TD>
					<TD width="190"><xsl:value-of select="data/flam/fp" /></TD>
				</TR>
			</xsl:if>
			</TABLE>
		</xsl:if>
		
		<xsl:if test="data/optical/ori!=''">
			<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Optical Properties</B></TD>
			</TR>
			<xsl:for-each select="data/optical/ori/value">
				<TR class="JF">
					<TD width="180">Refractive Index (<xsl:value-of select="@title" />)</TD>
					<TD><xsl:value-of select="." /></TD>
				</TR>
			</xsl:for-each>
			<xsl:if test="data/optical/orf!=''">
				<TR class="JF">
					<TD width="180">Reflectivity</TD>
					<TD><xsl:value-of select="data/data/orf" />%</TD>
				</TR>
			</xsl:if>
			</TABLE>
		</xsl:if>
		
		<xsl:if test="data/xray/@status!='no'">
			<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Energy Levels</B></TD>
			</TR>
			<xsl:if test="data/xray/ka1!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>K<SUB>&alpha;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/ka1/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/ka1" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/ka2!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>K<SUB>&alpha;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/ka2/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/ka2" /> KeV</TD>
				</TR>
			</xsl:if>			
			<xsl:if test="data/xray/kb1!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>K<SUB>&beta;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/kb1/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/kb1" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/kb2!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>K<SUB>&beta;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/kb2/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/kb2" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/kb3!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>K<SUB>&beta;3</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/kb3/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/kb3" /> KeV</TD>
				</TR>
			</xsl:if>						
			<xsl:if test="data/xray/la1!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&alpha;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/la1/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/la1" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/la2!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&alpha;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/la2/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/la2" /> KeV</TD>
				</TR>
			</xsl:if>			
			<xsl:if test="data/xray/lb1!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&beta;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb1/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/lb1" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/lb2!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&beta;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb2/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/lb2" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/lb3!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&beta;3</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb3/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/lb3" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/lb4!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&beta;4</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb4/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/lb4" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/lg1!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&gamma;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lg1/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/lg1" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/lg2!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&gamma;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lg2/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/lg2" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/lg3!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>&gamma;3</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lg3/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/lg3" /> KeV</TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/xray/ll!='0'">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>L<SUB>l</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/ll/@i" />)</SPAN></TD>
					<TD><xsl:value-of select="data/xray/ll" /> KeV</TD>
				</TR>
			</xsl:if>
			<TR><TD></TD></TR>
			</TABLE>	
		</xsl:if>
		<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Atomic Radii</B></TD>
			</TR>			
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Empirical</TD>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/ar!=0">
						<TD><xsl:value-of select="data/atomicradii/ar" /> pm</TD>
					</xsl:when>
					<xsl:otherwise>
						<TD>No data.</TD>
					</xsl:otherwise>
				</xsl:choose>
			</TR>			
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Bohr Radius</TD>
								
				<xsl:choose>
					<xsl:when test="data/atomicradii/ab!=0">
						<TD><xsl:value-of select="data/atomicradii/ab" /> pm</TD>
					</xsl:when>
					<xsl:otherwise>
						<TD>No data.</TD>
					</xsl:otherwise>
				</xsl:choose>
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Covalent Radius</TD>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/ac!=0">
						<TD><xsl:value-of select="data/atomicradii/ac" /> pm</TD>
					</xsl:when>
					<xsl:otherwise>
						<TD>No data.</TD>
					</xsl:otherwise>
				</xsl:choose>				
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Van der Waals</TD>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/av!=0">
						<TD><xsl:value-of select="data/atomicradii/av" /> pm</TD>
					</xsl:when>
					<xsl:otherwise>
						<TD>No data.</TD>
					</xsl:otherwise>
				</xsl:choose>
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Triple covalent</TD>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/at!=0">
						<TD><xsl:value-of select="data/atomicradii/at" /> pm</TD>
					</xsl:when>
					<xsl:otherwise>
						<TD>No data.</TD>
					</xsl:otherwise>
				</xsl:choose>
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="20"/>Metallic</TD>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/am!=0">
						<TD><xsl:value-of select="data/atomicradii/am" /> pm</TD>
					</xsl:when>
					<xsl:otherwise>
						<TD>No data.</TD>
					</xsl:otherwise>
				</xsl:choose>
			</TR>						
			<TR>
				<TD></TD>
			</TR>
		</TABLE>
		
		<xsl:if test="data/radii!=''">
		<TABLE width="340" class="JF">
			<TR>
				<TD colspan="5" class="JF"><img src="..\bluecube.gif"/><B>Ionic Radii (&Aring;)</B></TD>
			</TR>
			<TR>
				<TD><B>Charge</B></TD>
				<TD><B>Coordination</B></TD>
				<TD><B>Crystal</B></TD>
				<TD><B>Ionic</B></TD>
				<TD><B>Key</B></TD>
			</TR>
			<xsl:for-each select="data/radii/charge">
				<xsl:choose>
					<xsl:when test="position() mod 2 = 1">
						<xsl:for-each select="coordination">
							<TR bgcolor="#F3F8F4">
								<xsl:if test="position()=1">					
									<TD rowspan="{last()}" align="center"><xsl:value-of select="../@value" />&nbsp;<xsl:value-of select="../@note" /></TD>					
								</xsl:if>
								<xsl:choose>
									<xsl:when test="@spin!=''"><TD align="left"><xsl:value-of select="@value" /> (<xsl:value-of select="@spin" /> spin)</TD></xsl:when>
									<xsl:otherwise><TD align="left"><xsl:value-of select="@value" /></TD></xsl:otherwise>	
								</xsl:choose>
								<TD align="center"><xsl:value-of select="cr" /></TD>
								<TD align="center"><xsl:value-of select="ir" /></TD>
								<TD align="center"><xsl:value-of select="key" /></TD>
							</TR>
						</xsl:for-each>
					</xsl:when>		
					<xsl:otherwise>
						<xsl:for-each select="coordination">
							<TR>
								<xsl:if test="position()=1">					
									<TD rowspan="{last()}" align="center"><xsl:value-of select="../@value" />&nbsp;<xsl:value-of select="../@note" /></TD>					
								</xsl:if>
								<xsl:choose>
									<xsl:when test="@spin!=''"><TD align="left"><xsl:value-of select="@value" /> (<xsl:value-of select="@spin" /> spin)</TD></xsl:when>
									<xsl:otherwise><TD align="left"><xsl:value-of select="@value" /></TD></xsl:otherwise>	
								</xsl:choose>
								<TD align="center"><xsl:value-of select="cr" /></TD>
								<TD align="center"><xsl:value-of select="ir" /></TD>
								<TD align="center"><xsl:value-of select="key" /></TD>
							</TR>
						</xsl:for-each>
					</xsl:otherwise>	
				</xsl:choose>
				
			</xsl:for-each>
			
		</TABLE>
		<TABLE width="340" class="JZ">
			<TR><TD>R, From r<SUP>3</SUP> vs V plots.</TD></TR>
			<TR><TD>C, Calculated from bond length - bond strength equations.</TD></TR>
			<TR><TD>E, Estimated.</TD></TR>
			<TR><TD>*, Most Reliable.</TD></TR>
			<TR><TD>M, From Metallic Oxides.</TD></TR>
			<TR><TD>A, Ahrens (1952) Ionic radius.</TD></TR>
			<TR><TD>P, Pauling's (1960) Crystal Radius.</TD></TR>
		</TABLE>
		</xsl:if>
		
		<xsl:if test="data/os!=''">
		<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Oxidation States</B></TD>
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>Main</TD>
				<TD>
				<xsl:for-each select="data/os/main">
					<xsl:apply-templates select="." /><xsl:if test="position()!=last()">, </xsl:if> 
				</xsl:for-each>
				</TD>
			</TR>
			<TR>
				<TD></TD>
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>Other</TD>
				<TD>
				<xsl:for-each select="data/os/other">
					<xsl:apply-templates select="." /><xsl:if test="position()!=last()">, </xsl:if> 
				</xsl:for-each>
				</TD>
			</TR>
			<TR>
				<TD colspan="2"></TD>
			</TR>
		</TABLE>
		</xsl:if>
		
		<xsl:if test="data/ion!=''">
		<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Ionisation Energies (kJ mol<SUP>-1</SUP>)</B>&nbsp;<A HREF="ion:{atomicno}"><IMG SRC="..\graph.gif" ALT="show graph" border="0"/></A></TD>
			</TR>
			<xsl:if test="data/ion/ion1!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M - M<SUP>+</SUP></TD>
					<TD width="160"><xsl:value-of select="data/ion/ion1" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion2!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>+</SUP> - M<SUP>2+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion2" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion3!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>2+</SUP> - M<SUP>3+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion3" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion4!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>3+</SUP> - M<SUP>4+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion4" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion5!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>4+</SUP> - M<SUP>5+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion5" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion6!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>5+</SUP> - M<SUP>6+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion6" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion7!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>6+</SUP> - M<SUP>7+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion7" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion8!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>7+</SUP> - M<SUP>8+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion8" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion9!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>8+</SUP> - M<SUP>9+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion9" /></TD>
				</TR>
			</xsl:if>
			<xsl:if test="data/ion/ion10!=''">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>M<SUP>9+</SUP> - M<SUP>10+</SUP></TD>
					<TD><xsl:value-of select="data/ion/ion10" /></TD>
				</TR>
			</xsl:if>			
			<TR>
				<TD colspan="2"></TD>
			</TR>
		</TABLE>
		</xsl:if>
		
		<xsl:if test="data/cb!=''">
		<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Covalent Bonds (kJ mol<SUP>-1</SUP>)</B></TD>
			</TR>
			<xsl:for-each select="data/cb/bond">
				<TR class="JF">
					<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/><xsl:apply-templates select="." /></TD>
					<TD><xsl:value-of select="./@energy" /></TD>
				</TR>
			</xsl:for-each>
			<TR>
				<TD></TD>
			</TR>
		</TABLE>
		</xsl:if>
		
		<xsl:for-each select="data/vp[@status='yes']">
			<TABLE width="100%">
				<TR>
					<TD colspan="7" class="JF"><img src="..\bluecube.gif"/><B>Vapour Pressure</B> <xsl:if test="./@title!=''"> (<xsl:value-of select="./@title" />)</xsl:if></TD>
				</TR>
				<TR class="JF">
					<TD align="center">P (Pa)</TD>
					<TD align="center">1</TD>
					<TD align="center">10</TD>
					<TD align="center">100</TD>
					<TD align="center">1K</TD>
					<TD align="center">10K</TD>
					<TD align="center">100K</TD>
				</TR>
				<TR class="JF">
					<TD align="center">T (K)</TD>
					<TD align="center"><xsl:value-of select="ppa1" /></TD>
					<TD align="center"><xsl:value-of select="ppa2" /></TD>
					<TD align="center"><xsl:value-of select="ppa3" /></TD>
					<TD align="center"><xsl:value-of select="ppa4" /></TD>
					<TD align="center"><xsl:value-of select="ppa5" /></TD>
					<TD align="center"><xsl:value-of select="ppa6" /></TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
			</TABLE>			
		</xsl:for-each>
		
		<xsl:if test="data/crystal!=''">
		<TABLE width="340">
			<TR>
				<TD colspan="2" class="JF"><img src="..\bluecube.gif"/><B>Crystal Structure</B></TD>
			</TR>
			<TR class="JF">
				<TD width="180"><IMG SRC="..\spacer_pixel.gif" height="10" width="40"/>Structure</TD>
				<TD><xsl:value-of select="data/crystal/type" /></TD>
			</TR>
			<TR class="JF">				
				<TD width="180" rowspan="6" align="center"><IMG SRC="..\..\media\images\{atomicno}c.gif" ALT=""/></TD>
				<TD>a = <xsl:value-of select="data/crystal/da" /> pm</TD>
			</TR>
			<TR class="JF">				
				<TD>b = <xsl:value-of select="data/crystal/db" /> pm</TD>
			</TR>
			<TR class="JF">
				<TD>c = <xsl:value-of select="data/crystal/dc" /> pm</TD>
			</TR>
			<TR class="JF">
				<TD>&alpha; = <xsl:value-of select="data/crystal/aa" />&degree;</TD>
			</TR>
			<TR class="JF">
				<TD>&beta; = <xsl:value-of select="data/crystal/ab" />&degree;</TD>
			</TR>
			<TR class="JF">
				<TD>&gamma; = <xsl:value-of select="data/crystal/ac" />&degree;</TD>
			</TR>
		</TABLE>			
		</xsl:if>
		
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="ectlnk">[<a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a>]</xsl:template>

<xsl:template match="img"><IMG SRC="..\{@ref}.gif"/></xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="elink"><a class="elink" href="..\elements\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="..\glossary\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>