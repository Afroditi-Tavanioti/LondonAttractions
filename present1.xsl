<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Attractions Info</title>
        <style>
          table { border-collapse: collapse; width: 80%; margin: auto; font-family: Arial; }
          th, td { border: 1px solid black; padding: 8px; text-align: center; }
          th { background-color: #f2f2f2; color: #333; }
          h1 { text-align: center; font-family: Arial; }
        </style>
      </head>
      <body>
        <h1>Attractions Table</h1>
        <table>
          <tr>
            <th>Attraction Title</th>
            <th>Booking Required</th>
            <th>Normal Price (£)</th>
          </tr>
          <xsl:apply-templates select="//Attraction"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Attraction">
    <tr>
      <td><xsl:value-of select="Attraction_title"/></td>
      <td><xsl:value-of select="@booking"/></td>
      <td><xsl:value-of select="@normal_value"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>