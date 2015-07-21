<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="html" indent="yes" />
    
    <xsl:template match="/">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
            <html lang="en">
            <head>
                <title>Battle of Fallen Timbers Eyewitness Accounts</title>
                <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
                <link rel="stylesheet" type="text/css" href="css/ftaccounts.css" />
            </head>
            <body>
                <!-- Static navbar (Bootstrap) -->
                <nav class="navbar navbar-default navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            Fallen Timbers Battle Accounts
                        </div>
                        <div id="navbar" class="nav navbar-nav navbar-right">
                            <ul class="nav navbar-nav">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="ftoutputs.html">Summary</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                
                <div class="container">
                    <xsl:apply-templates/>
                </div>
            </body>
            </html>
    </xsl:template>
    
    <xsl:template match="bibInfo">
        <div class="img-thumbnail">
            <h3><xsl:value-of select="pubAuthor"/></h3>
        </div>
    </xsl:template>
</xsl:stylesheet>