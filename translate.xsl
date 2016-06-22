<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!--
       Файл-конектор для языковых файлов (*_lang.xsl) проекта
       (Физ лица в Юр лицах)
       в старой ветке шаблонов P24 Юр. лица.

       !!!! Используется !!!!
    -->


    <xsl:template name="translate">
		<xsl:param name="key" select="'title'"/>
		<xsl:choose>
			<xsl:when test="//locale/@language='uk'">
				<xsl:call-template name="uk"><xsl:with-param name="node_name" select="$key"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="//locale/@language='en'">
				<xsl:call-template name="en"><xsl:with-param name="node_name" select="$key"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="//locale/@language='ka'">
				<xsl:call-template name="ka"><xsl:with-param name="node_name" select="$key"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="//locale/@language='el'">
				<xsl:call-template name="el"><xsl:with-param name="node_name" select="$key"/></xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="ru"><xsl:with-param name="node_name" select="$key"/></xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>