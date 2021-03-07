<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <results>
            <xsl:value-of select="result/items/item/description"/>
            <itm>
                <xsl:copy-of select="identifier"/>
            </itm>
            <fore>
                <xsl:for-each select="result/items/item/description/item[@lang = es or @lang = eu]"/>
            </fore>
            <sort>
                <xsl:for-each select="result/items/item/distribution/item">
                    <xsl:sort select="format"/>
                    <xsl:value-of select="format"/>
                    <xsl:value-of select="accessURL"/>
                </xsl:for-each>
            </sort>
            <copy>
            <xsl:copy>
                <xsl:element name="language">
                    <xsl:value-of select="@lang"/>
                </xsl:element>
            </xsl:copy>
            </copy>
        </results>
    </xsl:template>
</xsl:stylesheet>