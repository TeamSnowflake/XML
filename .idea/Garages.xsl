<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
      </head>
      <body style="margin: 0 auto">
        <div name="container" width="1200 px" style="background-color:grey; text-align:center;" >
          <div name="Garages" width="700 px" style="background-color:red;">
          <H1>Garages</H1>
          <div name="garage">
          <xsl:for-each select="GARAGES/GARAGE">
            <div name="adres" width="600" style="text-align:left;">
              <h2 style="margin-bottom:-5px">Adres</h2>
              <p >
                <b>Straat:</b><xsl:value-of select="ADRES/STRAAT"/><br />
                <b>Straat nummer:</b><xsl:value-of select="ADRES/STRAATNR"/><br />
                <b>Postcode:</b><xsl:value-of select="ADRES/POSTCODE"/>
                <b>Provincie:</b><xsl:value-of select="ADRES/PROVINCIE"/>
              </p>
              <br />
            </div>
          </xsl:for-each>
          </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

