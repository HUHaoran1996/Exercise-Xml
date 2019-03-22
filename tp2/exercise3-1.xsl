<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Thu Nov 22 22:36:45 CET 2018 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<body>
				<h2>My Breakfast Menu</h2>
				<div style="width: 500px">
                    <div style="background-color: #128082;color:white">
                        <h3>
                            <xsl:value-of select="breakfast_menu/food[position()=1]/name"/> -
                            <span style="font-weight: normal;">
                                <xsl:value-of select="breakfast_menu/food[position()=1]/price"/>
                            </span>
                        </h3>
                    </div>
                    <div style="background-color: white;color:black">
                        <p>
                            <xsl:value-of select="breakfast_menu/food[position()=1]/description"/>
                            <xsl:value-of select="breakfast_menu/food[position()=1]/calories"/> (calories par serving)
                        </p>
                    </div>
                    <div style="background-color: #128082;color:white">
                        <h3>
                            <xsl:value-of select="breakfast_menu/food[position()=2]/name"/> -
                            <span style="font-weight: normal;">
                                <xsl:value-of select="breakfast_menu/food[position()=2]/price"/>
                            </span>
                        </h3>
                    </div>
                    <div style="background-color: white;color:black">
                        <p>
                            <xsl:value-of select="breakfast_menu/food[position()=2]/description"/>
                            <xsl:value-of select="breakfast_menu/food[position()=2]/calories"/> (calories par serving)
                        </p>
                    </div>
                    <div style="background-color: #128082;color:white">
                        <h3>
                            <xsl:value-of select="breakfast_menu/food[position()=3]/name"/> -
                            <span style="font-weight: normal;">
                                <xsl:value-of select="breakfast_menu/food[position()=3]/price"/>
                            </span>
                        </h3>
                    </div>
                    <div style="background-color: white;color:black">
                        <p>
                            <xsl:value-of select="breakfast_menu/food[position()=3]/description"/>
                            <xsl:value-of select="breakfast_menu/food[position()=3]/calories"/> (calories par serving)
                        </p>
                    </div>
                </div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
