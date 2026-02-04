<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <attractions_to_see>
      <xsl:for-each select="//Attraction">
        <attraction>
          <title>
            <xsl:value-of select="Attraction_title"/>
          </title>
          
          <highlights>
            <xsl:for-each select="doing/Highlights/Highlight">
              <highlight>
                <xsl:value-of select="."/>
              </highlight>
            </xsl:for-each>
          </highlights>

          <address>
            <xsl:value-of select="Address"/>
          </address>
        </attraction>
      </xsl:for-each>
    </attractions_to_see>
  </xsl:template>
</xsl:stylesheet>