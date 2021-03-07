<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/videojoc">
        <title>
            <xsl:value-of select="title"/>
        </title>
        <game>
            <xsl:value-of select="videojoc"/>
        </game>
        <characters>
            <xsl:value-of select="personatges"/>
        </characters>
        <characters>
            <xsl:attribute name="id">
                <xsl:value-of select="personatges"/>
            </xsl:attribute>
        </characters>
        <pisos>
                <xsl:value-of select="@num"/>
        </pisos>
        <hope_pick_academi>
            <xsl:value-of select="academia_pic_esperanca"/>
        </hope_pick_academi>
        <release_date>
            <xsl:value-of select="data_publicacio"/>
        </release_date>
        <developers>
            <xsl:value-of select="desenvolupadors"/>
        </developers>
        <producers>
            <xsl:value-of select="productors"/>
        </producers>
        <screenwriter>
            <xsl:value-of select="guionista"/>
        </screenwriter>
    </xsl:template>

</xsl:stylesheet>
    <!--
</xsl:template>
<xsl:template match="/videojoc">
    <reorder>
        <xsl:apply-templates select="videojoc">
            <xsl:sort select="videojoc" order="ascending"/>
        </xsl:apply-templates>
    </reorder>
    -->
