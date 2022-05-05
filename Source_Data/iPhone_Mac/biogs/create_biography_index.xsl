<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet	version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	xmlns="http://www.w3.org/TR/REC-html40">
<xsl:output method="html"/>
<!-- June 1st 2004 PAF -->

<xsl:template match="elementbiog">
	<HTML><HEAD><TITLE>Biography Page</TITLE>
	<style type="text/css">
	<xsl:comment>
	A:link {color:#000000; text-decoration: none}
	A:visited {color:#000000; text-decoration: none}
	A:hover {color:#FF0000; text-decoration: underline}
	A:active {color:#FF000; text-decoration: none}
	.JX {font-family: Verdana; font-size:16pt; color:#000000;}
	.JF {font-family: Verdana; font-size:12pt; color:#000000;}
	.JZ {font-family: Verdana; font-size:10pt; color:#BBBBBB;}
	.JQ {font-family: Verdana; font-size:10pt; color:#444444;}
	</xsl:comment>
	</style></HEAD>
	<BODY leftmargin="1" topmargin="1"><TABLE width="100%" cellspacing="0">
	<TR><TD class="JX" align="center"><A NAME="top" />
	<xsl:for-each select="biog[@type='astop']">
		<a href="#{bentry}"><xsl:value-of select="bentry" />&nbsp;</a>
	</xsl:for-each>
	</TD>
	</TR>
	
	<xsl:for-each select="biog">
		<xsl:if test="@type='entry'">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1">
					<tr><td bgcolor="#F3F8F4">
					<SPAN class="JF">&nbsp;&nbsp;<img src="bluecube.gif"/><a href="b{ab}.htm"><xsl:value-of select="bentry"/></a></SPAN></td></tr>
					<tr><td bgcolor="#F3F8F4">
					<SPAN class="JQ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<xsl:value-of select="birth"/>)</SPAN></td></tr>
					</xsl:when>		
				<xsl:otherwise>
					<tr><td>
					<SPAN class="JF">&nbsp;&nbsp;<img src="bluecube.gif"/><a href="b{ab}.htm"><xsl:value-of select="bentry"/></a></SPAN></td></tr>
					<tr><td>
					<SPAN class="JQ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<xsl:value-of select="birth"/>)</SPAN></td></tr>
					</xsl:otherwise>	
			</xsl:choose>		
		</xsl:if>
		<xsl:if test="@type='astop'">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 1">
					<tr><td bgcolor="#F3F8F4">
					<SPAN class="JF"><a name="{bentry}"/><img src="greencube.gif"/><xsl:value-of select="bentry"/></SPAN>&nbsp;&nbsp;<SPAN class="JZ"><A HREF="#top">[top]</A></SPAN></td></tr>
				</xsl:when>		
				<xsl:otherwise>
					<tr><td>
					<SPAN class="JF"><a name="{bentry}"/><img src="greencube.gif"/><xsl:value-of select="bentry"/></SPAN>&nbsp;&nbsp;<SPAN class="JZ"><A HREF="#top">[top]</A></SPAN></td></tr>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:for-each>
	
	</TABLE></BODY></HTML>
</xsl:template>

</xsl:stylesheet>