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
                    <div class="col-md-5">
                        <h2>Mentions of People</h2>
                    
                        <xsl:apply-templates/>
                    </div>
                    <div class="col-md-7">
                        <h2>Strength of Forces, Casualties, and Destruction</h2>
                        
                        <h3><i>Forces</i></h3>
                        
                        <ul>
                            <xsl:for-each select="//description[@desCat='strength']">
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </xsl:for-each>
                        </ul>
                        
                        
                        <h3><i>Casualties</i></h3>
                        
                        <ul>
                            <xsl:for-each select="//action[@actCat='casualty']">
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </xsl:for-each>
                        </ul>
                        
                        <h3><i>Destruction</i></h3>
                        <ul>
                            <xsl:for-each select="//action[@actCat='destruction']">
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </xsl:for-each>
                        </ul>
                        
                        <h3><i>Landscape</i></h3>
                        <ul>
                            <xsl:for-each select="//description[@desCat='landscape']">
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="bibInfo">      
        <h3>
            <xsl:value-of select="pubAuthor"/>
        </h3>
    </xsl:template>
    <xsl:template match="account">
        <ul>
            <xsl:for-each select="..//person">
            <li>
                <xsl:value-of select="."/>
            </li>
            </xsl:for-each>
        </ul>
    </xsl:template>
        
    <xsl:template match="description">
        
    </xsl:template>
</xsl:stylesheet>