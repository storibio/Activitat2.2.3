<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <results>
        <xsl:value-of select="result/items/item/description"/>
        </results>
    </xsl:template>

</xsl:stylesheet>