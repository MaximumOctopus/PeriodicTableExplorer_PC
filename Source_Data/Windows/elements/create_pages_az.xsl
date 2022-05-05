<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;"> <!ENTITY Omega "&#937;"> <!ENTITY mu "&#956;"> <!ENTITY alpha "&#945;"> <!ENTITY beta "&#946;"> <!ENTITY gamma "&#947;"> <!ENTITY degree "&#176;"> <!ENTITY deg "&#176;">]>

<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- December 1st 2005 -->

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
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		<tr bgcolor="#F0F0F0">
			<td height="18" class="PF"><div align="center">
				<B>Properties</B> | 
				<A HREF="..\other\{atomicno}.htm">More Info</A> |
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
      		<td width="85%" height="18" valign="middle" class="JF"><b><xsl:value-of select="name"/>&nbsp;[<xsl:value-of select="symbol"/>]</b>&nbsp;&nbsp;<A HREF="flash:{atomicno}"><IMG SRC="..\showme.png" border="0" alt="locate me"/></A>&nbsp;&nbsp;<A HREF="sfx:{$boing}"><IMG SRC="..\say.png" border="0" alt="say me"/></A></td>
      		<td width="15%" rowspan="5" valign="middle" bgcolor="#FFFFFF" class="JF"><div align="center"><img src="../../media/images/{atomicno}v.gif"/></div></td>
		</tr>
		<tr>		
			<xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#42FF13</xsl:if>
  		    	<xsl:if test="@type='1'">#1BFFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#A39FFF</xsl:if>
  		    	<xsl:if test="@type='3'">#3DC851</xsl:if>
  		    	<xsl:if test="@type='4'">#C8B5DC</xsl:if>
  		    	<xsl:if test="@type='5'">#E3A4AB</xsl:if>
  		    	<xsl:if test="@type='6'">#E4B06B</xsl:if>
  		    	<xsl:if test="@type='7'">#F0E888</xsl:if>
  		    	<xsl:if test="@type='8'">#C9C5FF</xsl:if>
  		    	<xsl:if test="@type='9'">#C5C5C5</xsl:if>
  		    	<xsl:if test="@type='10'">#D7D7D7</xsl:if>
      		</xsl:attribute>
      		<td height="18" class="JF">CAS-ID: <xsl:value-of select="casid"/></td>
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#52FF27</xsl:if>
  		    	<xsl:if test="@type='1'">#3AFFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#ABA7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#4DCD60</xsl:if>
  		    	<xsl:if test="@type='4'">#CDBBDF</xsl:if>
  		    	<xsl:if test="@type='5'">#E5ACB2</xsl:if>
  		    	<xsl:if test="@type='6'">#E6B777</xsl:if>
  		    	<xsl:if test="@type='7'">#F1EA92</xsl:if>
  		    	<xsl:if test="@type='8'">#CDCAFF</xsl:if>
  		    	<xsl:if test="@type='9'">#CACACA</xsl:if>
  		    	<xsl:if test="@type='10'">#DADADA</xsl:if>
      		</xsl:attribute>		
			<td height="18" class="JF"><a href="..\glossary\an.htm"><b>An:</b></a>&nbsp;<xsl:value-of select="atomicno"/>&nbsp;<a href="..\glossary\neutron.htm"><b>N:</b></a>&nbsp;<xsl:value-of select="neutrons"/></td>
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#62FF3B</xsl:if>
  		    	<xsl:if test="@type='1'">#58FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#B3AFFF</xsl:if>
  		    	<xsl:if test="@type='3'">#5DD16E</xsl:if>
  		    	<xsl:if test="@type='4'">#D1C1E2</xsl:if>
  		    	<xsl:if test="@type='5'">#E7B3B9</xsl:if>
  		    	<xsl:if test="@type='6'">#E8BD84</xsl:if>
  		    	<xsl:if test="@type='7'">#F2EC9C</xsl:if>
  		    	<xsl:if test="@type='8'">#D2CFFF</xsl:if>
  		    	<xsl:if test="@type='9'">#CFCFCF</xsl:if>
  		    	<xsl:if test="@type='10'">#DEDEDE</xsl:if>
      		</xsl:attribute>		
      		<td height="18" class="JF"><a href="..\glossary\am.htm"><b>Am:</b></a>&nbsp;<xsl:value-of select="atomicweight"/> g/mol</td>
		</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#72FF4F</xsl:if>
  		    	<xsl:if test="@type='1'">#74FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#BAB7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#6ED67D</xsl:if>
  		    	<xsl:if test="@type='4'">#D6C7E5</xsl:if>
  		    	<xsl:if test="@type='5'">#EABBC0</xsl:if>
  		    	<xsl:if test="@type='6'">#EAC490</xsl:if>
  		    	<xsl:if test="@type='7'">#F3EEA6</xsl:if>
  		    	<xsl:if test="@type='8'">#D6D4FF</xsl:if>
  		    	<xsl:if test="@type='9'">#D4D4D4</xsl:if>
  		    	<xsl:if test="@type='10'">#E1E1E1</xsl:if>
      		</xsl:attribute>		
      		<td height="18" class="JF">
        	<xsl:if test="groupno!=''">
          		<b>Group No:</b>&nbsp;<xsl:value-of select="groupno"/>
        	</xsl:if>    
        	</td>    	
		</tr>
		<TR>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#82FF62</xsl:if>
  		    	<xsl:if test="@type='1'">#8FFFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#C2BFFF</xsl:if>
  		    	<xsl:if test="@type='3'">#7EDA8B</xsl:if>
  		    	<xsl:if test="@type='4'">#DACEE8</xsl:if>
  		    	<xsl:if test="@type='5'">#ECC2C7</xsl:if>
  		    	<xsl:if test="@type='6'">#EDCA9D</xsl:if>
  		    	<xsl:if test="@type='7'">#F5F0B0</xsl:if>
  		    	<xsl:if test="@type='8'">#DBD9FF</xsl:if>
  		    	<xsl:if test="@type='9'">#D9D9D9</xsl:if>
  		    	<xsl:if test="@type='10'">#E4E4E4</xsl:if>
      		</xsl:attribute>		
			<td colspan="2" height="18" class="JF">
			<xsl:if test="groupname!=''">
          		<b>Group Name:</b>&nbsp;<xsl:value-of select="groupname"/>
        	</xsl:if>
    		</td>
    	</TR>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#91FF76</xsl:if>
  		    	<xsl:if test="@type='1'">#A7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#CAC7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#8EDF9A</xsl:if>
  		    	<xsl:if test="@type='4'">#DFD4EB</xsl:if>
  		    	<xsl:if test="@type='5'">#EECACE</xsl:if>
  		    	<xsl:if test="@type='6'">#EFD1A9</xsl:if>
  		    	<xsl:if test="@type='7'">#F6F2BA</xsl:if>
  		    	<xsl:if test="@type='8'">#DFDDFF</xsl:if>
  		    	<xsl:if test="@type='9'">#DDDDDD</xsl:if>
  		    	<xsl:if test="@type='10'">#E8E8E8</xsl:if>
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
  		    	<xsl:if test="@type='0'">#A1FF8A</xsl:if>
  		    	<xsl:if test="@type='1'">#BDFFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#D1CFFF</xsl:if>
  		    	<xsl:if test="@type='3'">#9EE4A9</xsl:if>
  		    	<xsl:if test="@type='4'">#E4DAEE</xsl:if>
  		    	<xsl:if test="@type='5'">#F1D2D5</xsl:if>
  		    	<xsl:if test="@type='6'">#F1D8B5</xsl:if>
  		    	<xsl:if test="@type='7'">#F7F4C4</xsl:if>
  		    	<xsl:if test="@type='8'">#E4E2FF</xsl:if>
  		    	<xsl:if test="@type='9'">#E2E2E2</xsl:if>
  		    	<xsl:if test="@type='10'">#EBEBEB</xsl:if>
      		</xsl:attribute>		
      		<td colspan="2" height="18" class="JF"><b>State:</b>&nbsp;<xsl:value-of select="state"/></td>
   		</tr>
   		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#B1FF9E</xsl:if>
  		    	<xsl:if test="@type='1'">#D1FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#D9D7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#AFE8B7</xsl:if>
  		    	<xsl:if test="@type='4'">#E8E0F0</xsl:if>
  		    	<xsl:if test="@type='5'">#F3D9DC</xsl:if>
  		    	<xsl:if test="@type='6'">#F3DEC2</xsl:if>
  		    	<xsl:if test="@type='7'">#F8F5CE</xsl:if>
  		    	<xsl:if test="@type='8'">#E8E7FF</xsl:if>
  		    	<xsl:if test="@type='9'">#E7E7E7</xsl:if>
  		    	<xsl:if test="@type='10'">#EEEEEE</xsl:if>
      		</xsl:attribute>   		
      		<td colspan="2" height="18" class="JF"><b>Colour:</b>&nbsp;<xsl:value-of select="colour"/>&nbsp;<b>Classification:</b>&nbsp;<xsl:value-of select="classification"/></td>
    	</tr>
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#C1FFB1</xsl:if>
  		    	<xsl:if test="@type='1'">#E1FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#E1DFFF</xsl:if>
  		    	<xsl:if test="@type='3'">#BFEDC6</xsl:if>
  		    	<xsl:if test="@type='4'">#EDE6F3</xsl:if>
  		    	<xsl:if test="@type='5'">#F5E1E3</xsl:if>
  		    	<xsl:if test="@type='6'">#F6E5CE</xsl:if>
  		    	<xsl:if test="@type='7'">#FAF7D8</xsl:if>
  		    	<xsl:if test="@type='8'">#EDECFF</xsl:if>
  		    	<xsl:if test="@type='9'">#ECECEC</xsl:if>
  		    	<xsl:if test="@type='10'">#F2F2F2</xsl:if>
      		</xsl:attribute>		
			<xsl:choose>
			<xsl:when test="boiling!='unknown'">
      			<td colspan="2" height="18" class="JF"><a href="..\glossary\bp.htm"><b>Boiling Point:</b></a>&nbsp;<xsl:value-of select="boiling"/>K&nbsp;(<xsl:value-of select="boilingC"/>)</td>
      		</xsl:when>
      		<xsl:otherwise>
      			<td colspan="2" height="18" class="JF"><a href="..\glossary\bp.htm"><b>Boiling Point:</b></a>&nbsp;unknown</td>
      		</xsl:otherwise>
      		</xsl:choose>
    	</tr>	    
		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#D1FFC5</xsl:if>
  		    	<xsl:if test="@type='1'">#EEFFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#E8E7FF</xsl:if>
  		    	<xsl:if test="@type='3'">#CFF1D4</xsl:if>
  		    	<xsl:if test="@type='4'">#F1EDF6</xsl:if>
  		    	<xsl:if test="@type='5'">#F8E8EA</xsl:if>
  		    	<xsl:if test="@type='6'">#F8EBDB</xsl:if>
  		    	<xsl:if test="@type='7'">#FBF9E2</xsl:if>
  		    	<xsl:if test="@type='8'">#F1F1FF</xsl:if>
  		    	<xsl:if test="@type='9'">#F1F1F1</xsl:if>
  		    	<xsl:if test="@type='10'">#F5F5F5</xsl:if>
      		</xsl:attribute>		
	   		<xsl:choose>
			<xsl:when test="melting!='unknown'">
      			<td colspan="2" height="18" class="JF"><a href="..\glossary\mp.htm"><b>Melting Point:</b></a>&nbsp;<xsl:value-of select="melting"/>K&nbsp;(<xsl:value-of select="meltingC"/>) <xsl:value-of select="melting/@note"/></td>
      		</xsl:when>
      		<xsl:otherwise>
      			<td colspan="2" height="18" class="JF"><a href="..\glossary\mp.htm"><b>Melting Point:</b></a>&nbsp;unknown</td>
      		</xsl:otherwise>
      		</xsl:choose>
    	</tr>
    	<xsl:if test="critical!=0">
    		<tr>
  		    	<xsl:attribute name="bgcolor">
	  		    	<xsl:if test="@type='0'">#D1FFC5</xsl:if>
  			    	<xsl:if test="@type='1'">#EEFFFF</xsl:if>
  			    	<xsl:if test="@type='2'">#E8E7FF</xsl:if>
  		    		<xsl:if test="@type='3'">#CFF1D4</xsl:if>
  		    		<xsl:if test="@type='4'">#F1EDF6</xsl:if>
	  		    	<xsl:if test="@type='5'">#F8E8EA</xsl:if>
  			    	<xsl:if test="@type='6'">#F8EBDB</xsl:if>
  			    	<xsl:if test="@type='7'">#FBF9E2</xsl:if>
  		    		<xsl:if test="@type='8'">#F1F1FF</xsl:if>
  		    		<xsl:if test="@type='9'">#F1F1F1</xsl:if>
  		    		<xsl:if test="@type='10'">#F5F5F5</xsl:if>
      			</xsl:attribute>		
      			<td colspan="2" height="18" class="JF"><a href="..\glossary\ct.htm"><b>Critical temperature:</b></a>&nbsp;<xsl:value-of select="critical"/>K&nbsp;(<xsl:value-of select="criticalC"/>&degree;C)</td>
    		</tr>
    	</xsl:if>
		<xsl:if test="data/criticalpressure!=0">
    		<tr>
  		    	<xsl:attribute name="bgcolor">
	  		    	<xsl:if test="@type='0'">#D1FFC5</xsl:if>
  			    	<xsl:if test="@type='1'">#EEFFFF</xsl:if>
  			    	<xsl:if test="@type='2'">#E8E7FF</xsl:if>
  		    		<xsl:if test="@type='3'">#CFF1D4</xsl:if>
  		    		<xsl:if test="@type='4'">#F1EDF6</xsl:if>
	  		    	<xsl:if test="@type='5'">#F8E8EA</xsl:if>
  			    	<xsl:if test="@type='6'">#F8EBDB</xsl:if>
  			    	<xsl:if test="@type='7'">#FBF9E2</xsl:if>
  		    		<xsl:if test="@type='8'">#F1F1FF</xsl:if>
  		    		<xsl:if test="@type='9'">#F1F1F1</xsl:if>
  		    		<xsl:if test="@type='10'">#F5F5F5</xsl:if>
      			</xsl:attribute>		
      			<td colspan="2" height="18" class="JF"><a href="..\glossary\ct.htm"><b>Critical pressure:</b></a>&nbsp;<xsl:value-of select="data/criticalpressure"/> MPa</td>
    		</tr>
    	</xsl:if>    	
    	<xsl:if test="supercon!=0">
    		<tr>
  		    	<xsl:attribute name="bgcolor">
	  		    	<xsl:if test="@type='0'">#D1FFC5</xsl:if>
  			    	<xsl:if test="@type='1'">#EEFFFF</xsl:if>
  			    	<xsl:if test="@type='2'">#E8E7FF</xsl:if>
  		    		<xsl:if test="@type='3'">#CFF1D4</xsl:if>
  		    		<xsl:if test="@type='4'">#F1EDF6</xsl:if>
	  		    	<xsl:if test="@type='5'">#F8E8EA</xsl:if>
  			    	<xsl:if test="@type='6'">#F8EBDB</xsl:if>
  			    	<xsl:if test="@type='7'">#FBF9E2</xsl:if>
  		    		<xsl:if test="@type='8'">#F1F1FF</xsl:if>
  		    		<xsl:if test="@type='9'">#F1F1F1</xsl:if>
  		    		<xsl:if test="@type='10'">#F5F5F5</xsl:if>
      			</xsl:attribute>		
      			<td colspan="2" height="18" class="JF"><a href="..\glossary\supercon.htm"><b>Superconducting temperature:</b></a>&nbsp;<xsl:value-of select="supercon"/>K&nbsp;(<xsl:value-of select="superconC"/>&degree;C) <xsl:value-of select="superconC/@note"/></td>
    		</tr>
    	</xsl:if>    	
	    <xsl:for-each select="density">
    		<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="../@type='0'">#E0FFD9</xsl:if>
  		    	<xsl:if test="../@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="../@type='2'">#F0EFFF</xsl:if>
  		    	<xsl:if test="../@type='3'">#E0F6E3</xsl:if>
  		    	<xsl:if test="../@type='4'">#F6F3F9</xsl:if>
  		    	<xsl:if test="../@type='5'">#FAF0F1</xsl:if>
  		    	<xsl:if test="../@type='6'">#FAF2E7</xsl:if>
  		    	<xsl:if test="../@type='7'">#FCFBEC</xsl:if>
  		    	<xsl:if test="../@type='8'">#F6F5FF</xsl:if>
  		    	<xsl:if test="../@type='9'">#F5F5F5</xsl:if>
  		    	<xsl:if test="../@type='10'">#F8F8F8</xsl:if>
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
  		    	<xsl:if test="@type='0'">#E0FFD9</xsl:if>
  		    	<xsl:if test="@type='1'">#F7FFFF</xsl:if>
  		    	<xsl:if test="@type='2'">#F0EFFF</xsl:if>
  		    	<xsl:if test="@type='3'">#E0F6E3</xsl:if>
  		    	<xsl:if test="@type='4'">#F6F3F9</xsl:if>
  		    	<xsl:if test="@type='5'">#FAF0F1</xsl:if>
  		    	<xsl:if test="@type='6'">#FAF2E7</xsl:if>
  		    	<xsl:if test="@type='7'">#FCFBEC</xsl:if>
  		    	<xsl:if test="@type='8'">#F6F5FF</xsl:if>
  		    	<xsl:if test="@type='9'">#F5F5F5</xsl:if>
  		    	<xsl:if test="@type='10'">#F8F8F8</xsl:if>
      		</xsl:attribute>		    
          		<td colspan="2" height="18" class="JF"><b>Density:</b>&nbsp;<xsl:value-of select="densityg"/>g/l</td>
        	</tr>
    	</xsl:if>
    	        
	  	<xsl:if test="availability!=''">
			<tr>
  		    <xsl:attribute name="bgcolor">
  		    	<xsl:if test="@type='0'">#F0FFED</xsl:if>
  		    	<xsl:if test="@type='1'">#FFFFFF</xsl:if>
  		    	<xsl:if test="@type='2'">F8F7FF</xsl:if>
  		    	<xsl:if test="@type='3'">F0FAF1</xsl:if>
  		    	<xsl:if test="@type='4'">FAF9FC</xsl:if>
  		    	<xsl:if test="@type='5'">FCF8F8</xsl:if>
  		    	<xsl:if test="@type='6'">FCF9F3</xsl:if>
  		    	<xsl:if test="@type='7'">FDFDF6</xsl:if>
  		    	<xsl:if test="@type='8'">FAFAFF</xsl:if>
  		    	<xsl:if test="@type='9'">FAFAFA</xsl:if>
  		    	<xsl:if test="@type='10'">FCFCFC</xsl:if>
      		</xsl:attribute>			
    		 	<td colspan="2" height="18" class="JF"><b>Availability:</b>&nbsp;<xsl:value-of select="availability"/></td>
    		</tr>
    	</xsl:if>	
          
       	<TR><TD><IMG SRC="..\spacer_pixel.gif" height="10"/></TD></TR>
		</TABLE>
		<table>
		<TR>
			<TD class="H1"><img src="..\bluecube.gif"/>Discovery Information</TD>
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
	
		<tr><td class="H1"><img src="..\bluecube.gif"/>Name Origin</td></tr>
		<tr><td class="JF"><xsl:apply-templates select="origin"/></td></tr>
		<tr><td>&nbsp;<A class="small" HREF="..\names\{atomicno}.htm">"<xsl:value-of select="name" />" in different languages.</A></td></tr>
		<tr><td></td></tr>

		<xsl:apply-templates select="sources"/>

		<tr><td></td></tr>

		<xsl:if test="abundance!=''">
			<TR><td class="H1"><img src="..\bluecube.gif"/>Abundance</td></TR>
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
			
		</BODY></HTML>
	</xsl:document>
</xsl:template>

<xsl:template match="history">
	<tr>
	<td class="H1"><img src="..\bluecube.gif"/>History</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="notes">
	<tr>
	<td class="H1"><img src="..\bluecube.gif"/>Notes</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="sources">
	<tr>
	<td class="H1"><img src="..\bluecube.gif"/>Sources</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="hazard">
	<tr>
	<td class="H1"><img src="..\bluecube.gif"/>Hazards</td>
	</tr>
	<xsl:for-each select="ptext">
		<tr><td class="JF"><xsl:apply-templates select="." /></td></tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="uses">
	<tr>
	<td class="H1"><img src="..\bluecube.gif"/>Uses</td>
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

<xsl:template match="glink"><a class="glink" href="..\glossary\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="blink"><a class="blink" href="..\biography\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="wlink"><a class="wlink" href="http://{@ref}" target="_blank"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="ilink"><a class="blink" href="..\isotope\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

<xsl:template match="slink"><a class="slink" href="..\country\{@ref}.htm"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>