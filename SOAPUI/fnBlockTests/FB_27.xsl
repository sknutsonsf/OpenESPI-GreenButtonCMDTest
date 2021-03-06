<?xml version="1.0" encoding="UTF-16" standalone="yes"?>
<xsl:stylesheet espi:dummy-for-xmlns="" atom:dummy-for-xmlns="" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:espi="http://naesb.org/espi" xmlns:atom="http://www.w3.org/2005/Atom">
<!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. The name or details of 
    this mode may change during 1Q 2007.-->


<!--PHASES-->


<!--PROLOG-->
<xsl:output method="xml" indent="yes" />

<!--KEYS-->


<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->
<xsl:template match="*" mode="schematron-get-full-path">
<xsl:apply-templates select="parent::*" mode="schematron-get-full-path" />
<xsl:text>/</xsl:text>
<xsl:choose>
<xsl:when test="namespace-uri()=''"><xsl:value-of select="name()" /></xsl:when>
<xsl:otherwise>
<xsl:text>*:</xsl:text>
<xsl:value-of select="local-name()" />
<xsl:text>[namespace-uri()='</xsl:text>
<xsl:value-of select="namespace-uri()" />
<xsl:text>']</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:variable name="preceding" select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])" />
<xsl:text>[</xsl:text>
<xsl:value-of select="1+ $preceding" />
<xsl:text>]</xsl:text>
</xsl:template>
<xsl:template match="@*" mode="schematron-get-full-path">
<xsl:apply-templates select="parent::*" mode="schematron-get-full-path" />
<xsl:text>/</xsl:text>
<xsl:choose>
<xsl:when test="namespace-uri()=''">@sch:schema</xsl:when>
<xsl:otherwise>
<xsl:text>@*[local-name()='</xsl:text>
<xsl:value-of select="local-name()" />
<xsl:text>' and namespace-uri()='</xsl:text>
<xsl:value-of select="namespace-uri()" />
<xsl:text>']</xsl:text>
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-2-->
<!--This mode can be used to generate prefixed XPath for humans-->
<xsl:template match="node() | @*" mode="schematron-get-full-path-2">
<xsl:for-each select="ancestor-or-self::*">
<xsl:text>/</xsl:text>
<xsl:value-of select="name(.)" />
<xsl:if test="preceding-sibling::*[name(.)=name(current())]">
<xsl:text>[</xsl:text>
<xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1" />
<xsl:text>]</xsl:text>
</xsl:if>
</xsl:for-each>
<xsl:if test="not(self::*)">
<xsl:text />/@<xsl:value-of select="name(.)" />
</xsl:if>
</xsl:template>

<!--MODE: GENERATE-ID-FROM-PATH -->
<xsl:template match="/" mode="generate-id-from-path" />
<xsl:template match="text()" mode="generate-id-from-path">
<xsl:apply-templates select="parent::*" mode="generate-id-from-path" />
<xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')" />
</xsl:template>
<xsl:template match="comment()" mode="generate-id-from-path">
<xsl:apply-templates select="parent::*" mode="generate-id-from-path" />
<xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')" />
</xsl:template>
<xsl:template match="processing-instruction()" mode="generate-id-from-path">
<xsl:apply-templates select="parent::*" mode="generate-id-from-path" />
<xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')" />
</xsl:template>
<xsl:template match="@*" mode="generate-id-from-path">
<xsl:apply-templates select="parent::*" mode="generate-id-from-path" />
<xsl:value-of select="concat('.@', name())" />
</xsl:template>
<xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
<xsl:apply-templates select="parent::*" mode="generate-id-from-path" />
<xsl:text>.</xsl:text>
<xsl:choose>
<xsl:when test="count(. | ../namespace::*) = count(../namespace::*)">
<xsl:value-of select="concat('.namespace::-',1+count(namespace::*),'-')" />
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')" />
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<!--MODE: GENERATE-ID-2 -->
<xsl:template match="/" mode="generate-id-2">U</xsl:template>
<xsl:template match="*" mode="generate-id-2" priority="2">
<xsl:text>U</xsl:text>
<xsl:number level="multiple" count="*" />
</xsl:template>
<xsl:template match="node()" mode="generate-id-2">
<xsl:text>U.</xsl:text>
<xsl:number level="multiple" count="*" />
<xsl:text>n</xsl:text>
<xsl:number count="node()" />
</xsl:template>
<xsl:template match="@*" mode="generate-id-2">
<xsl:text>U.</xsl:text>
<xsl:number level="multiple" count="*" />
<xsl:text>_</xsl:text>
<xsl:value-of select="string-length(local-name(.))" />
<xsl:text>_</xsl:text>
<xsl:value-of select="translate(name(),':','.')" />
</xsl:template>
<!--Strip characters-->
<xsl:template match="text()" priority="-1" />

<!--SCHEMA METADATA-->
<xsl:template match="/">
<anElement>
<pattern name="" /><xsl:apply-templates select="/" mode="M2" /><pattern name="" /><xsl:apply-templates select="/" mode="M3" />
</anElement>
</xsl:template>

<!--SCHEMATRON PATTERNS-->


<!--PATTERN -->


	<!--RULE -->
<xsl:template match="/atom:feed/atom:entry/atom:content[espi:ElectricPowerUsageSummary | espi:UsageSummary]/child::*" priority="4000" mode="M2">

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="espi:currentDayOverallConsumption/espi:powerOfTenMultiplier" />
<xsl:otherwise>
<assert TestID="D106">
<role></role>
<TestName>ElectricPowerUsageSummary currentDayOverallConsumption</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="espi:peakDemand" />
<xsl:otherwise>
<assert TestID="D105">
<role></role>
<TestName>ElectricPowerUsageSummary peakDemand</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="espi:previousDayOverallConsumption/espi:powerOfTenMultiplier" />
<xsl:otherwise>
<assert TestID="D107">
<role></role>
<TestName>ElectricPowerUsageSummary previousDayOverallConsumption</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="espi:ratchetDemand" />
<xsl:otherwise>
<assert TestID="D103">
<role></role>
<TestName>ElectricPowerUsageSummary ratchetDemand</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="espi:ratchetDemandPeriod" />
<xsl:otherwise>
<assert TestID="D104">
<role></role>
<TestName>ElectricPowerUsageSummary ratchetDemandPeriod</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>
<xsl:apply-templates select="@*|*|comment()|processing-instruction()" mode="M2" />
</xsl:template>
<xsl:template match="text()" priority="-1" mode="M2" />
<xsl:template match="@*|node()" priority="-2" mode="M2">
<xsl:choose>
<!--Housekeeping: SAXON warns if attempting to find the attribute
                           of an attribute-->
<xsl:when test="not(@*)">
<xsl:apply-templates select="node()" mode="M2" />
</xsl:when>
<xsl:otherwise>
<xsl:apply-templates select="@*|node()" mode="M2" />
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<!--PATTERN -->


	<!--RULE -->
<xsl:template match="/atom:feed/atom:entry[*/espi:ElectricPowerUsageSummary]" priority="4000" mode="M3">

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="atom:content/espi:ElectricPowerUsageSummary/espi:currentDayOverallConsumption/espi:powerOfTenMultiplier and atom:content/espi:ElectricPowerUsageSummary/espi:currentDayOverallConsumption/espi:uom" />
<xsl:otherwise>
<assert TestID="D111">
<role></role>
<TestName>currentDayOverallConsumption SummaryMeasurement</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="atom:content/espi:ElectricPowerUsageSummary/espi:peakDemand/espi:powerOfTenMultiplier and atom:content/espi:ElectricPowerUsageSummary/espi:peakDemand/espi:uom" />
<xsl:otherwise>
<assert TestID="D110">
<role></role>
<TestName>peakDemand SummaryMeasurement</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="atom:content/espi:ElectricPowerUsageSummary/espi:previousDayOverallConsumption/espi:powerOfTenMultiplier and atom:content/espi:ElectricPowerUsageSummary/espi:previousDayOverallConsumption/espi:uom" />
<xsl:otherwise>
<assert TestID="D112">
<role></role>
<TestName>previousDayOverallConsumptionSummaryMeasurement</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="atom:content/espi:ElectricPowerUsageSummary/espi:ratchetDemand/espi:powerOfTenMultiplier and atom:content/espi:ElectricPowerUsageSummary/espi:ratchetDemand/espi:uom" />
<xsl:otherwise>
<assert TestID="D108">
<role></role>
<TestName>ratchetDemand SummaryMeasurement</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>

		<!--ASSERT -->
<xsl:choose>
<xsl:when test="atom:content/espi:ElectricPowerUsageSummary/espi:ratchetDemandPeriod/espi:duration and atom:content/espi:ElectricPowerUsageSummary/espi:ratchetDemandPeriod/espi:start" />
<xsl:otherwise>
<assert TestID="D109">
<role></role>
<TestName>ratchetDemandPeriod DateTimeInterval</TestName>
<Report>verify the presence of a valid value</Report>
<diagnostics>for future use</diagnostics>
</assert>
</xsl:otherwise>
</xsl:choose>
<xsl:apply-templates select="@*|*|comment()|processing-instruction()" mode="M3" />
</xsl:template>
<xsl:template match="text()" priority="-1" mode="M3" />
<xsl:template match="@*|node()" priority="-2" mode="M3">
<xsl:choose>
<!--Housekeeping: SAXON warns if attempting to find the attribute
                           of an attribute-->
<xsl:when test="not(@*)">
<xsl:apply-templates select="node()" mode="M3" />
</xsl:when>
<xsl:otherwise>
<xsl:apply-templates select="@*|node()" mode="M3" />
</xsl:otherwise>
</xsl:choose>
</xsl:template>
</xsl:stylesheet>
