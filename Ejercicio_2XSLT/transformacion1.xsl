<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Práctica de transformación</title>
            </head>
            <body>
                <ol>
                    <xsl:for-each select="bib/libro/autor">
                        <xsl:sort select="apellido" />
                        <li>
                            <xsl:value-of select="apellido" />
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 