<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>

<xsl:template match="movies/element/movielist/movie">
	<xsl:param name="boing" select="../../an"/>
	<xsl:document href="{concat('video\',$boing, '.htm')}">
		<HTML><HEAD>
		<style type="text/css">
		<xsl:comment>		
		A.wlink:link {color:#000000; text-decoration: none}
		A.wlink:visited {color:#000000; text-decoration: none}
		A.wlink:hover {color:#FF0000; text-decoration: underline}
		A.wlink:active {color:#000000; text-decoration: none}	
		.cats {color:#cccccc}
		tr {font-family: sans-serif}
		</xsl:comment>
		</style>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		<tr bgcolor="#F0F0F0"></tr>		
		<tr>
    		<td>
    			<div align="center">
    				<object width="425" height="344">
    					<param name="movie" value="http://www.youtube.com/v/{url}"></param>
    					<embed src="http://www.youtube.com/v/{url}" type="application/x-shockwave-flash" allowfullscreen="false" width="425" height="344"></embed>
    				</object>
    			</div>
    		</td>
  		</tr>
  		<TR><td>&nbsp;</td></TR>
  		<TR align="center"><td><xsl:apply-templates select="ptxt" /></td></TR>
		<TR><td>&nbsp;</td></TR>
		<TR align="center"><td class="cats">Link: http://www.youtube.com/v/<xsl:value-of select="url"/></td></TR>
  		</TABLE>
		
		</BODY></HTML>
	</xsl:document>
	
	<xsl:document href="{concat('video\s',$boing, '.htm')}">
		<HTML><HEAD>
		<link type="text/css" rel="stylesheet" href="element.css"/>
		</HEAD>
		<BODY leftmargin="3" topmargin="2">
		<TABLE width="100%">
		<tr bgcolor="#F0F0F0">
			<td height="18" class="PF"><div align="center">
				<A HREF="..\elements\{$boing}.htm">Properties</A> |
				<A HREF="..\other\{$boing}.htm">More Info</A> |
    	  		<A HREF="..\isotope\{$boing}.htm">Isotopes</A> |
    	  		<xsl:if test="name/@allotrope!='n'">
    	 			<A HREF="..\allotrope\{$boing}.htm">Allotropes</A> |
	    		</xsl:if>
	      		<A HREF="..\spectra\{$boing}.htm">Spectra</A>
	      	  </div></td>
	    </tr>
		<tr bgcolor="#F0EDED">
    	  <td height="18" class="JX"><div align="center"><A HREF="..\compound\{$boing}.htm">Compounds</A> | <A HREF="..\reactions\{$boing}.htm">Reactions</A> | <A HREF="..\production\{$boing}.htm">Production</A> | <B>Video</B></div></td>
	    </tr>
		<tr bgcolor="#F0EAEA">
    	  <td height="18" class="JX"><div align="center">Atomic: <A HREF="..\atomic\mac{$boing}.htm">M.A.C.</A> | <A HREF="..\atomic\{$boing}.htm">Reference</A></div></td>
	    </tr>
    	<tr bgcolor="#F0E7E7">
      		<td height="18" class="JX"><div align="center">Diagrams: <a href="electron:{$boing}">Shell</a> | <a href="atomicradius:{$boing}">Atomic Radius</a> | <a href="energy:{$boing}">Electron</a> || <a href="image:{$boing}">Images</a></div></td>
    	</tr>
    	</TABLE>		
		<TABLE width="100%" class="JZ">
		<tr bgcolor="#F0F0F0"></tr>		
		<tr>
    		<td>
    			<div align="center">
    				<object width="336" height="278">
    					<param name="movie" value="http://www.youtube.com/v/{url}&amp;color1=0xcc2550&amp;color2=0xe87a9f"></param>
    					<embed src="http://www.youtube.com/v/{url}" type="application/x-shockwave-flash" allowfullscreen="false" width="336" height="278"></embed>
    				</object>
    			</div>
    		</td>
  		</tr>
  		<TR><td>&nbsp;</td></TR>
  		<TR align="center"><td><xsl:apply-templates select="ptxt" /></td></TR>
  		</TABLE>

		</BODY></HTML>
	</xsl:document>	
</xsl:template>

<xsl:template match="wlink"><a class="wlink" href="http://{@ref}" target="_blank"><xsl:value-of select="."/></a></xsl:template>

</xsl:stylesheet>