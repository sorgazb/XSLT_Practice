<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Clasificación de la Liga de Fútbol</title>
            </head>
            <body>
            <p>Equipo que mas goles ha marcado:</p>
                <xsl:for-each select="liga/equipo">
                    <xsl:sort select="goles_a_favor" data-type="number" order="descending"/>
                    <xsl:if test="position() ='1'">
                        <xsl:value-of select="@nombre"></xsl:value-of> (<xsl:value-of select="goles_a_favor"/>)
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 