<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<hmtl>
			<head></head>
			<body>
				<h1>Información de la canción</h1>
				<h2>
					<xsl:value-of select="cancion/titulo"/>
				</h2>
				
				<xsl:for-each select"cancion/letra/estrofa"/>
					<xsl:sort select="orden"/>
					<div>
					<xsl:for-each select"verso">
						<p>
						<xsl:value-of select="."/>
						</p>
					</xsl:for-each>
					</div>
				</xsl:for-each>
			</body>
		</hmtl>
	</xsl:template>
</xsl:stylesheet>
