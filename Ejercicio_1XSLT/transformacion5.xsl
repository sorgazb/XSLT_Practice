<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head><title>Práctica de transformación</title></head>
            <body>
                <h1><xsl:value-of select="ies/@nombre"/></h1>
                <table border="2">
                    <tr>
                        <th>Nombre Ciclo</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="/ies/ciclos/ciclo">
                        <xsl:sort select="nombre" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <xsl:choose>
                                <xsl:when test="decretoTitulo/@año &gt; 2009">
                                    <td style="color: green;"><xsl:value-of select="decretoTitulo/@año"/></td>
                                </xsl:when>
                                
                                <xsl:when test="decretoTitulo/@año = 2009">
                                    <td style="color: blue;"><xsl:value-of select="decretoTitulo/@año"/></td>
                                </xsl:when>
                                
                                <xsl:when test="decretoTitulo/@año &lt; 2009">
                                    <td style="color: red;"><xsl:value-of select="decretoTitulo/@año"/></td>
                                </xsl:when>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </html>
</xsl:template>
</xsl:stylesheet>