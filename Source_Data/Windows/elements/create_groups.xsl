<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;"> <!ENTITY deg "&#176;">]>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- December 1st 2005 -->

<xsl:template match="elementlist">	
    <xsl:param name="boing" select="atomicno"/>	

	<xsl:document href="groups\1.htm">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="../element.css"/>
		</HEAD>
		<BODY leftmargin="1" topmargin="1">	
		<TABLE width="100%">
  		<TR bgcolor="#F3F8F4">
  			<TD class="H1" width="100">Name</TD>
  			<TD class="H1" align="center" width="35"><A href="glossary:an">An</A></TD>
			<TD class="H1" align="center" width="80"><A href="glossary:am">Am</A></TD>	
  			<TD class="H1" align="center"><A href="glossary:bp">BP</A></TD>
  			<TD class="H1" align="center"><A href="glossary:mp">MP</A></TD>
			<TD class="H1" width="70">Density  <DIV class="JX">(g/cm<SUP>3</SUP>)</DIV></TD>
  			<TD class="H1" width="35" align="center"><A HREF="glossary:elecneg">En</A></TD>
  		</TR>		
  		<xsl:for-each select="element">
  			<xsl:sort select="atomicno" lang="" data-type="number" order="ascending" />

  			<xsl:if test="groupno='1'">  			
  				<TR>
  					<TD class="JX"><a href="element:{atomicno}"><xsl:value-of select="name" /></a>&nbsp;<span class="JX">(<xsl:value-of select="symbol" />)</span></TD>
  					<TD class="JX" align="center"><xsl:value-of select="atomicno" /></TD>
  					<TD class="JX"><xsl:value-of select="atomicweight" /></TD>
  					<TD class="JX"><xsl:value-of select="boiling" />K</TD>
  					<TD class="JX"><xsl:value-of select="melting" />K</TD>
  					<TD class="JX"><xsl:value-of select="density" /></TD>
  					<TD class="JX"><xsl:value-of select="data/enps" /></TD>
  				</TR>
			</xsl:if>
  		</xsl:for-each>
  		</TABLE>
		</BODY></HTML>
	</xsl:document>
	
	<xsl:document href="groups\2.htm">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="../element.css"/>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">	
		<TABLE width="100%">
  		<TR bgcolor="#F3F8F4">
  			<TD class="H1" width="100">Name</TD>
  			<TD class="H1" align="center" width="35"><A href="glossary:an">An</A></TD>
			<TD class="H1" align="center" width="80"><A href="glossary:am">Am</A></TD>	
  			<TD class="H1" align="center"><A href="glossary:bp">BP</A></TD>
  			<TD class="H1" align="center"><A href="glossary:mp">MP</A></TD>
			<TD class="H1" width="70">Density  <DIV class="JX">(g/cm<SUP>3</SUP>)</DIV></TD>
  			<TD class="H1" width="35" align="center"><A HREF="glossary:elecneg">En</A></TD>
  		</TR>		
  		<xsl:for-each select="element">
  			<xsl:sort select="atomicno" lang="" data-type="number" order="ascending" />

  			<xsl:if test="groupno='2'">  			
  				<TR>
  					<TD class="JX"><a href="element:{atomicno}"><xsl:value-of select="name" /></a>&nbsp;<span class="JX">(<xsl:value-of select="symbol" />)</span></TD>
  					<TD class="JX" align="center"><xsl:value-of select="atomicno" /></TD>
  					<TD class="JX"><xsl:value-of select="atomicweight" /></TD>
  					<xsl:if test="boiling!='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" />K</TD>
  					</xsl:if>
					<xsl:if test="boiling='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" /></TD>
  					</xsl:if>
  					<xsl:if test="melting!='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" />K</TD>
  					</xsl:if>
					<xsl:if test="melting='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" /></TD>
  					</xsl:if>
  					<TD class="JX"><xsl:value-of select="density" /></TD>
  					<TD class="JX"><xsl:value-of select="data/enps" /></TD>
  				</TR>
			</xsl:if>
  		</xsl:for-each>
  		</TABLE>
		</BODY></HTML>
	</xsl:document>
		
	<xsl:document href="groups\17.htm">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="../element.css"/>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">	
		<TABLE width="100%">
  		<TR bgcolor="#F3F8F4">
  			<TD class="H1" width="100">Name</TD>
  			<TD class="H1" align="center" width="35"><A href="glossary:an">An</A></TD>
			<TD class="H1" align="center" width="80"><A href="glossary:am">Am</A></TD>	
  			<TD class="H1" align="center"><A href="glossary:bp">BP</A></TD>
  			<TD class="H1" align="center"><A href="glossary:mp">MP</A></TD>
  			<TD class="H1" width="35" align="center"><A HREF="glossary:elecneg">En</A></TD>
  		</TR>		
  		<xsl:for-each select="element">
  			<xsl:sort select="atomicno" lang="" data-type="number" order="ascending" />

  			<xsl:if test="groupno='17'">  			
  				<TR>
  					<TD class="JX"><a href="element:{atomicno}"><xsl:value-of select="name" /></a>&nbsp;<span class="JX">(<xsl:value-of select="symbol" />)</span></TD>
  					<TD class="JX" align="center"><xsl:value-of select="atomicno" /></TD>
  					<TD class="JX"><xsl:value-of select="atomicweight" /></TD>
  					<xsl:if test="boiling!='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" />K</TD>
  					</xsl:if>
					<xsl:if test="boiling='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" /></TD>
  					</xsl:if>
  					<xsl:if test="melting!='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" />K</TD>
  					</xsl:if>
					<xsl:if test="melting='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" /></TD>
  					</xsl:if>
  					<TD class="JX"><xsl:value-of select="data/enps" /></TD>
  				</TR>
			</xsl:if>
  		</xsl:for-each>
  		</TABLE>
		</BODY></HTML>		
	</xsl:document>
	
	<xsl:document href="groups\18.htm">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="../element.css"/>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">	
		<TABLE width="100%">
  		<TR bgcolor="#F3F8F4">
  			<TD class="H1" width="100">Name</TD>
  			<TD class="H1" align="center" width="35"><A href="glossary:an">An</A></TD>
			<TD class="H1" align="center" width="80"><A href="glossary:am">Am</A></TD>	
  			<TD class="H1" align="center"><A href="glossary:bp">BP</A></TD>
  			<TD class="H1" align="center"><A href="glossary:mp">MP</A></TD>
			<TD class="H1" width="70">Density  <DIV class="JX">(g/cm<SUP>3</SUP>)</DIV></TD>
  			<TD class="H1" width="35" align="center"><A HREF="glossary:elecneg">En</A></TD>
  		</TR>		
  		<xsl:for-each select="element">
  			<xsl:sort select="atomicno" lang="" data-type="number" order="ascending" />

  			<xsl:if test="groupno='18'">  			
  				<TR>
  					<TD class="JX"><a href="element:{atomicno}"><xsl:value-of select="name" /></a>&nbsp;<span class="JX">(<xsl:value-of select="symbol" />)</span></TD>
  					<TD class="JX" align="center"><xsl:value-of select="atomicno" /></TD>
  					<TD class="JX"><xsl:value-of select="atomicweight" /></TD>
  					<xsl:if test="boiling!='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" />K</TD>
  					</xsl:if>
					<xsl:if test="boiling='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" /></TD>
  					</xsl:if>
  					<xsl:if test="melting!='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" />K</TD>
  					</xsl:if>
					<xsl:if test="melting='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" /></TD>
  					</xsl:if>
  					<TD class="JX"><xsl:value-of select="densityg" /></TD>
  					<TD class="JX"><xsl:value-of select="data/atomicradii/ar" /></TD>
  				</TR>
			</xsl:if>
  		</xsl:for-each>
  		</TABLE>
		</BODY></HTML>
	</xsl:document>
	
	<xsl:document href="groups\actinoid.htm">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="../element.css"/>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">	
		<TABLE width="100%">
  		<TR bgcolor="#F3F8F4">
  			<TD class="H1" width="100">Name</TD>
  			<TD class="H1" align="center" width="35"><A href="glossary:an">An</A></TD>
			<TD class="H1" align="center" width="80"><A href="glossary:am">Am</A></TD>	
  			<TD class="H1" align="center"><A href="glossary:bp">BP</A></TD>
  			<TD class="H1" align="center"><A href="glossary:mp">MP</A></TD>
			<TD class="H1" width="70">Density  <DIV class="JX">(g/cm<SUP>3</SUP>)</DIV></TD>
  			<TD class="H1" width="35" align="center"><A HREF="glossary:elecneg">En</A></TD>
  		</TR>		
  		<xsl:for-each select="element">
  			<xsl:sort select="atomicno" lang="" data-type="number" order="ascending" />

  			<xsl:if test="groupname='Actinoid'">  			
  				<TR>
  					<TD class="JX"><a href="element:{atomicno}"><xsl:value-of select="name" /></a>&nbsp;<span class="JX">(<xsl:value-of select="symbol" />)</span></TD>
  					<TD class="JX" align="center"><xsl:value-of select="atomicno" /></TD>
  					<TD class="JX"><xsl:value-of select="atomicweight" /></TD>
  					<xsl:if test="boiling!='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" />K</TD>
  					</xsl:if>
					<xsl:if test="boiling='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" /></TD>
  					</xsl:if>
  					<xsl:if test="melting!='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" />K</TD>
  					</xsl:if>
					<xsl:if test="melting='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" /></TD>
  					</xsl:if>
  					<TD class="JX"><xsl:value-of select="density" /></TD>
  					<TD class="JX"><xsl:value-of select="data/enps" /></TD>
  				</TR>
			</xsl:if>
  		</xsl:for-each>
  		</TABLE>
		</BODY></HTML>
	</xsl:document>
	
	<xsl:document href="groups\lanthanoid.htm">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="../element.css"/>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">	
		<TABLE width="100%">
  		<TR bgcolor="#F3F8F4">
  			<TD class="H1" width="100">Name</TD>
  			<TD class="H1" align="center" width="35"><A href="glossary:an">An</A></TD>
			<TD class="H1" align="center" width="80"><A href="glossary:am">Am</A></TD>	
  			<TD class="H1" align="center"><A href="glossary:bp">BP</A></TD>
  			<TD class="H1" align="center"><A href="glossary:mp">MP</A></TD>
			<TD class="H1" width="70">Density  <DIV class="JX">(g/cm<SUP>3</SUP>)</DIV></TD>
  			<TD class="H1" width="35" align="center"><A HREF="glossary:elecneg">En</A></TD>
  		</TR>		
  		<xsl:for-each select="element">
  			<xsl:sort select="atomicno" lang="" data-type="number" order="ascending" />

  			<xsl:if test="groupname='Lanthanoid'">  			
  				<TR>
  					<TD class="JX"><a href="element:{atomicno}"><xsl:value-of select="name" /></a>&nbsp;<span class="JX">(<xsl:value-of select="symbol" />)</span></TD>
  					<TD class="JX" align="center"><xsl:value-of select="atomicno" /></TD>
  					<TD class="JX"><xsl:value-of select="atomicweight" /></TD>
  					<xsl:if test="boiling!='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" />K</TD>
  					</xsl:if>
					<xsl:if test="boiling='unknown'">
  						<TD class="JX"><xsl:value-of select="boiling" /></TD>
  					</xsl:if>
  					<xsl:if test="melting!='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" />K</TD>
  					</xsl:if>
					<xsl:if test="melting='unknown'">
  						<TD class="JX"><xsl:value-of select="melting" /></TD>
  					</xsl:if>
  					<TD class="JX"><xsl:value-of select="density" /></TD>
  					<TD class="JX"><xsl:value-of select="data/enps" /></TD>
  				</TR>
			</xsl:if>
  		</xsl:for-each>
  		</TABLE>
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink">
	<a class="glink" href="..\glossary\{@ref}.htm"><xsl:value-of select="."/></a>
</xsl:template>

<xsl:template match="blink">
	<a class="blink" href="..\biography\{@ref}.htm"><xsl:value-of select="."/></a>
</xsl:template>

<xsl:template match="wlink">
	<a class="wlink" href="http://{@ref}" target="_blank"><xsl:value-of select="."/></a>
</xsl:template>

<xsl:template match="ilink">
	<a class="blink" href="..\isotope\{@ref}.htm"><xsl:value-of select="."/></a>
</xsl:template>

<xsl:template match="images">
	<table width="100%">
	<tr>
		<td class="H1"><img src="..\bluecube.gif"/>Images</td>
	</tr>
	<xsl:for-each select="image">		
	   	<tr>
	    <td width="156"><img src="{@name}.jpg" alt="{.}"/></td>
	    <td class="JF" valign="top"><xsl:value-of select="." /></td>
	    </tr>
	   	<tr>
	    </tr>
	</xsl:for-each>
	</table>
</xsl:template>

</xsl:stylesheet>