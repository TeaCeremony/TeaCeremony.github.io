<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <div>
    <h2>MAP proteins</h2>
    <table border="0">
      <tr>
        <th bgcolor="#E7FFCC">Group number</th>
        <th bgcolor="#D2FBFF">Proteins</th>
      </tr>
      <xsl:for-each select="group_list/protein_group">
        <tr>
          <td>
            <xsl:number />
          </td>
          <td>
          <xsl:for-each select="protein">
            <xsl:value-of select="@name"/><xsl:text>&#160;</xsl:text>
          </xsl:for-each>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </div>
</xsl:template>

</xsl:stylesheet>