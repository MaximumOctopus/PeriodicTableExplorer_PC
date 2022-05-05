java -jar ..\saxon.jar ..\biogs\biogs.xml create_biog.xsl

java -jar ..\saxon.jar ..\biogs\biogs.xml create_biographytext.xsl >biographytext.txt

java -jar ..\saxon.jar ..\biogs\biogs.xml create_biography_index.xsl >idx_biog.htm

pause