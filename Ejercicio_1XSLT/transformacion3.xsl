<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head><title>Práctica de transformación</title></head>
            <body>
                <ul>
                    <xsl:for-each select="/ies/ciclos/ciclo">
                        <li><xsl:value-of select="nombre"/> (<xsl:value-of select="grado"/>)</li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>