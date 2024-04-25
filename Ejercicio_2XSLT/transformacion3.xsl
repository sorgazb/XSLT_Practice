<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Práctica de transformación</title>
            </head>
            <body>
                <table border="2">
                    <tr>
                        <th>Precio</th>
                        <th>Título</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" />
                        <tr>
                            
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                            <xsl:choose>
                                <xsl:when test="precio &gt; '100'">
                                    <td style="color: red;">
                                        <xsl:value-of select="titulo" />
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <th>
                                <xsl:value-of select="@año" />
                            </th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>