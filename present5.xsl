<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Αξιοθέατα με απαιτούμενη κράτηση</title>
        <style>
          body { font-family: Arial; background-color: #f0f8ff; }
          h2 { color: #003366; }
          ul { list-style-type: square; }
        </style>
      </head>
      <body>
        <h2>Αξιοθέατα που απαιτούν κράτηση</h2>
        <ul>
          <xsl:for-each select="//Attraction[@booking='required']">
            <li>
              <xsl:value-of select="Attraction_title" />
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>