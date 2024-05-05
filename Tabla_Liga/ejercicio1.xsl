<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Clasificación de la Liga de Fútbol</title>
                <style type="text/css"> 
                    table { border-collapse: collapse; width: 60%; margin:auto} 
                    td {border: 1px solid black; padding: 8px; text-align: left;font-size:18px} 
                    th{background-color:#f22525; color:#ffffff;border: 1px solid black; padding: 8px; text-align: center;font-family: "Arial";font-size:20px} 
                    h1{text-align:center}
                </style>
            </head>
            <body> 
                <h1>Clasificación de la Liga de Fútbol </h1> 
                <table>
                    <tr>
                        <th>Posición</th>
                        <th>Equipo</th>
                        <th>Puntos</th>
                        <th>PG</th>
                        <th>PE</th>
                        <th>PP</th>
                        <th>Goles a favor</th>
                        <th>Goles en contra</th>
                    </tr>
                    <xsl:for-each select="liga/equipo">
                        <xsl:sort select="puntos" data-type="number" order="descending"/>
                        <tr>
                            <td>
                                <xsl:number value="position()" format="1" />
                            </td>
                            <td>
                                <xsl:value-of select="@nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="puntos" />
                            </td>
                            <td>
                                <xsl:value-of select="partidosganados" />
                            </td>
                            <td>
                                <xsl:value-of select="partidosempatados" />
                            </td>
                            <td>
                                <xsl:value-of select="partidosperdidos" />
                            </td>
                            <td>
                                <xsl:value-of select="goles_a_favor" />
                            </td>
                            <td>
                                <xsl:value-of select="goles_en_contra" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 