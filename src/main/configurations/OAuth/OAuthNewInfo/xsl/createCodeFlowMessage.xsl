<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="system_id"/>

	<xsl:template match="/">
		<root>
			<system_id><xsl:value-of select="$system_id"/></system_id>
			<xsl:copy-of select="root/(client_id,client_secret)"/>
		</root>
	</xsl:template>
</xsl:stylesheet>