<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY beta "&#946;"> <!ENTITY rho "&#961;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;"> <!ENTITY deg "&#176;">]>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 14th 2006 -->

<xsl:template match="xray_mac/element">	
    <xsl:param name="boing" select="an"/>
	<xsl:document href="{concat('MAC\mac',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>MAC: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="paf.css" />
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		<tr bgcolor="#F0F0F0">
			<td height="18" class="JX"><div align="center">
			<A HREF="..\elements\{an}.htm">Properties</A> |
			<A HREF="..\other\{an}.htm">More Info</A> |
    	  	<A HREF="..\isotope\{an}.htm">Isotopes</A> |
    	  	<xsl:if test="name/@allotrope!='n'">
    	 		<A HREF="..\allotrope\{an}.htm">Allotropes</A> |
	    	</xsl:if>
	      	<A HREF="..\spectra\{an}.htm">Spectra</A>
	      	</div></td>
	    </tr>
		<tr bgcolor="#F0EDED">
    	  <td height="18" class="JX"><div align="center"><A HREF="..\compound\{an}.htm">Compounds</A> | <A HREF="..\reactions\{an}.htm">Reactions</A> | <A HREF="..\production\{an}.htm">Production</A> | <A HREF="..\video\s{an}.htm">Video</A></div></td>
	    </tr>
		<tr bgcolor="#F0EAEA">
    	  <td height="18" class="JX"><div align="center">Atomic: <B>M.A.C.</B> | <A HREF="{an}.htm">Reference</A></div></td>
	    </tr>
    	<tr bgcolor="#F0E7E7">
      		<td height="18" class="JX"><div align="center">Diagrams: <a href="electron:{an}">Shell</a> | <a href="atomicradius:{an}">Atomic Radius</a> | <a href="energy:{an}">Electron</a> || <a href="image:{an}">Images</a></div></td>
	    </tr>
    	</TABLE>
    	
		<TABLE width="100%">   
		<TR class="JF" bgcolor="#DDDDDD">
			<TD colspan="4">Mass Attenuation Data for <xsl:value-of select="name"/></TD>
		</TR>
		<TR><TD colspan="4"></TD></TR>
		
		<xsl:if test="header!=''">
		<TR class="JF"><TD colspan="4"><xsl:apply-templates select="header" /></TD></TR>
		</xsl:if>
		
		<xsl:if test="macs!=''">

		<TR class="JF" bgcolor="#d5edff">
			<TD align="center" width="4%"></TD>
			<TD align="center" width="32%">Energy (MeV)</TD>
			<TD align="center" width="32%">&mu;/&rho; (cm<SUP>2</SUP>/g)</TD>
			<TD align="center" width="32%">&mu;<SUB>en</SUB>/&rho; (cm<SUP>2</SUP>/g)</TD>
		</TR>
		
	 	<xsl:for-each select="macs/mac">
			<xsl:variable name="line" select="@line"/>
	 	
			<TR class="JF">
				<xsl:attribute name="bgcolor">
  		    		<xsl:if test="position() mod 2 = 1">#F3F8F4</xsl:if>
		      	</xsl:attribute>
			
				<xsl:choose>
					<xsl:when test="$line!=''">
						<TD align="center" width="4%"><xsl:value-of select="$line" /></TD>
					</xsl:when>					
					<xsl:otherwise>
						<TD align="center" width="4%"></TD>
					</xsl:otherwise>
				</xsl:choose>				

				<TD align="center" width="32%"><xsl:apply-templates select="energy"/></TD>
				<TD align="center" width="32%"><xsl:apply-templates select="up"/></TD>
				<TD align="center" width="32%"><xsl:apply-templates select="uenp"/></TD>
			</TR>			
		</xsl:for-each>
		
		</xsl:if>
		
		</TABLE>
    	
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

</xsl:stylesheet>