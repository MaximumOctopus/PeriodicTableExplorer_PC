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
		<link type="text/css" rel="stylesheet" href="element.css" />
		</HEAD>
		<BODY leftmargin="1" topmargin="1">
		<TABLE width="100%">   
		<TR bgcolor="#DDDDDD">
			<TD colspan="4" class="JF">Mass Attenuation Data for <xsl:value-of select="name"/></TD>
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