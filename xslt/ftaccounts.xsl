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
                    <div class="col-md-7">
                        <h3>
                            <xsl:value-of select="//header"/>
                        </h3>
                        
                        <xsl:if test="//account/opening">
                            <p>
                                <xsl:value-of select="//opening"/> <xsl:text/>
                            </p>
                        </xsl:if>
                    
                        <xsl:for-each select="//para">
                            <p>
                                <xsl:value-of select="."/> <xsl:text/>
                            </p>
                        </xsl:for-each>
                        
                        <xsl:if test="//account/closing">
                            <p>
                                <xsl:value-of select="//closing"/> <xsl:text/>
                            </p>
                        </xsl:if>
                        
                        <xsl:if test="//account/postscript">
                            <p>
                                <xsl:value-of select="//postscript"/> <xsl:text/>
                            </p>
                        </xsl:if>
                        
                        <xsl:if test="//account/addressee">
                            <p>
                                <xsl:value-of select="//addressee"/> <xsl:text/>
                            </p>
                        </xsl:if>
                    
                        <h3>Source:</h3>
                            <p class="hang">
                                <xsl:value-of select="//pubAuthor/person/pSurname"/>
                                <xsl:if test="//pubAuthor/person/pGiven">
                                    <xsl:text>, </xsl:text>
                                    <xsl:value-of select="//pubAuthor/person/pGiven"/>
                                </xsl:if>
                                <xsl:text>. </xsl:text>                   
                                <xsl:if test="//bibInfo/@format='book'">
                                    <i>
                                        <xsl:value-of select="//pubTitle"/>
                                    </i>
                                    <xsl:text>. </xsl:text>
                                    <xsl:if test="//pubEditor">
                                        <xsl:text>Edited by </xsl:text>
                                        <xsl:value-of select="//pubEditor"/>
                                        <xsl:text>. </xsl:text>
                                    </xsl:if>
                                    <xsl:text>(</xsl:text>
                                    <xsl:if test="//pubPlace">
                                        <xsl:value-of select="//pubPlace/@city"/>
                                        <xsl:text>, </xsl:text>
                                        <xsl:value-of select="//pubPlace/@state"/>
                                        <xsl:text>: </xsl:text>
                                    </xsl:if>
                                    <xsl:value-of select="//pubName"/>
                                    <xsl:text>, </xsl:text>
                                    <xsl:value-of select="//pubDate"/>
                                    <xsl:text>), </xsl:text>
                                    <xsl:value-of select="//pubPage"/>
                                    <xsl:text>.</xsl:text>
                                </xsl:if>
                                <xsl:if test="//bibInfo/@format='article'">
                                    <xsl:text>"</xsl:text>
                                        <xsl:value-of select="//pubTitle"/>
                                    <xsl:text>." </xsl:text>
                                    <xsl:if test="//pubEditor">
                                        <xsl:text>Edited by </xsl:text>
                                        <xsl:value-of select="//pubEditor"/>
                                        <xsl:text>. </xsl:text>
                                    </xsl:if>                        
                                    <i><xsl:value-of select="//pubName"/></i>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="//pubVol"/>
                                    <xsl:if test="//pubIss">
                                        <xsl:text>.</xsl:text>
                                        <xsl:value-of select="//pubIss"/>
                                    </xsl:if>
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="//pubDate"/>
                                    <xsl:text>): </xsl:text>
                                    <xsl:value-of select="//pubPage"/>
                                    <xsl:text>.</xsl:text>
                                </xsl:if>
                            </p>
                    </div>
                
                    <div class="col-md-5 events">
                        <h2>
                            Events:
                        </h2>
                        <xsl:for-each select="//action">
                            <p>
                                <i><xsl:value-of select="@who"/>
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="@actCat"/>
                                <xsl:text>): </xsl:text></i>
                                <xsl:value-of select="."/>
                            </p>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>