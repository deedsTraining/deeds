<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
  xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Sitemap</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body { margin-top:20px; font-family:Helvetica, Arial, sans-serif; text-align:center}
#content {margin:0 auto; width:600px; text-align:left}
h1 { font-size: 120%; padding-bottom: 0px; margin-bottom: 0px }
ul { list-style:none }
</style>
</head>
<body>
<div id="content">
<h1><a href="http://www.utoronto.ca/deeds/">The DEEDS Project</a></h1>
<p>This sitemap contains <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> pages.</p>
<ul>
<xsl:for-each select="sitemap:urlset/sitemap:url">
<xsl:variable name="itemURL">
<xsl:value-of select="sitemap:loc"/>
</xsl:variable>
<li><a href="{$itemURL}">
<xsl:value-of select="sitemap:loc"/>
</a></li>
</xsl:for-each>
</ul>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
