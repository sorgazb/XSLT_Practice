<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Clasificación de la Liga de Fútbol</title>
            </head>
            <body>
            <p>Lista numerada de los equipos de la Liga ordenados alfabeticamente:</p>
                <ol>
                    <xsl:for-each select="liga/equipo">
                        <xsl:sort select="@nombre"/>
                        <li><xsl:value-of select="@nombre" /></li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 