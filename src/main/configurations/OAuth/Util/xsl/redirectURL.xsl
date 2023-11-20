<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="baseURL"/>
	<xsl:param name="client_id"/>
	<xsl:param name="OAuthRedirectURI"/>
	<xsl:param name="state"/>

	<xsl:output method="text"/>

	<xsl:template match="/">
		<xsl:variable name="OAuthRedirectURIEscaped" select="encode-for-uri($OAuthRedirectURI)"/>
		<xsl:value-of select="concat($baseURL,
									'?response_type=code&amp;state=',
									$state,
									'&amp;client_id=',
									$client_id,
									'&amp;scope=read%20write%20offline&amp;redirect_uri=',
									$OAuthRedirectURIEscaped)"/>
	</xsl:template>

</xsl:stylesheet>