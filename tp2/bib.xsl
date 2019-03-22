<?xml version="1.0" encoding="UTF-8"?>

<!-- New XSLT document created with EditiX XML Editor (http://www.editix.com) at Sat Nov 24 17:30:34 CET 2018 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<body>
				<div style="width: 600px">
					<h1 align="left">Domaines</h1>
					<xsl:for-each select="bib/domain">
						<div>
							<h3>
								<a href="#bib/domain/bib_ref/title">
									<xsl:value-of select="bib/domain/bib_ref/title"/>
								</a>
							</h3>
						</div>
						
					</xsl:for-each>
				</div>
				<div style="width: 600px">
					<xsl:for-each select="bib/domain">
						<div>
							<a name="bib/domain/bib_ref/title">
								<h3>
									<xsl:value-of select="bib/domain/bib_ref/title"/>
								</h3>
							</a>
							
							<xsl:for-each select="bib/domain/bib_ref">
								<h3>
									<xsl:value-of select="bib/domain/bib_ref/title"/>
								</h3>
								<p>Auteur(s): <xsl:value-of select="bib/domain/bib_ref/author"/>
								</p>
								<p>Année: <xsl:value-of select="bib/domain/bib_ref/year"/>
								</p>
								<p>Lien: <a href="bib/domain/bib_ref/weblink">
										<xsl:value-of select="bib/domain/bib_ref/weblink"/>
									</a>
								</p>
								<p>Commentaires: </p>
								<br/>
							</xsl:for-each>
							
						</div>
					</xsl:for-each>
				</div>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
