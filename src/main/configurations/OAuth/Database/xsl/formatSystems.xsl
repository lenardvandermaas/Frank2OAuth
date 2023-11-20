<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes"/>

	<xsl:template match="/">
		<root>
			<xsl:apply-templates select="result/rowset/row"/>
		</root>
	</xsl:template>

	<xsl:template match="row">
		<system>
			<name><xsl:value-of select="field[@name='SYSTEM_NAME']"/></name>
			<displayname><xsl:value-of select="field[@name='DISPLAY_NAME']"/></displayname>
		</system>
	</xsl:template>

</xsl:stylesheet>