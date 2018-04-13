<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
      </head>
      <body style="margin:25px">
        <div name="container" style="width:1200px, background-color:grey, text-align:center" >
          <div name="Garages" style="width:700px ,background-color:red;">
          <H1>Garages</H1>
          <div name="garage">
          <xsl:for-each select="GARAGES/GARAGE">
            <div name="adres" style="width:600, text-align:left">
              <h2 style="margin-bottom:-5px">Garage</h2>
              <p >
				<b>Garage: </b><xsl:value-of select="ADRES/GARAGENAAM"/><br/>
                <b>Straat: </b><xsl:value-of select="ADRES/STRAAT"/><br />
                <b>Huisnummer: </b><xsl:value-of select="ADRES/STRAATNR"/><br />
                <b>Postcode: </b><xsl:value-of select="ADRES/POSTCODE"/><br />
                <b>Provincie: </b><xsl:value-of select="ADRES/PROVINCIE"/>
              </p>
            </div>
			<br />
			<div name="contact" style="text-align:left, width:600px">
              <h2 style="margin-bottom:-5px">Contact</h2>
              <p >
                <b>Email: </b><xsl:value-of select="EMAIL"/><br />
                <b>Website: </b><xsl:value-of select="WEBSITE"/><br />
                <b>Omschrijving: </b><xsl:value-of select="OMSCHRIJVING"/><br />
                <b>Routebeschrijving: </b><xsl:value-of select="ROUTEBESCHRIJVING"/>
              </p>
            </div>
			<br />
			<div name="fotos" style="text-align:left, width:600px">
              <h2 style="margin-bottom:-5px">Foto's</h2>
              <p>
                <img src="FOTO.jpg"></img>
              </p>
            </div>
			<br />
			<div name="OpeningstijdenWerk" style="text-align:left, width:600px">
              <h2 style="margin-bottom:25px">Openingstijden Werkplaats</h2>
			<table border="2px" style="text-align:left">
			  <tr>
				<th>Dag</th>
				<th>Tijden</th>
			  </tr>
			  <tr>
				<td><b>Maandag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/WERKPLAATS/DAGEN/MAANDAG"/></td>
			</tr>
			<tr>
				<td><b>Dinsdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/WERKPLAATS/DAGEN/DINSDAG"/></td>
			</tr>
			<tr>
				<td><b>Woensdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/WERKPLAATS/DAGEN/WOENSDAG"/></td>
			</tr>
			<tr>
				<td><b>Donderdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/WERKPLAATS/DAGEN/DONDERDAG"/></td>
			</tr>
			<tr>
				<td><b>Vrijdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/WERKPLAATS/DAGEN/VRIJDAG"/></td>
			</tr>
			<tr>
				<td><b>Zaterdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/WERKPLAATS/DAGEN/ZATERDAG"/></td>
			</tr>
			<tr>
				<td><b>Zondag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/WERKPLAATS/DAGEN/ZONDAG"/></td>
			  </tr>
			</table>
            </div>
			<br/>
			<div name="OpeningstijdenVerk" style="text-align:left, width:600px, float:left">
              <h2 style="margin-bottom:25px">Openingstijden Occasion</h2>
              <table border="2px" style="text-align:left">
			  <tr>
				<th>Dag</th>
				<th>Tijden</th>
			  </tr>
			  <tr>
				<td><b>Maandag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/VERKOOP/DAGEN/MAANDAG"/></td>
			</tr>
			<tr>
				<td><b>Dinsdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/VERKOOP/DAGEN/DINSDAG"/></td>
			</tr>
			<tr>
				<td><b>Woensdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/VERKOOP/DAGEN/WOENSDAG"/></td>
			</tr>
			<tr>
				<td><b>Donderdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/VERKOOP/DAGEN/DONDERDAG"/></td>
			</tr>
			<tr>
				<td><b>Vrijdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/VERKOOP/DAGEN/VRIJDAG"/></td>
			</tr>
			<tr>
				<td><b>Zaterdag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/VERKOOP/DAGEN/ZATERDAG"/></td>
			</tr>
			<tr>
				<td><b>Zondag</b></td>
				<td><xsl:value-of select="OPENINGSTIJDEN/VERKOOP/DAGEN/ZONDAG"/></td>
			  </tr>
			 </table>
            </div>
			<br />
			<div name="informatie" style="text-align:left, width:600px">
              <h2 style="margin-bottom:-5px">Informatie</h2>
              <p><b>Bovag: </b><xsl:value-of select="BOVAG"/></p>
              <p><b>Auto Lenen: </b><xsl:value-of select="AUTOLENEN"/></p>
              <p><b>Auto Huren: </b><xsl:value-of select="AUTOHUREN"/></p>
            </div>
			<br />
			<div name="medewerkers" style="text-align:left, width:600px">
              <h2 style="margin-bottom:-5px">Medewerkers</h2>
              <xsl:for-each select="MEDEWERKERS/MEDEWERKER">
				<p><b>Naam: </b><xsl:value-of select="MEDEWERKER_NAAM"/></p>
				<p><b>Functie: </b><xsl:value-of select="MEDEWERKER_FUNCTIE"/></p>
				<img src="FOTO_pieter.jpg"></img>
			  </xsl:for-each>
            </div>
			<br />
			<div name="dealer" style="text-align:left, width:600px">
              <h2 style="margin-bottom:-5px">DealerShip</h2> 
              <xsl:for-each select="DEALER">
				<p><b>Merken: </b>
				<xsl:value-of select="MERK"/>
				<xsl:if test="position() != last()">
					<xsl:text>,</xsl:text>
				</xsl:if>
				</p>
			  </xsl:for-each>
            </div>
			<br />
          </xsl:for-each>
          </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

