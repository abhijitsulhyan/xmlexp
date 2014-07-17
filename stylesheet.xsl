<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0" >

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/Document">
		<hello><xsl:value-of select="." /></hello>
    </xsl:template>

    <xsl:template match="Title">
        <li>
            <xsl:value-of select="." />
        </li>
    </xsl:template>

</xsl:stylesheet>