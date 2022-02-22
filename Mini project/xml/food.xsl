<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Menu</title>
        </head>
        <body STYLE="font-family:Arial, helvetica, sans-serif; font-size:12pt;
        background-color:#FFC254">
            <h1 Style ="text-align:center">Breakfast Menu</h1>
            <table border="10" STYLE="margin-left: auto;
            margin-right: auto;" >
                <tr STYLE="background-color:black; color:white; padding:10px">
                <th STYLE="text-align:center; padding:10px">Food Items</th>
                <th STYLE="text-align:center; padding:20px">Price in ₹</th>
                </tr><xsl:for-each select="menu/breakfast_menu/food">
                <tr STYLE="text-align:center; padding:10px">
                <td STYLE="text-align:center; padding:10px">
                <xsl:value-of select="name"/>
                </td>
                <td STYLE="text-align:center; padding:10px">
                <xsl:value-of select="price"/>
                </td>
                </tr>
                </xsl:for-each>
                </table>
                <h1 Style ="text-align:center">Lunch Menu</h1>
                <table border="10" STYLE="margin-left: auto;
                margin-right: auto;" >
                    <tr STYLE="background-color:black; color:white; padding:10px">
                    <th STYLE="text-align:center; padding:10px">Food Items</th>
                    <th STYLE="text-align:center; padding:20px">Price in ₹</th>
                    </tr><xsl:for-each select="menu/Lunch/food">
                    <tr STYLE="text-align:center; padding:10px">
                    <td STYLE="text-align:center; padding:10px">
                    <xsl:value-of select="name"/>
                    </td>
                    <td STYLE="text-align:center; padding:10px">
                    <xsl:value-of select="price"/>
                    </td>
                    </tr>
                    </xsl:for-each>
                    </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>