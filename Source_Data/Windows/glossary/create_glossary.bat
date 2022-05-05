java -jar ..\saxon.jar glossary.xml create_glossary.xsl

java -jar ..\saxon.jar glossary.xml create_glossary_index_az.xsl >idx_glossary.htm

java -jar ..\saxon.jar glossary.xml create_glossarytext.xsl >glossarytext.txt

pause