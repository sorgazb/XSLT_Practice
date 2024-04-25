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
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Editor</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo" />
                            <tr>
                            <xsl:choose>
                                <xsl:when test="precio &gt; '100'">
                                    <td style="color: red;">
                                        <xsl:value-of select="concat(titulo, ' ', '(Caro)')" />
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="concat(nombre, ' ', apellido)" /> 
                                <xsl:if
                                        test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="concat(nombre, ' ', apellido, ' ',afiliacion)" /> 
                                <xsl:if
                                        test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>