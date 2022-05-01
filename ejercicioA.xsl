<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercico A</title>
            </head>
            <body>
                <h1>Ejercicio A</h1>
                <table border="1">
                    <tr bgcolor="#CCFFFF">
                        <th style="text-align:left">Identificador</th>
                        <th style="text-align:left">Titulo</th>
                        <th style="text-align:left">Fecha</th>
                    </tr>
                    <xsl:for-each select="raíz/registro">
                        <tr>
                            <td><xsl:value-of select="identificador"/></td>
                            <td><xsl:value-of select="título"/></td>
                            <td><xsl:value-of select="fecha/día"/>/<xsl:value-of select="fecha/mes"/>/<xsl:value-of select="fecha/año"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>