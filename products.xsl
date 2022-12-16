<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
		<head>
			<link rel="stylesheet" href="lucas.css" />
		</head>
		<body>
			<h2>Product Details</h2>
			<table width="80%">
				<thead>
					<tr class="headerRow">
						<th>#</th>
						<th>Product Name</th>
						<th>Product Description</th>
						<th align="right">Unit Price ($)</th>
						<th>Product Image</th>
					</tr>
				</thead>
				<tbody>
				<xsl:for-each select="/products/record">
					<tr>
						<td align="center"><xsl:value-of select="productNumber"/></td>
						<td><xsl:value-of select="productName"/></td>
						<td><xsl:value-of select="productDescription"/></td>
						<td align="right"><xsl:value-of select="productPrice"/></td>
						<td align="center"><img src="images/{productImage}" width="100" /></td>
					</tr>
				</xsl:for-each>
				</tbody>
			</table>
		</body>
    </html>
  </xsl:template>
</xsl:stylesheet>