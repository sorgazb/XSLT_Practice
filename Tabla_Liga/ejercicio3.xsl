<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Clasificación de la Liga de Fútbol</title>
            </head>
            <body>
            <p>Lista ordenada de alfabeticamente de los equipos que han marcado mas de 25 goles:</p>
                <ol>
                    <xsl:for-each select="liga/equipo">
                        <xsl:sort select="@nombre"/>
                        <xsl:if test="goles_a_favor &gt;'25'">
                            <li><xsl:value-of select="@nombre"></xsl:value-of>(<xsl:value-of select="goles_a_favor"/>)</li>
                        </xsl:if>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>