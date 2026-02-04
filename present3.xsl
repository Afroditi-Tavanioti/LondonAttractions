<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Expensive Attractions</title>
        <style>
          body { font-family: Arial, sans-serif; background-color: #f0f8ff; padding: 20px; }
          h2 { text-align: center; color: #2c3e50; }
          table { width: 80%; margin: auto; border-collapse: collapse; background-color: #fff; }
          th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
          th { background-color: #2980b9; color: white; }
          tr:nth-child(even) { background-color: #f2f2f2; }
        </style>
      </head>
      <body>
        <h2>London Attractions with Ticket Price Over £38.00</h2>
        <table>
          <tr>
            <th>Attraction Title</th>
            <th>Description</th>
            <th>Normal Price (£)</th>
            <th>URL</th>
          </tr>

          <!-- Filter + Sort -->
          <xsl:for-each select="//Attraction[number(@normal_value) &gt; 38.00]">
            <xsl:sort select="@normal_value" data-type="number" order="descending"/>
            <tr>
              <td><xsl:value-of select="Attraction_title"/></td>
              <td><xsl:value-of select="small_description"/></td>
              <td><xsl:value-of select="@normal_value"/></td>
              <td><a href="{URL}" target="_blank"><xsl:value-of select="URL"/></a></td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>