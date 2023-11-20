<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="url"/>
    <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="en-US">
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="refresh" content="0; url={$url}"/>
                <script type="text/javascript">
                    <xsl:text>window.location.href = "</xsl:text>
                    <xsl:value-of select="$url"/>
                    <xsl:text>"</xsl:text>
                </script>
                <title>Page Redirection</title>
            </head>
            <body>
                If you are not redirected automatically, follow this <a href="{$url}">link</a>.
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>