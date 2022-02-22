<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Xml</title>
        </head>
        <body>
            <table border="8">
                <tr>
                    <th>Name</th>
                    <th>Reg no</th>
                </tr>
                <xsl:for-each select ="class/student">
                <tr>
                    <td> <xsl:value-of select="name"/></td>
                    <td> <xsl:value-of select="regno"/></td>

                </tr>
            </xsl:for-each>
            </table>
        </body>
    </html></xsl:template>
</xsl:stylesheet>