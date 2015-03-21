<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates select="books"/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="source">
    <p class="hang">
      <xsl:value-of="@lastName">, <xsl:value-of="@givenName">. <xsl:value-of="title">
    </p>
  </xsl:template>
</xsl:stylesheet>
