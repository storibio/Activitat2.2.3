<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <xsl:for-each select="videojoc">
            <etiquetas>
                <game>
                    <xsl:value-of select="videojoc"/>
                </game>
                <release_date>
                    <xsl:value-of select="data_publicacio"/>
                </release_date>
                <producers>
                    <xsl:value-of select="productors"/>
                </producers>
                <screenwriter>
                    <xsl:value-of select="guionista"/>
                </screenwriter>
                <developers>
                    <xsl:value-of select="desenvolupadors"/>
                </developers>
                <characters>
                    <xsl:value-of select="personatges"/>
                </characters>
                <hope_pick_academi>
                    <xsl:value-of select="academia_pic_esperanca"/>
                </hope_pick_academi>
            </etiquetas>
            <attr>
                <xsl:attribute name="sex">
                    <xsl:value-of select="@sexe"/>
                </xsl:attribute>
                <xsl:attribute name="alive">
                    <xsl:value-of select="@vivo"/>
                </xsl:attribute>
                <xsl:attribute name="unit">
                    <xsl:value-of select="@unitat"/>
                </xsl:attribute>
            </attr>
        </xsl:for-each>
    </xsl:template>
<xsl:template match="/videojoc/data_publicacio">
    <dates>
        <xsl:attribute name="year">
            <xsl:value-of select="any"/>
        </xsl:attribute>
        <xsl:attribute name="month">
            xsl:<xsl:value-of select="mes"/>
        </xsl:attribute>
        <xsl:attribute name="day">
            <xsl:value-of select="dia"/>
        </xsl:attribute>
    </dates>
</xsl:template>
    <xsl:template match="/videojoc/productors">
        <productor>
        <xsl:value-of select="producer"/>
        </productor>
        <nom>
        <xsl:value-of select="name"/>
        </nom>
    </xsl:template>
    <xsl:template match="/videojoc/personatges">
        <xsl:attribute name="sex">
            <xsl:value-of select="@sexe"/>
        </xsl:attribute>
        <xsl:attribute name="alive">
            <xsl:value-of select="@vivo"/>
        </xsl:attribute>
        <xsl:attribute name="unit">
            <xsl:value-of select="@unitat"/>
        </xsl:attribute>
        <name>
            <xsl:value-of select="nom"/>
        </name>
        <age>
            <xsl:value-of select="edat"/>
        </age>
        <weight>
            <xsl:value-of select="pes"/>
        </weight>
        <height>
            <xsl:value-of select="altura"/>
        </height>
    </xsl:template>
</xsl:stylesheet>