<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head><title>Práctica de transformación</title></head>
            <body>
                <xsl:for-each select="/ies/ciclos/ciclo">
                    <xsl:sort select="nombre"/>
                    <xsl:value-of select="nombre"/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 