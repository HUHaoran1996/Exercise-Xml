<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Fri Nov 23 09:42:41 CET 2018 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<body>
				<h2>My Breakfast Menu</h2>
				<div style="width:500px">
				<xsl:for-each select="breakfast_menu/food">
					<div style="background-color: blue;color:white">
						<h3>
							<xsl:value-of select="breakfast_menu/food/name"/> -
                            <span style="font-weight: normal;">
								<xsl:value-of select="breakfast_menu/food]/price"/>
							</span>
						</h3>
					</div>
					<div style="background-color: white;color:black">
						<p>
							<xsl:value-of select="breakfast_menu/food/description"/>
							<xsl:value-of select="breakfast_menu/food/calories"/> (calories par serving)
                        </p>
					</div>
					</xsl:for-each>
				</div>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
