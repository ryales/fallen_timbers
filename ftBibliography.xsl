<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <title>Bibliography</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/ftSite.css" />
      </head>
      <body>
        <xsl:for-each select="xml_files/document(@filename)/ftAccount/bibInfo">
          <p>
            <xsl:value-of select="title"/>
          </p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
