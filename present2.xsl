<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Sorted Attractions</title>
        <style>
          body { font-family: Verdana; background-color: #f9f9f9; }
          h2 { text-align: center; color: #2c3e50; }
          ul { list-style-type: square; width: 50%; margin: auto; padding: 0; }
          li { padding: 5px; font-size: 16px; color: #333; }
        </style>
      </head>
      <body>
        <h2>Attractions Sorted Alphabetically</h2>
        <ul>
          <xsl:apply-templates select="//Attraction">
            <xsl:sort select="Attraction_title" data-type="text" order="ascending"/>
          </xsl:apply-templates>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Attraction">
    <li>
      <xsl:value-of select="Attraction_title"/>
    </li>
  </xsl:template>

</xsl:stylesheet>