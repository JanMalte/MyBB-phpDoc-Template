
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" method="html" />
    <xsl:include href="layout.xsl" />

    <!-- Body text that is inserted into the layout -->
    <xsl:template match="/project" mode="contents">
        <xsl:variable name="element" select="/project/file[@path=$path]" />

        <div class="row">
            <div class="well span12">
                <span class="label">Source code</span>
                <h1>                
                    <xsl:value-of select="$path" />
                </h1>
                <p>
                    <div class="btn-group">
                        <a class="btn btn-primary active" target="_blank" href="#inline-source">Show source code inline</a>
                        <a class="btn" href="{$root}source/{$path}.html">Show source code in new window</a>
                    </div>
                </p>
            </div>
        </div>
        <div class="row" id="inline-source">
            <iframe src="{$root}source/{$path}.html" frameborder="0" class="span12 well" height="600">
            <div id="loading-error" class="alert alert-error hidden">
                The source could not be loaded.<br />
                <a href="{$root}source/{$path}.html">
                    Click here
                </a>
                to view the source code.
            </div>
            </iframe>
        </div>
    </xsl:template>

</xsl:stylesheet>