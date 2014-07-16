<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0">
	<xsl:output method="xml" indent="yes" encoding="UTF-8" />
	<!--
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-
		transitional.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//
		EN" indent="yes" />
	-->
	<xsl:template match="/TicketDocument">
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
</xsl:stylesheet>