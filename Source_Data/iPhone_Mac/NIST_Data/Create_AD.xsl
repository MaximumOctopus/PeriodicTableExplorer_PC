<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;"> <!ENTITY deg "&#176;">]>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 14th 2006 -->

<xsl:template match="atomicrefdata/element">	
    <xsl:param name="boing" select="an"/>
	<xsl:document href="{concat('AD\ad',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>AD: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="element.css" />
		</HEAD>
		<BODY leftmargin="1" topmargin="1">
		<TABLE width="100%">   
		<TR bgcolor="#DDDDDD">
			<TD class="JF" colspan="5">Atomic Reference Data for Electronic Structure Calculations</TD>
		</TR>
		<TR><TD colspan="5"></TD></TR>
		
		<xsl:if test="header!=''">
		<TR class="JF"><TD colspan="5"><xsl:apply-templates select="header" /></TD></TR>
		</xsl:if>
		
		<xsl:if test="atomicdata/configuration!=''">
	 	<xsl:for-each select="atomicdata/configuration">
			<TR class="JF" bgcolor="#CCCCCC">
				<TD colspan="5"><xsl:value-of select="../../name"/>;&nbsp;<xsl:apply-templates select="data/ion"/>&nbsp;&nbsp;<xsl:apply-templates select="data/elc"/></TD>
			</TR>			
			<TR class="JF" bgcolor="#d5edff">
				<TD align="right" width="20%"></TD>
				<TD align="center" width="20%">LDA</TD>
				<TD align="center" width="20%">LSD</TD>
				<TD align="center" width="20%">RLDA</TD>
				<TD align="center" width="20%">ScRLDA</TD>
			</TR>
			<TR class="JF">
				<TD align="right" width="20%">E<SUB>tot</SUB></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="etot/lda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="etot/lsd"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="etot/rlda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="etot/scrlda"/></TD>
			</TR>
			<TR class="JF">
				<TD align="right" width="20%">E<SUB>kin</SUB></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ekin/lda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ekin/lsd"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ekin/rlda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ekin/scrlda"/></TD>
			</TR>
			<TR class="JF">
				<TD align="right" width="20%">E<SUB>coul</SUB></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ecoul/lda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ecoul/lsd"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ecoul/rlda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="ecoul/scrlda"/></TD>
			</TR>
			<TR class="JF">
				<TD align="right" width="20%">E<SUB>enuc</SUB></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="eenuc/lda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="eenuc/lsd"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="eenuc/rlda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="eenuc/scrlda"/></TD>
			</TR>
			<TR class="JF">
				<TD align="right" width="20%">E<SUB>xc</SUB></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="exc/lda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="exc/lsd"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="exc/rlda"/></TD>
				<TD align="center" width="20%"><xsl:apply-templates select="exc/scrlda"/></TD>
			</TR>
			
			<TR><TD colspan="5"></TD></TR>
			
			<xsl:for-each select="shell">
				<xsl:variable name="sname" select="@name"/>		
			
				<xsl:for-each select="level">
				<TR class="JF">
					<xsl:attribute name="bgcolor">
  		    			<xsl:if test="position() mod 2 = 1">#F3F8F4</xsl:if>
		      		</xsl:attribute>
      		
					<xsl:choose>
						<xsl:when test="position()=1">
							<TD align="right" width="20%"><xsl:value-of select="$sname"/></TD>
						</xsl:when>
					<xsl:otherwise>
						<TD align="right" width="20%"></TD>
					</xsl:otherwise>
						
					</xsl:choose>
					
					<TD align="center" width="20%"><xsl:apply-templates select="lda"/></TD>
					<TD align="center" width="20%"><xsl:apply-templates select="lsd"/></TD>
					<TD align="center" width="20%"><xsl:apply-templates select="rlda"/></TD>
					<TD align="center" width="20%"><xsl:apply-templates select="scrlda"/></TD>
				</TR>
				<TR><TD colspan="5"></TD></TR>
				</xsl:for-each>
			
			</xsl:for-each>
			
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