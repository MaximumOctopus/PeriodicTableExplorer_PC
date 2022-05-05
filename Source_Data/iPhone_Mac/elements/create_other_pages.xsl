<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY Aring "&#197;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- July 25th 2017 -->

<xsl:template match="element">	
    <xsl:param name="boing" select="atomicno"/>
	<xsl:document href="{concat('other\o',$boing, '.htm')}">
		<html><head>
		<TITLE>Element: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="element.css" />
		</head>
		<body leftmargin="1" topmargin="1" class="JF">
    	<table width="100%" class="JF">
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
      		<td colspan="2" height="18" valign="middle"><b><xsl:value-of select="name"/>&nbsp;[<xsl:value-of select="symbol"/>]</b></td>
		</tr>
		<tr width="180"><td>Electrons per shell</td><td><xsl:value-of select="data/es" /></td></tr>
		<tr width="180"><td>Electron Configuration</td><td><xsl:apply-templates select="data/ect" /></td></tr>
		<tr width="180"><td>Ground state</td><td><xsl:apply-templates select="data/groundstate" /></td></tr>
		<tr width="180"><td>Atomic Volume</td><td><xsl:apply-templates select="data/av" /> cm<SUP>3</SUP> mol<SUP>-1</SUP></td></tr>
		
		<xsl:choose>
 			<xsl:when test="data/enps!=0">
 				<tr width="180"><td><A class="glink" HREF="gelecneg.htm">Electronegativity</A></td><td><xsl:value-of select="data/enps" /></td></tr>
 			</xsl:when>
 			<xsl:otherwise>
 				<tr width="180"><td><A class="glink" HREF="gelecneg.htm">Electronegativity</A></td><td>No data.</td></tr>
 			</xsl:otherwise>
 		</xsl:choose>		
 		
 		<xsl:if test="data/mo!=''">
 			<tr>
				<td width="180"><A class="glink" HREF="gmagord.htm">Magnetic ordering</A></td><td><xsl:value-of select="data/mo" /></td>
 			</tr>
 		</xsl:if>

 		<xsl:if test="data/massmag!=''">
 			<tr>
				<td width="180"><A class="glink" HREF="gmassmag.htm">Mass magnetic susceptibility</A></td><td><xsl:apply-templates select="data/massmag" /></td>
 			</tr>
 		</xsl:if>
 		<xsl:if test="data/molarmag!=''">
 			<tr>
				<td width="180"><A class="glink" HREF="gmolarmag.htm">Molar magnetic susceptibility</A></td><td><xsl:apply-templates select="data/molarmag" /></td>
 			</tr>
 		</xsl:if>
 		
 		<xsl:if test="data/sos!=''">
 			<tr>
				<td width="180"><A class="glink" HREF="gsos.htm">Speed of sound</A></td><td><xsl:value-of select="data/sos" /> m s<SUP>-1</SUP></td>
 			</tr>
 		</xsl:if>
 		</table>
		
			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Thermal Properties</td>
			</tr>
			<tr>
				<xsl:choose>
 					<xsl:when test="data/eoa!=0">
 						<td width="180"><A class="glink" HREF="geoa.htm">Enthalpy of Atomization</A></td><td><xsl:value-of select="data/eoa" /> kJ mol<SUP>-1</SUP> @25&degree;C</td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td width="180"><A class="glink" HREF="geoa.htm">Enthalpy of Atomization</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose>			
 			</tr>
			<tr> 				
 				<xsl:choose>
 					<xsl:when test="data/eof!=0">
 						<td width="180"><A class="glink" HREF="geof.htm">Enthalpy of Fusion</A></td><td><xsl:value-of select="data/eof" /> kJ mol<SUP>-1</SUP></td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td width="180"><A class="glink" HREF="geof.htm">Enthalpy of Fusion</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose>
 			</tr>
 			<tr>
 				 <xsl:choose>
 					<xsl:when test="data/eov!=0">
 						<td><A class="glink" HREF="geov.htm">Enthalpy of Vaporisation</A></td><td><xsl:value-of select="data/eov" />  kJ mol<SUP>-1</SUP></td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td><A class="glink" HREF="geov.htm">Enthalpy of Vaporisation</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose> 				
 			</tr> 		
 			<tr>
 				 <xsl:choose>
 					<xsl:when test="data/hc!=0">
 						<td><A class="glink" HREF="gheatcap.htm">Heat Capacity</A></td><td><xsl:value-of select="data/hc" /> J mol<SUP>-1</SUP> K<SUP>-1</SUP></td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td><A class="glink" HREF="gheatcap.htm">Heat Capacity</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose> 				
 			</tr>
 			<tr>
  				 <xsl:choose>
 					<xsl:when test="data/tc!=0">
 						<td><A class="glink" HREF="gthercon.htm">Thermal Conductivity</A></td><td><xsl:value-of select="data/tc" /> W m<SUP>-1</SUP> K<SUP>-1</SUP></td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td><A class="glink" HREF="gthercon.htm">Thermal Conductivity</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose> 
 			</tr>
 			<tr>
 				<xsl:choose>
 					<xsl:when test="data/te!=0">
 						<td><A class="glink" HREF="gtherex.htm">Thermal Expansion</A></td><td><xsl:value-of select="data/te" /> &mu;m m<SUP>-1</SUP> K<SUP>-1</SUP></td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td><A class="glink" HREF="gtherex.htm">Thermal Expansion</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose>
 			</tr>
 			<tr>
 				<xsl:choose>
 					<xsl:when test="critical!=0">
 						<td><A class="glink" HREF="gct.htm">Critcal Temperature</A></td><td><xsl:value-of select="critical"/> K&nbsp;(<xsl:value-of select="criticalC"/>&degree;C)</td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td><A class="glink" HREF="gct.htm">Critcal Temperature</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose>
 			</tr>
 			<tr>
 				<xsl:choose>
 					<xsl:when test="data/criticalpressure!=0">
 						<td><A class="glink" HREF="gcp.htm">Critcal Pressure</A></td><td><xsl:value-of select="criticalpressure"/> MPa</td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td><A class="glink" HREF="gcp.htm">Critcal Pressure</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose>
 			</tr> 
 			<tr>
 				<xsl:choose>
 					<xsl:when test="data/adiindex!=0">
 						<td><A class="glink" HREF="gadiindex.htm">Adiabatic index</A></td><td><xsl:value-of select="adiindex"/></td>
 					</xsl:when>
 					<xsl:otherwise>
 						<td><A class="glink" HREF="gadiindex.htm">Adiabatic index</A></td><td>No data.</td>
 					</xsl:otherwise>
 				</xsl:choose>
 			</tr> 						 			
			</table>
				
		<xsl:if test="(data/mohs!='') or (data/vh!='') or (data/bh!='')">
			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Hardness</td>
			</tr>
			<xsl:if test="data/bh!=''">
 				<tr>
					<td width="180"><A class="glink" HREF="gbrinellh.htm">Brinell hardness</A></td><td><xsl:value-of select="data/bh" /> MPa</td>
 				</tr>
 			</xsl:if>
 			<xsl:if test="data/mohs!=''">
 				<tr>
					<td width="180"><A class="glink" HREF="gmohsh.htm">Mohs hardness</A></td><td><xsl:value-of select="data/mohs" /></td>
 				</tr>
 			</xsl:if>
 			<xsl:if test="data/vh!=''">
 				<tr>
					<td width="180"><A class="glink" HREF="gvickersh.htm">Vickers hardness</A></td><td><xsl:value-of select="data/vh" /> MPa</td>
 				</tr>
 			</xsl:if>
			</table>
		</xsl:if>
		
		<xsl:if test="(data/bm!='') or (data/pr!='') or (data/sm!='') or (data/ym!='')">
			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Elastic Properties</td>
			</tr>
			<xsl:if test="data/bm!=''">
 				<tr width="180">
					<td width="180"><A class="glink" HREF="gbulkm.htm">Bulk modulus</A></td><td><xsl:value-of select="data/bm" /> GPa</td>
 				</tr>
 			</xsl:if>
		    <xsl:if test="data/pr!=''">
 				<tr width="180">
					<td><A class="glink" HREF="gpoisson.htm">Poisson ratio</A></td><td><xsl:value-of select="data/pr" /></td>
 				</tr>
	 		</xsl:if>
	 		<xsl:if test="data/sm!=''">
 				<tr width="180">
					<td><A class="glink" HREF="gshearm.htm">Shear modulus</A></td><td><xsl:value-of select="data/sm" /> GPa</td>
 				</tr>
 			</xsl:if>
			<xsl:if test="data/ym!=''">
 				<tr width="180">
					<td><A class="glink" HREF="gyoungsm.htm">Young's modulus</A></td><td><xsl:value-of select="data/ym" /> GPa</td>
 				</tr>
	 		</xsl:if>
			</table>
 		</xsl:if>
		
		<xsl:if test="(data/er!='') or (data/elc!='')">
			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Electrical Properties</td>
			</tr>
			<xsl:if test="data/er!=''">
				<tr>
	 				<xsl:choose>
 						<xsl:when test="data/er!=0">
	 						<td width="180"><A class="glink" HREF="gelecresis.htm">Electrical resistivity</A></td><td><xsl:apply-templates select="data/er" /> &Omega; m</td>
 						</xsl:when>
 						<xsl:otherwise>
 							<td width="180"><A class="glink" HREF="gelecresis.htm">Electrical resistivity</A></td><td>No data.</td>
 						</xsl:otherwise>
 					</xsl:choose>
 				</tr>
 			</xsl:if>
 			<xsl:if test="data/elc!=''">
 				<tr>
 					<xsl:choose>
 						<xsl:when test="data/elc!=0">
	 						<td width="180"><A class="glink" HREF="geleccon.htm">Electrical conductivity</A></td><td><xsl:apply-templates select="data/elc" /> 10<SUP>6</SUP>/cm &Omega;</td>
 						</xsl:when>
 						<xsl:otherwise>
 							<td width="180"><A class="glink" HREF="geleccon.htm">Electrical conductivity</A></td><td>No data.</td>
 						</xsl:otherwise>
 					</xsl:choose>
 				</tr>
 			</xsl:if>
			</table>
 		</xsl:if>
 		
 		<xsl:if test="data/iop/iop1!=''"> 			
 			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Chemical Properties</td>
			</tr>
			<xsl:if test="data/ece!=''">
				<tr>
 					<td width="180"><A class="glink" HREF="gece.htm">Electrochemical Equivalent</A></td><td><xsl:apply-templates select="data/ece" /> g Ah<SUP>-1</SUP></td>
 				</tr>
			</xsl:if>
			<xsl:if test="data/ewf!=''">
				<tr>
 					<td width="180"><A class="glink" HREF="gewf.htm">Electron Work Function</A></td><td><xsl:apply-templates select="data/ewf" /> eV</td>
 				</tr>
			</xsl:if>
			<xsl:if test="data/vep!=''">
				<tr>
 					<td width="180"><A class="glink" HREF="gvep.htm">Valence Electron Potential (-eV)</A></td><td><xsl:apply-templates select="data/vep" /></td>
 				</tr>
			</xsl:if>	
			<tr>
				<td width="180"><A class="glink" HREF="giop.htm">Ionization Potential</A></td><td>&nbsp;</td>
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>First</td><td><xsl:apply-templates select="data/iop/iop1" /></td>
			</tr>
			<xsl:if test="data/iop/iop2!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Second</td><td><xsl:apply-templates select="data/iop/iop2" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/iop/iop3!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Third</td><td><xsl:apply-templates select="data/iop/iop3" /></td>
				</tr>
			</xsl:if>			
			<xsl:if test="data/incomp!=''">
				<tr>
 					<td width="180" valign="top">Incompatibilities</td><td><xsl:apply-templates select="data/incomp" /></td>
 				</tr>
			</xsl:if>					
			</table>
 		</xsl:if>
		
		<xsl:if test="data/flam/@type!=''">
			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Flammability</td>
			</tr>
			<tr>
				<td width="300" colspan="2"><IMG SRC="spacer.gif" height="10" width="20"/><xsl:value-of select="data/flam/@type" /></td>
			</tr>
			<xsl:if test="data/flam/ait!=''">
				<tr>
					<td width="150"><IMG SRC="spacer.gif" height="10" width="20"/>Autoignition temp</td>
					<td width="190"><xsl:value-of select="data/flam/ait" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/flam/fp!=''">
				<tr>
					<td width="150"><IMG SRC="spacer.gif" height="10" width="20"/>Flashpoint</td>
					<td width="190"><xsl:value-of select="data/flam/fp" /></td>
				</tr>
			</xsl:if>
			</table>
		</xsl:if>
		
		<xsl:if test="data/optical/ori!=''">
			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Optical Properties</td>
			</tr>
			<xsl:for-each select="data/optical/ori/value">
				<tr>
					<td width="180">Refractive Index (<xsl:value-of select="@title" />)</td>
					<td><xsl:value-of select="." /></td>
				</tr>
			</xsl:for-each>
			<xsl:if test="data/optical/orf!=''">
				<tr>
					<td width="180">Reflectivity</td>
					<td><xsl:value-of select="data/data/orf" />%</td>
				</tr>
			</xsl:if>
			</table>
		</xsl:if>
		
		<xsl:if test="data/xray/@status!='no'">
			<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Energy Levels</td>
			</tr>
			<xsl:if test="data/xray/ka1!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>K<SUB>&alpha;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/ka1/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/ka1" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/ka2!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>K<SUB>&alpha;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/ka2/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/ka2" /> KeV</td>
				</tr>
			</xsl:if>			
			<xsl:if test="data/xray/kb1!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>K<SUB>&beta;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/kb1/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/kb1" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/kb2!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>K<SUB>&beta;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/kb2/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/kb2" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/kb3!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>K<SUB>&beta;3</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/kb3/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/kb3" /> KeV</td>
				</tr>
			</xsl:if>						
			<xsl:if test="data/xray/la1!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&alpha;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/la1/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/la1" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/la2!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&alpha;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/la2/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/la2" /> KeV</td>
				</tr>
			</xsl:if>			
			<xsl:if test="data/xray/lb1!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&beta;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb1/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/lb1" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/lb2!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&beta;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb2/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/lb2" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/lb3!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&beta;3</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb3/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/lb3" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/lb4!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&beta;4</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lb4/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/lb4" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/lg1!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&gamma;1</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lg1/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/lg1" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/lg2!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&gamma;2</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lg2/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/lg2" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/lg3!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>&gamma;3</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/lg3/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/lg3" /> KeV</td>
				</tr>
			</xsl:if>
			<xsl:if test="data/xray/ll!='0'">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>L<SUB>l</SUB>&nbsp;<SPAN class="JZ">(intensity <xsl:value-of select="data/xray/ll/@i" />)</SPAN></td>
					<td><xsl:value-of select="data/xray/ll" /> KeV</td>
				</tr>
			</xsl:if>
			<tr><td></td></tr>
			</table>	
		</xsl:if>
		<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Atomic Radii</td>
			</tr>			
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Empirical</td>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/ar!=0">
						<td><xsl:value-of select="data/atomicradii/ar" /> pm</td>
					</xsl:when>
					<xsl:otherwise>
						<td>No data.</td>
					</xsl:otherwise>
				</xsl:choose>
			</tr>			
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Bohr Radius</td>
								
				<xsl:choose>
					<xsl:when test="data/atomicradii/ab!=0">
						<td><xsl:value-of select="data/atomicradii/ab" /> pm</td>
					</xsl:when>
					<xsl:otherwise>
						<td>No data.</td>
					</xsl:otherwise>
				</xsl:choose>
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Covalent Radius</td>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/ac!=0">
						<td><xsl:value-of select="data/atomicradii/ac" /> pm</td>
					</xsl:when>
					<xsl:otherwise>
						<td>No data.</td>
					</xsl:otherwise>
				</xsl:choose>				
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Van der Waals</td>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/av!=0">
						<td><xsl:value-of select="data/atomicradii/av" /> pm</td>
					</xsl:when>
					<xsl:otherwise>
						<td>No data.</td>
					</xsl:otherwise>
				</xsl:choose>
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Triple covalent</td>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/at!=0">
						<td><xsl:value-of select="data/atomicradii/at" /> pm</td>
					</xsl:when>
					<xsl:otherwise>
						<td>No data.</td>
					</xsl:otherwise>
				</xsl:choose>
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="20"/>Metallic</td>
				
				<xsl:choose>
					<xsl:when test="data/atomicradii/am!=0">
						<td><xsl:value-of select="data/atomicradii/am" /> pm</td>
					</xsl:when>
					<xsl:otherwise>
						<td>No data.</td>
					</xsl:otherwise>
				</xsl:choose>
			</tr>						
			<tr>
				<td></td>
			</tr>
		</table>
		
		<xsl:if test="data/radii!=''">
		<table width="100%" class="JF">
			<tr>
				<td colspan="5" class="H1"><img src="bluecube.gif"/>Ionic Radii (&Aring;)</td>
			</tr>
			<tr>
				<td><B>Charge</B></td>
				<td><B>Coordination</B></td>
				<td><B>Crystal</B></td>
				<td><B>Ionic</B></td>
				<td><B>Key</B></td>
			</tr>
			<xsl:for-each select="data/radii/charge">
				<xsl:choose>
					<xsl:when test="position() mod 2 = 1">
						<xsl:for-each select="coordination">
							<tr bgcolor="#F3F8F4">
								<xsl:if test="position()=1">					
									<td rowspan="{last()}" align="center"><xsl:value-of select="../@value" />&nbsp;<xsl:value-of select="../@note" /></td>					
								</xsl:if>
								<xsl:choose>
									<xsl:when test="@spin!=''"><td align="left"><xsl:value-of select="@value" /> (<xsl:value-of select="@spin" /> spin)</td></xsl:when>
									<xsl:otherwise><td align="left"><xsl:value-of select="@value" /></td></xsl:otherwise>	
								</xsl:choose>
								<td align="center"><xsl:value-of select="cr" /></td>
								<td align="center"><xsl:value-of select="ir" /></td>
								<td align="center"><xsl:value-of select="key" /></td>
							</tr>
						</xsl:for-each>
					</xsl:when>		
					<xsl:otherwise>
						<xsl:for-each select="coordination">
							<tr>
								<xsl:if test="position()=1">					
									<td rowspan="{last()}" align="center"><xsl:value-of select="../@value" />&nbsp;<xsl:value-of select="../@note" /></td>					
								</xsl:if>
								<xsl:choose>
									<xsl:when test="@spin!=''"><td align="left"><xsl:value-of select="@value" /> (<xsl:value-of select="@spin" /> spin)</td></xsl:when>
									<xsl:otherwise><td align="left"><xsl:value-of select="@value" /></td></xsl:otherwise>	
								</xsl:choose>
								<td align="center"><xsl:value-of select="cr" /></td>
								<td align="center"><xsl:value-of select="ir" /></td>
								<td align="center"><xsl:value-of select="key" /></td>
							</tr>
						</xsl:for-each>
					</xsl:otherwise>	
				</xsl:choose>
				
			</xsl:for-each>
			
		</table>
		<table width="100%" class="JF">
			<tr class="JZ"><td>R, From r<SUP>3</SUP> vs V plots.</td></tr>
			<tr class="JZ"><td>C, Calculated from bond length - bond strength equations.</td></tr>
			<tr class="JZ"><td>E, Estimated.</td></tr>
			<tr class="JZ"><td>*, Most Reliable.</td></tr>
			<tr class="JZ"><td>M, From Metallic Oxides.</td></tr>
			<tr class="JZ"><td>A, Ahrens (1952) Ionic radius.</td></tr>
			<tr class="JZ"><td>P, Pauling's (1960) Crystal Radius.</td></tr>
		</table>
		</xsl:if>
		
		<xsl:if test="data/os!=''">
		<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Oxidation States</td>
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>Main</td>
				<td>
				<xsl:for-each select="data/os/main">
					<xsl:apply-templates select="." /><xsl:if test="position()!=last()">, </xsl:if> 
				</xsl:for-each>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>Other</td>
				<td>
				<xsl:for-each select="data/os/other">
					<xsl:apply-templates select="." /><xsl:if test="position()!=last()">, </xsl:if> 
				</xsl:for-each>
				</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
		</table>
		</xsl:if>
		
		<xsl:if test="data/ion!=''">
		<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Ionisation Energies (kJ mol<SUP>-1</SUP>)</td>
			</tr>
			<xsl:if test="data/ion/ion1!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M - M<SUP>+</SUP></td>
					<td width="160"><xsl:value-of select="data/ion/ion1" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion2!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>+</SUP> - M<SUP>2+</SUP></td>
					<td><xsl:value-of select="data/ion/ion2" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion3!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>2+</SUP> - M<SUP>3+</SUP></td>
					<td><xsl:value-of select="data/ion/ion3" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion4!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>3+</SUP> - M<SUP>4+</SUP></td>
					<td><xsl:value-of select="data/ion/ion4" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion5!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>4+</SUP> - M<SUP>5+</SUP></td>
					<td><xsl:value-of select="data/ion/ion5" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion6!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>5+</SUP> - M<SUP>6+</SUP></td>
					<td><xsl:value-of select="data/ion/ion6" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion7!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>6+</SUP> - M<SUP>7+</SUP></td>
					<td><xsl:value-of select="data/ion/ion7" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion8!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>7+</SUP> - M<SUP>8+</SUP></td>
					<td><xsl:value-of select="data/ion/ion8" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion9!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>8+</SUP> - M<SUP>9+</SUP></td>
					<td><xsl:value-of select="data/ion/ion9" /></td>
				</tr>
			</xsl:if>
			<xsl:if test="data/ion/ion10!=''">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>M<SUP>9+</SUP> - M<SUP>10+</SUP></td>
					<td><xsl:value-of select="data/ion/ion10" /></td>
				</tr>
			</xsl:if>			
			<tr>
				<td colspan="2"></td>
			</tr>
		</table>
		</xsl:if>
		
		<xsl:if test="data/cb!=''">
		<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Covalent Bonds (kJ mol<SUP>-1</SUP>)</td>
			</tr>
			<xsl:for-each select="data/cb/bond">
				<tr>
					<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/><xsl:apply-templates select="." /></td>
					<td><xsl:value-of select="./@energy" /></td>
				</tr>
			</xsl:for-each>
			<tr>
				<td></td>
			</tr>
		</table>
		</xsl:if>
		
		<xsl:for-each select="data/vp[@status='yes']">
			<table width="100%" class="JF">
				<tr>
					<td colspan="7" class="H1"><img src="bluecube.gif"/>Vapour Pressure <xsl:if test="./@title!=''"> (<xsl:value-of select="./@title" />)</xsl:if></td>
				</tr>
				<tr>
					<td align="center">P (Pa)</td>
					<td align="center">1</td>
					<td align="center">10</td>
					<td align="center">100</td>
					<td align="center">1K</td>
					<td align="center">10K</td>
					<td align="center">100K</td>
				</tr>
				<tr>
					<td align="center">T (K)</td>
					<td align="center"><xsl:value-of select="ppa1" /></td>
					<td align="center"><xsl:value-of select="ppa2" /></td>
					<td align="center"><xsl:value-of select="ppa3" /></td>
					<td align="center"><xsl:value-of select="ppa4" /></td>
					<td align="center"><xsl:value-of select="ppa5" /></td>
					<td align="center"><xsl:value-of select="ppa6" /></td>
				</tr>
				<tr>
					<td></td>
				</tr>
			</table>			
		</xsl:for-each>
		
		<xsl:if test="data/crystal!=''">
		<table width="100%" class="JF">
			<tr>
				<td colspan="2" class="H1"><img src="bluecube.gif"/>Crystal Structure</td>
			</tr>
			<tr>
				<td width="180"><IMG SRC="spacer.gif" height="10" width="40"/>Structure</td>
				<td><xsl:value-of select="data/crystal/type" /></td>
			</tr>
			<tr>				
				<td width="180" rowspan="6" align="center"><IMG SRC="{atomicno}c.gif" ALT=""/></td>
				<td>a = <xsl:value-of select="data/crystal/da" /> pm</td>
			</tr>
			<tr>				
				<td>b = <xsl:value-of select="data/crystal/db" /> pm</td>
			</tr>
			<tr>
				<td>c = <xsl:value-of select="data/crystal/dc" /> pm</td>
			</tr>
			<tr>
				<td>&alpha; = <xsl:value-of select="data/crystal/aa" />&degree;</td>
			</tr>
			<tr>
				<td>&beta; = <xsl:value-of select="data/crystal/ab" />&degree;</td>
			</tr>
			<tr>
				<td>&gamma; = <xsl:value-of select="data/crystal/ac" />&degree;</td>
			</tr>
		</table>			
		</xsl:if>
		
		</body></html>
	</xsl:document>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="ectlnk">[<a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a>]</xsl:template>

<xsl:template match="img"><IMG SRC="{@ref}.gif"/></xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="g{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>