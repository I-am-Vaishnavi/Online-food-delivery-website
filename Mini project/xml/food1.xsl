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
        <h1 STYLE="text-align:center">Best Foods in Madurai</h1>
            <h2 Style ="text-align:center">Dinner</h2>
            <table border="10" STYLE="margin-left: auto;
            margin-right: auto;" >
                <tr STYLE="background-color:black; color:white; padding:20px">
                <th STYLE="text-align:center; padding:30px">Food Items</th>
                <th STYLE="text-align:center; padding:30px">Price in ₹</th>
                </tr><xsl:for-each select="menu/dinner/food">
                <tr STYLE="text-align:center; padding:0px 60px">
                <td STYLE="text-align:center; padding:0px 60px">
                <xsl:value-of select="name"/>
                </td>
                <td STYLE="text-align:center; padding:10px">
                <xsl:value-of select="price"/>
                </td>
                </tr>
                </xsl:for-each>
                </table>
                <h2 Style ="text-align:center">Dessert</h2>
                <table border="10" STYLE="margin-left: auto;
                margin-right: auto;" >
                    <tr STYLE="background-color:black; color:white; padding:10px">
                    <th STYLE="text-align:center; padding:30px">Food Items</th>
                    <th STYLE="text-align:center; padding:30px">Price in ₹</th>
                    </tr><xsl:for-each select="menu/dessert/food">
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