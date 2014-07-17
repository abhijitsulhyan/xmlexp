<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0" >

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/hello">
        <html>
			<head>
				<title>XSLT to XHTML via XProc</title>
			</head>
			<body>
				<pre>
					<xsl:value-of select="." />
				</pre>
			</body>
		</html>
    </xsl:template>

    <xsl:template match="Title">
        <li>
            <xsl:value-of select="." />
        </li>
    </xsl:template>

</xsl:stylesheet>
