<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;"> <!ENTITY deg "&#176;">]>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- July 25th 2017 -->

<xsl:template match="/">	
	<xsl:apply-templates/>	
</xsl:template>

<xsl:template match="element">	
    <xsl:param name="boing" select="atomicno"/>
	<xsl:document href="{concat('pages\',$boing, '.htm')}">
		<HTML><HEAD>
		<TITLE>Element: <xsl:value-of select="name"/></TITLE>
		<link type="text/css" rel="stylesheet" href="element.css"/>
		</HEAD>
		<BODY leftmargin="1" topmargin="1">
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
			
           <td height="18" colspan="2" valign="middle" class="JF"><b><xsl:value-of select="name"/>&nbsp;[<xsl:value-of select="symbol"/>]</b></td>
		</tr>
		<tr>		
			<xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
			
      		<td height="18" class="JF">CAS-ID: <xsl:value-of select="casid"/></td>
           <td width="10%" rowspan="2" valign="middle" class="JF"><div align="center"><a href="sfx:{$boing}"><img src="08-chat.png" width="24" height="22" border="0" align="middle"/></a></div></td>			
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>		
			<td height="18" class="JF"><a href="gan.htm"><b>An:</b></a>&nbsp;<xsl:value-of select="atomicno"/>&nbsp;<a href="gneutron.htm"><b>N:</b></a>&nbsp;<xsl:value-of select="neutrons"/></td>
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>		
      		<td height="18" colspan="2" class="JF"><a href="gam.htm"><b>Am:</b></a>&nbsp;<xsl:value-of select="atomicweight"/> g/mol</td>
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
      		<td height="18" colspan="2" class="JF">
        	<xsl:if test="groupno!=''">
          		<b>Group No:</b>&nbsp;<xsl:value-of select="groupno"/>
        	</xsl:if>    
        	</td>    	
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
			<td colspan="2" height="18" class="JF">
			<xsl:if test="groupname!=''">
          		<b>Group Name:</b>&nbsp;<xsl:value-of select="groupname"/>
        	</xsl:if>
    		</td>
    	</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
      		<td colspan="2" height="18" class="JF">
        	<xsl:if test="block!=''">
          		<b>Block:</b>&nbsp;<xsl:value-of select="block"/>&nbsp;
        	</xsl:if>
        	<xsl:if test="periodno!=''">
          		<b>Period:</b>&nbsp;<xsl:value-of select="periodno"/>
        	</xsl:if>
    		</td>
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
      		<td colspan="2" height="18" class="JF"><b>State:</b>&nbsp;<xsl:value-of select="state"/></td>
   		</tr>
   		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
      		<td colspan="2" height="18" class="JF"><b>Colour:</b>&nbsp;<xsl:value-of select="colour"/>&nbsp;<b>Classification:</b>&nbsp;<xsl:value-of select="classification"/></td>
    	</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
			<xsl:choose>
			<xsl:when test="boiling!='unknown'">
      			<td colspan="2" height="18" class="JF"><a href="gbp.htm"><b>Boiling Point:</b></a>&nbsp;<xsl:value-of select="boiling"/>K&nbsp;(<xsl:value-of select="boilingC"/>)</td>
      		</xsl:when>
      		<xsl:otherwise>
      			<td colspan="2" height="18" class="JF"><a href="gbp.htm"><b>Boiling Point:</b></a>&nbsp;unknown</td>
      		</xsl:otherwise>
      		</xsl:choose>
    	</tr>	    
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
	   		<xsl:choose>
			<xsl:when test="melting!='unknown'">
      			<td colspan="2" height="18" class="JF"><a href="gmp.htm"><b>Melting Point:</b></a>&nbsp;<xsl:value-of select="melting"/>K&nbsp;(<xsl:value-of select="meltingC"/>) <xsl:value-of select="melting/@note"/></td>
      		</xsl:when>
      		<xsl:otherwise>
      			<td colspan="2" height="18" class="JF"><a href="gmp.htm"><b>Melting Point:</b></a>&nbsp;unknown</td>
      		</xsl:otherwise>
      		</xsl:choose>
    	</tr>
    	<xsl:if test="critical!=0">
    		<tr>
  		    	<xsl:attribute name="bgcolor">
					<xsl:if test="@type='0'">#F0FFED</xsl:if>
					<xsl:if test="@type='1'">#F7FFFF</xsl:if>
					<xsl:if test="@type='2'">#F8F7FF</xsl:if>
					<xsl:if test="@type='3'">#F0FAF1</xsl:if>
					<xsl:if test="@type='4'">#FAF9FC</xsl:if>
					<xsl:if test="@type='5'">#FCF8F8</xsl:if>
					<xsl:if test="@type='6'">#FCF9F3</xsl:if>
					<xsl:if test="@type='7'">#FDFDF6</xsl:if>
					<xsl:if test="@type='8'">#FAFAFF</xsl:if>
					<xsl:if test="@type='9'">#FAFAFA</xsl:if>
					<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      			</xsl:attribute>
      			<td colspan="2" height="18" class="JF"><a href="gct.htm"><b>Critical temperature:</b></a>&nbsp;<xsl:value-of select="critical"/>K&nbsp;(<xsl:value-of select="criticalC"/>&degree;C)</td>
    		</tr>
    	</xsl:if>
		<xsl:if test="data/criticalpressure!=0">
    		<tr>
  		    	<xsl:attribute name="bgcolor">
					<xsl:if test="@type='0'">#F0FFED</xsl:if>
					<xsl:if test="@type='1'">#F7FFFF</xsl:if>
					<xsl:if test="@type='2'">#F8F7FF</xsl:if>
					<xsl:if test="@type='3'">#F0FAF1</xsl:if>
					<xsl:if test="@type='4'">#FAF9FC</xsl:if>
					<xsl:if test="@type='5'">#FCF8F8</xsl:if>
					<xsl:if test="@type='6'">#FCF9F3</xsl:if>
					<xsl:if test="@type='7'">#FDFDF6</xsl:if>
					<xsl:if test="@type='8'">#FAFAFF</xsl:if>
					<xsl:if test="@type='9'">#FAFAFA</xsl:if>
					<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      			</xsl:attribute>
      			<td colspan="2" height="18" class="JF"><a href="gct.htm"><b>Critical pressure:</b></a>&nbsp;<xsl:value-of select="data/criticalpressure"/> MPa</td>
    		</tr>
    	</xsl:if>    	
    	<xsl:if test="supercon!=0">
    		<tr>
  		    	<xsl:attribute name="bgcolor">
					<xsl:if test="@type='0'">#F0FFED</xsl:if>
					<xsl:if test="@type='1'">#F7FFFF</xsl:if>
					<xsl:if test="@type='2'">#F8F7FF</xsl:if>
					<xsl:if test="@type='3'">#F0FAF1</xsl:if>
					<xsl:if test="@type='4'">#FAF9FC</xsl:if>
					<xsl:if test="@type='5'">#FCF8F8</xsl:if>
					<xsl:if test="@type='6'">#FCF9F3</xsl:if>
					<xsl:if test="@type='7'">#FDFDF6</xsl:if>
					<xsl:if test="@type='8'">#FAFAFF</xsl:if>
					<xsl:if test="@type='9'">#FAFAFA</xsl:if>
					<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      			</xsl:attribute>
      			<td colspan="2" height="18" class="JF"><a href="gsupercon.htm"><b>Superconducting temperature:</b></a>&nbsp;<xsl:value-of select="supercon"/>K&nbsp;(<xsl:value-of select="superconC"/>&degree;C) <xsl:value-of select="superconC/@note"/></td>
    		</tr>
    	</xsl:if>    	
	    <xsl:for-each select="density">
    		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="../@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="../@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="../@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="../@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="../@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="../@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="../@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="../@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="../@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="../@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="../@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
	    	<xsl:choose>
	    	<xsl:when test=".!='unknown'"> 	
          		<td colspan="2" height="18" class="JF"><b>Density:</b>&nbsp;<xsl:value-of select="."/>g/cm<SUP>3</SUP></td>
        	</xsl:when>	
        	<xsl:otherwise>
				<td colspan="2" height="18" class="JF"><b>Density:</b>&nbsp;unknown</td>
        	</xsl:otherwise>
        	</xsl:choose>        
        	</tr>
    	</xsl:for-each>
    	<xsl:if test="densityg!=''">
		    <tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
          		<td colspan="2" height="18" class="JF"><b>Density:</b>&nbsp;<xsl:value-of select="densityg"/>g/l</td>
        	</tr>
    	</xsl:if>
    	        
	  	<xsl:if test="availability!=''">
			<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">#FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">#FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">#FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">#FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">#FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">#FCFCFC</xsl:if>
      		</xsl:attribute>
    		 	<td colspan="2" height="18" class="JF"><b>Availability:</b>&nbsp;<xsl:value-of select="availability"/></td>
    		</tr>
    	</xsl:if>	
          
       	<TR><TD><IMG SRC="spacer.gif" height="10"/></TD></TR>
		</TABLE>
		<table>
		<TR>
			<TD class="H1"><img src="bluecube.gif"/>Discovery Information</TD>
		</TR>
		<TR>
		<TD class="JF">Who: <xsl:apply-templates select="dwho"/></TD>
		</TR>
		<xsl:if test="dwhen!=''">
			<TR><TD class="JF">When: <xsl:value-of select="dwhen"/></TD></TR>
		</xsl:if>
		<xsl:if test="dwhere!=''">
			<TR><TD class="JF">Where: <xsl:apply-templates select="dwhere"/></TD></TR>
		</xsl:if>	
	
		<tr><td></td></tr>
	
		<tr><td class="H1"><img src="bluecube.gif"/>Name Origin</td></tr>
		<tr><td class="JF"><xsl:apply-templates select="origin"/></td></tr>
		<tr><td></td></tr>

		<xsl:apply-templates select="sources"/>

		<tr><td></td></tr>

		<xsl:if test="abundance!=''">
			<TR><td class="H1"><img src="bluecube.gif"/>Abundance</td></TR>
			<xsl:if test="abundance/uni!=''">
				<TR><td class="JF">&nbsp;Universe: <xsl:apply-templates select="abundance/uni" /> ppm (by weight)</td></TR>
			</xsl:if>
			<xsl:if test="abundance/sun!=''">
				<TR><td class="JF">&nbsp;Sun: <xsl:apply-templates select="abundance/sun" /> ppm (by weight)</td></TR>
			</xsl:if>
			<xsl:if test="abundance/mc!=''">
				<TR><td class="JF">&nbsp;Carbonaceous meteorite: <xsl:apply-templates select="abundance/mc" /> ppm</td></TR>
			</xsl:if>
			<xsl:if test="abundance/at!=''">
				<TR><td class="JF">&nbsp;Atmosphere: <xsl:apply-templates select="abundance/at" /> ppm</td></TR>
			</xsl:if>
			<TR><td class="JF">&nbsp;Earth's Crust: <xsl:apply-templates select="abundance/ec" /> ppm</td></TR>
			<xsl:if test="abundance/sw!=''">
				<TR><td class="JF">&nbsp;Seawater: <xsl:apply-templates select="abundance/sw" /> ppm</td></TR>
			</xsl:if>
			<xsl:if test="abundance/sw2!=''">
				<TR><td class="JF">&nbsp;Seawater:</td></TR>
				<TR><td class="JF">&nbsp;&nbsp;&nbsp;Atlantic surface: <xsl:apply-templates select="abundance/sw2/as" /> ppm</td></TR>
				<TR><td class="JF">&nbsp;&nbsp;&nbsp;Atlantic deep: <xsl:apply-templates select="abundance/sw2/ad" /> ppm</td></TR>
				<TR><td class="JF">&nbsp;&nbsp;&nbsp;Pacific surface: <xsl:apply-templates select="abundance/sw2/ps" /> ppm</td></TR>
				<TR><td class="JF">&nbsp;&nbsp;&nbsp;Pacific deep: <xsl:apply-templates select="abundance/sw2/pd" /> ppm</td></TR>
			</xsl:if>
			<xsl:if test="abundance/hu!=''">
				<TR><td class="JF">&nbsp;Human:</td></TR>
				<TR><td class="JF">&nbsp;&nbsp;&nbsp;<xsl:apply-templates select="abundance/hu/byw" /> ppb by weight</td></TR>
				<TR><td class="JF">&nbsp;&nbsp;&nbsp;<xsl:apply-templates select="abundance/hu/bya" /> ppb by atoms</td></TR>
			</xsl:if>
		</xsl:if>

		<tr><td></td></tr>

		<xsl:apply-templates select="uses"/>

		<tr><td></td></tr>
		
		<xsl:apply-templates select="history"/>

		<tr><td></td></tr>

		<xsl:apply-templates select="notes"/>
	
		<tr><td></td></tr>

		<xsl:apply-templates select="hazard"/>	
		
		</table>
		
		<table>
		<tr><td class="H1"><img src="bluecube.gif"/>Electron Config</td></tr>
		<tr><td><img src="ec{$boing}.gif"/></td></tr>
		</table>
			
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="history">
	<tr>
	<td class="H1"><img src="bluecube.gif"/>History</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="notes">
	<tr>
	<td class="H1"><img src="bluecube.gif"/>Notes</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="sources">
	<tr>
	<td class="H1"><img src="bluecube.gif"/>Sources</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="hazard">
	<tr>
	<td class="H1"><img src="bluecube.gif"/>Hazards</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="uses">
	<tr>
	<td class="H1"><img src="bluecube.gif"/>Uses</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="ptxt">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="sub"><sub><xsl:value-of select="."/></sub></xsl:template>
<xsl:template match="sup"><sup><xsl:value-of select="."/></sup></xsl:template>

<xsl:template match="elink"><a class="elink" href="{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="glink"><a class="glink" href="g{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="b{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="wlink"><a class="wlink" href="http://{@ref}" target="_blank"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="ilink"><a class="blink" href="i{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="slink"><a class="slink" href="m{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>