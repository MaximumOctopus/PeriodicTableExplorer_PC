<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY Idash "&#237;"> <!ENTITY OSlash "&#248;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- February 11th 2007 -->

<xsl:template match="word">	
    <xsl:param name="boing" select="atomicno"/>
	<xsl:document href="{concat('pages\',$boing, '.htm')}">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="element.css"/>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		<tr bgcolor="#F0F0F0">
			<td height="18" class="JX"><div align="center">
				<A HREF="..\elements\{atomicno}.htm">Properties</A> |
				<A HREF="..\other\{atomicno}.htm">More Info</A> |
    	  		<A HREF="..\isotope\{atomicno}.htm">Isotopes</A> |
    	  		<xsl:if test="name/@allotrope!='n'">
    	 			<A HREF="..\allotrope\{atomicno}.htm">Allotropes</A> |
	    		</xsl:if>
	      		<A HREF="..\spectra\{atomicno}.htm">Spectra</A>
	      	  </div></td>
	    </tr>
		<tr bgcolor="#F0EDED">
    	  <td height="18" class="JX"><div align="center"><A HREF="..\compound\{atomicno}.htm">Compounds</A> | <A HREF="..\reactions\{atomicno}.htm">Reactions</A> | <A HREF="..\production\{atomicno}.htm">Production</A></div></td>
	    </tr>
		<tr bgcolor="#F0EAEA">
    	  <td height="18" class="JX"><div align="center">Atomic: <A HREF="..\atomic\mac{atomicno}.htm">M.A.C.</A> | <A HREF="..\atomic\{atomicno}.htm">Reference</A></div></td>
	    </tr>
    	<tr bgcolor="#F0E7E7">
      		<td height="18" class="JX"><div align="center"><a href="electron:{atomicno}">Shell Structure diagram</a> | <a href="atomicradius:{atomicno}">Atomic Radius diagram</a></div></td>
    	</tr>
    	</TABLE>
    			
		<TABLE width="100%" class="JF">
			<tr bgcolor="#EEEEEE"><TD colspan="2">As "<xsl:value-of select="uk" />" is known around the world...</TD></tr>
			<TR bgcolor="#F3F8F4"><TD class="JF"><img src="cr.gif" /> Croat</TD><TD class="JX"><xsl:value-of select="cr" /></TD></TR>
			<TR><TD><img src="cz.gif" /> Czech</TD><TD class="JX"><xsl:value-of select="cz" /></TD></TR>
			<TR bgcolor="#F3F8F4"><TD class="JF" width="100"><img src="nl.gif" /> Dutch</TD><TD class="JX"><xsl:value-of select="nl" /></TD></TR>
			<TR><TD><img src="uk.gif" /> English</TD><TD class="JX"><xsl:value-of select="uk" /></TD></TR>
			<TR bgcolor="#F3F8F4"><TD class="JF" width="100"><img src="fr.gif" /> French</TD><TD class="JX"><xsl:value-of select="fr" /></TD></TR>
			<TR><TD><img src="de.gif" /> German</TD><TD class="JX"><xsl:value-of select="de" /></TD></TR>
			<TR bgcolor="#F3F8F4"><TD class="JF" width="100"><img src="it.gif" /> Italian</TD><TD class="JX"><xsl:value-of select="it" /></TD></TR>
			<TR><TD><img src="ln.gif" /> Latin</TD><TD class="JX"><xsl:value-of select="ln" /></TD></TR>
			<TR bgcolor="#F3F8F4"><TD class="JF" width="100"><img src="nw.gif" /> Norwegian</TD><TD class="JX"><xsl:value-of select="nw" /></TD></TR>
			<TR><TD><img src="pt.gif" /> Portugese</TD><TD class="JX"><xsl:value-of select="pt" /></TD></TR>
			<TR bgcolor="#F3F8F4"><TD class="JF" width="100"><img src="es.gif" /> Spanish</TD><TD class="JX"><xsl:value-of select="es" /></TD></TR>
			<TR><TD><img src="sw.gif" /> Swedish</TD><TD class="JX"><xsl:value-of select="sw" /></TD></TR>
		</TABLE>		
		</BODY></HTML>
	</xsl:document>
</xsl:template>

</xsl:stylesheet>