<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" media-type="text/html" doctype-public="" />
    <xsl:variable name="bank" select="//general/@bank"/>
    <xsl:template match="c2b">
        <html>
            <head><meta http-equiv="X-UA-Compatible" content="IE=100" />
                <title>
                    <xsl:choose>
                        <xsl:when test="//info/dump/@prt_type = 'garlist'">
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.btn'"/></xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'print.btn'"/></xsl:call-template>
                        </xsl:otherwise>
                    </xsl:choose>
                </title>
                <script type="text/javascript" language="javascript">

                    <![CDATA[
                        function prn() { i=setTimeout('window.print();',1000); }
	                    ]]>

                </script>
                <style type="text/css">td { font-size: 12px; }
                    .title_wrp {text-align:center;}
                    .list_go {
                    list-style:none;
                    margin:10px;
                    }
                    .after_text {
                    font-weight:bold;
                    text-align:center;
                    }
                    .sign {
                    text-align:center;
                    }
                    .first_par p {
                    margin: 0;
                    }
                    .left_box {
                    float: left;
                    width: 60%;
                    }
                    .right_box {
                    float: right;

                    }
                    .sign > img[alt="sign"] {
                    width: 90px;
                    }
                    .page{
                    width:797px;
                    height:1127px;
                    margin:0;
                    }
                    .footer {
                    position: relative;
                    bottom: 0;
                    width: 100%;
                    height: 50px;
                    color: grey;
                    font-size: 12px;
                    border-top: 1px solid grey;
                    }
                    .cont{
                    height: 1127px;
                    margin-bottom: -50px;
                    }
                    .signAB{
                    text-align:center;
                    margin-right: 100px;
                    height: 83px;
                    width: 160px !important;
                    }
                </style>
            </head>
            <body bgcolor="#FFFFFF" text="#000000" onload="prn();">
                <div class="main_wrap">

                    <xsl:choose>
                        <xsl:when test="//info/dump/@prt_type = 'garlist'">
                            <xsl:call-template name="garlist"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="print_form"/>
                        </xsl:otherwise>
                    </xsl:choose>

                </div>


            </body>
        </html>
    </xsl:template>

    <xsl:template name="print_form">
        <!--определяем тип формы для показа-->
        <!--форма для того банка, в котором обслуживается открывший её клиент-->
        <xsl:variable name="clientType" select="//dump/@oper"/>
        <xsl:variable name="clientBank">
            <xsl:choose>
                <xsl:when test="$clientType='sent'">
                    <!--если oper=sent , значит это форма полученного платежа, смотрим на мфо полученного, если оно 307770 - знач форма абанка-->
                    <!--иначе - приват-->
                    <xsl:choose>
                        <xsl:when test="$bank='TAOPRIVATBANK'">
                            <xsl:value-of select="'TG'"/>
                        </xsl:when>
                        <xsl:when test="//dump/@bgp_b_mfo='307770'">
                            <xsl:value-of select="'AB'"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="'PB'"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <!--тоже самое и для формы отправленного-->
                    <xsl:choose>
                        <xsl:when test="$bank='TAOPRIVATBANK'">
                            <xsl:value-of select="'TG'"/>
                        </xsl:when>
                        <xsl:when test="//dump/@bgp_a_mfo='307770'">
                            <xsl:value-of select="'AB'"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="'PB'"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <style>
            .logo {
            font-size: 13px;
            padding-bottom: 50px;
            }
            .title_b {
            font-size: 20px;
            font-weight: bold;
            }
            .first_text{
            padding: 10px 0;
            }
            .first_table table {
            border-spacing: 0;
            }
            .first_table table td {
            border-bottom: 1px solid grey;
            font-size: 14px;
            }
            .first_table table td:nth-child(1) {
            border-right: 1px solid grey !important;
            }
            .first_table table tr:nth-child(2n+1) {
            background: none repeat scroll 0 0 #e6e6e6;
            }
            .first_par > p {
            padding: 5px 0;
            }

            a {
            color: green;
            }
            .after_text {
            margin: 15px 0 !important;
            font-weight: normal !important;
            text-align: left !important;
            }
            .lastblock {
            margin-top: 40px;
            }
            .predsign {
            float: left;
            }
            <xsl:choose>
                <xsl:when test="$clientBank='AB'">
                    .sign {
                    float: right;
                    margin-top: -30px;
                    }
                </xsl:when>
                <xsl:otherwise>
                    .sign {
                    float: right;
                    margin-top: 30px;
                    }
                </xsl:otherwise>
            </xsl:choose>
        </style>
        <div class="page">
            <div class="cont">
                <xsl:choose>
                    <xsl:when test="$clientBank='TG'">
                        <div class="logo"><img width="200" src="img/logo_wrp_TG.png" alt="logo"/>
                            <br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.1.ge'"/></xsl:call-template><br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.2.ge'"/></xsl:call-template>
                        </div>
                    </xsl:when>
                    <xsl:when test="$clientBank='AB'">
                        <div class="logo"><img width="200" src="img/logo_wrp-AB.png" alt="logo"/>
                            <br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.1'"/></xsl:call-template><br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.2'"/></xsl:call-template>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div class="logo">
                            <xsl:choose>
                                <xsl:when test="info/dump/@bgp_a_mfo!='307770'">
                                    <img width="200" src="img/logo_wrp.png" alt="logo"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <img width="200" src="img/logo_wrp-AB.png" alt="logo"/>
                                </xsl:otherwise>
                            </xsl:choose>
                            <br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.3'"/></xsl:call-template><br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.4'"/></xsl:call-template>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
                <div class="title_b">
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.5'"/></xsl:call-template>
                </div>

                <div class="first_text">
                    <xsl:choose>
                        <xsl:when test="$clientBank='AB'">
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.6'"/></xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.7'"/></xsl:call-template>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.8'"/></xsl:call-template>
                    <xsl:value-of select="info/dump/@dbeg" />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.10'"/></xsl:call-template>
                    <xsl:value-of select="info/dump/@a_name" />
                    (<xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.41'"/></xsl:call-template> <xsl:value-of select="info/dump/@okpopay" />)
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.11'"/></xsl:call-template>
                    <xsl:value-of select="info/dump/@b_name" />
                    (<xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.41'"/></xsl:call-template> <xsl:value-of select="info/dump/@okpo" />)
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.12'"/></xsl:call-template>
                </div>

                <div class="first_table">
                    <table>
                        <tr>
                            <td>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.13'"/></xsl:call-template>
                            </td>
                            <td><xsl:value-of select="info/dump/@bgp_ref" /></td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.14'"/></xsl:call-template>
                            </td>
                            <td><xsl:value-of select="info/dump/@summ" />
                            <xsl:choose>
                                <xsl:when test="info/dump/@bgp_ccy='UAH'">
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.42'"/></xsl:call-template>
                                </xsl:when>
                                <xsl:when test="info/dump/@bgp_ccy='GEL'">
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.42.ge'"/></xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>

                                </xsl:otherwise>
                            </xsl:choose>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.15'"/></xsl:call-template>
                            </td>
                            <td> <xsl:value-of select="info/dump/@dend" /></td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.16'"/></xsl:call-template>
                            </td>
                            <td><xsl:value-of select="info/dump/@a_name" /></td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.17'"/></xsl:call-template>
                            </td>
                            <td><xsl:value-of select="info/dump/@receiver_acc" /></td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.18'"/></xsl:call-template>
                            </td>
                            <td><xsl:value-of select="info/dump/@comm" /></td>
                        </tr>
                    </table>
                </div>



                <div class="first_par">
                    <xsl:if test="not(normalize-space(info/dump/@bgp_gr_acc)='')">
                        <p>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.19'"/></xsl:call-template>
                            <xsl:value-of select="info/dump/@bgp_gr_acc" />
                            (<xsl:value-of select="info/dump/@a_name" />),
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.20'"/></xsl:call-template>
                            <xsl:choose>
                                <xsl:when test="$clientBank='AB'">
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.21'"/></xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.22'"/></xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                            .
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.23'"/></xsl:call-template>
                            <xsl:value-of select="info/dump/@acc" />
                            (<xsl:value-of select="info/dump/@b_name" />)
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.24'"/></xsl:call-template>
                            <xsl:value-of select="info/dump/@dend" />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.43'"/></xsl:call-template>
                            .
                        </p>
                    </xsl:if>
                    <p>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.25'"/></xsl:call-template>
                    </p>
                    <p>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.26'"/></xsl:call-template>
                        <xsl:choose>
                            <xsl:when test="$clientBank='AB'">
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.27'"/></xsl:call-template>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.28'"/></xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.29'"/></xsl:call-template>
                    </p>
                    <p>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.30'"/></xsl:call-template>
                        <xsl:choose>
                            <xsl:when test="$clientBank='TG'">
                                <a target="_blank" href="http://privatbank.ge/gp/">privatbank.ge/gp</a>
                            </xsl:when>
                            <xsl:otherwise>
                                <a target="_blank" href="http://pb.ua/gp">pb.ua/gp</a>
                            </xsl:otherwise>
                        </xsl:choose>
                    </p>
                    <p>
                        <b><xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.31'"/></xsl:call-template></b> <br/>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.32'"/></xsl:call-template>
                        <xsl:choose>
                            <xsl:when test="$clientBank='TG'">
                                <b>(+995) 322 55 44 33</b>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.33.ge'"/></xsl:call-template>
                            </xsl:when>
                            <xsl:otherwise>
                                <b>3700</b>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.33'"/></xsl:call-template>
                                <a href="#" onclick="javascript:window.open('http://pb.ua/gpcorp','_blank','top=100, left=100, width=500, height=700, scrollbars=yes');">pb.ua/gpcorp</a>
                            </xsl:otherwise>
                        </xsl:choose>
                    </p>
                    <div class="lastblock">
                        <div class="predsign">
                            <p class="after_text">
                                <p class="after_text">
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.34'"/></xsl:call-template>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="$clientBank='AB'">
                                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.35'"/></xsl:call-template>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.36'"/></xsl:call-template>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </p>
                            </p>
                        </div>
                        <div class="sign">
                            <xsl:choose>
                                <xsl:when test="$clientBank='TG'">
                                    <!--<img alt="stamp" src="img/stamp-ab-1.gif" />-->
                                    <img alt="sign" src="img/sign_kandaurov_ge.png" />
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.38.ge'"/></xsl:call-template>
                                </xsl:when>
                                <xsl:when test="$clientBank='AB'">
                                    <!--<img alt="stamp" src="img/stamp-ab-1.gif" />-->
                                    <img alt="sign" class="signAB" src="img/AB_sign_Kan.png" />
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.38.ge'"/></xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <!--<img alt="stamp" src="img/stamp-pb-1.gif" />-->
                                    <img alt="sign" src="img/agreement-sign.gif" />
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.38'"/></xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                    </div>
                </div>
            </div>
            <!--Футер только для Украины и А-Банка-->
            <xsl:if test="$clientBank='PB' or $clientBank='AB'">
                <div class="footer">
                    <br/>
                    <xsl:choose>
                        <xsl:when test="$clientBank='AB'">
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.6'"/></xsl:call-template>
                            <br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.39'"/></xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.7'"/></xsl:call-template>
                            <br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.alert.40'"/></xsl:call-template>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
            </xsl:if>
        </div>
    </xsl:template>


    <xsl:template name="garlist">
        <style>
            .logo {
            margin:0 auto;
            width:200px;
            text-align:center;
            }
            .main_wrap {
            width:21cm;
            margin:0 auto;
            }
            body{
            margin-left: 4px;
            margin-top: 4px;
            margin-right: 4px;
            margin-bottom: 0px;
            }
            .first_par.change-gp-order p {
                margin: 16px 0;
            }

        </style>
        <!--Логотип для Грузии-->
        <div class="logo">
            <xsl:choose>
                <xsl:when test="$bank='TAOPRIVATBANK'">
                    <img width="200" src="img/logo_wrp_TG.png" alt="logo"/>
                </xsl:when>
                <xsl:when test="info/dump/@bgp_a_mfo='307770'">
                    <img width="200" src="img/logo_wrp-AB.png" alt="logo"/>
                </xsl:when>
                <xsl:otherwise>
                    <img width="200" src="img/logo_wrp.png" alt="logo" />
                </xsl:otherwise>
            </xsl:choose>
        </div>
        <div class="title_wrp">
            <xsl:choose>
                <xsl:when test="info/dump/@bgcgpop='C'">
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.1'"/></xsl:call-template> </b>
                    <br/>
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.2'"/></xsl:call-template> </b>
                    <br/>
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.3'"/></xsl:call-template> </b>
                </xsl:when>
                <xsl:when test="info/dump/@bgcgpop='D'">
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.1'"/></xsl:call-template> </b>
                    <br/>
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.2'"/></xsl:call-template> </b>
                    <br/>
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.30'"/></xsl:call-template> </b>
                </xsl:when>
                <xsl:otherwise>
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.btn'"/></xsl:call-template> </b>
                    <br/>
                    <b> <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.dog'"/></xsl:call-template> </b>
                </xsl:otherwise>
            </xsl:choose>
        </div>
        <br/>
        <xsl:if test="info/dump/@bgcgpop = 'C'">
            <p>
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.4'"/></xsl:call-template>&#160;
                <xsl:value-of select="info/dump/@bgpbname"/>,&#160;
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                <xsl:value-of select="info/dump/@bgpbcrf"/>&#160;
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.6'"/></xsl:call-template>&#160;
                <xsl:value-of select="info/dump/@bgpaname"/>,&#160;
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                <xsl:value-of select="info/dump/@bgpacrf"/>&#160;
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.7'"/></xsl:call-template>
            </p>
        </xsl:if>
        <xsl:if test="info/dump/@bgcgpop = 'D'">
            <p>
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.4'"/></xsl:call-template>&#160;
                <xsl:value-of select="info/dump/@bgpbname"/>,&#160;
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                <xsl:value-of select="info/dump/@bgpbcrf"/>&#160;
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.6'"/></xsl:call-template>&#160;
                <xsl:value-of select="info/dump/@bgpaname"/>,&#160;
                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.32'"/></xsl:call-template>&#160;
            </p>
        </xsl:if>

        <div class="first_par change-gp-order">
            <xsl:choose>
                <xsl:when test="(info/dump/@bgcgpop = 'C') or (info/dump/@bgcgpop ='D')">
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.9'"/></xsl:call-template>&#160;
                    <xsl:value-of select="info/dump/@bgpref"/>
                    <br />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.10'"/></xsl:call-template>&#160;
                    <xsl:value-of select="info/dump/@bgpdti"/>
                    <br />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.11'"/></xsl:call-template>&#160;
                    <xsl:value-of select="info/dump/@bgpaacc"/>
                    <br />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.12'"/></xsl:call-template>&#160;
                    <xsl:value-of select="info/dump/@bgpaname"/>
                    <br />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.13'"/></xsl:call-template>&#160;
                    <xsl:value-of select="info/dump/@bgpacrf"/>
                    <br />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.14'"/></xsl:call-template>&#160;
                    <xsl:value-of select="info/dump/@bgpgpamt"/>&#160;UAH
                    <br />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.15'"/></xsl:call-template>&#160;
                    <xsl:value-of select="info/dump/@bgcdtp"/>
                    <br />
                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.16'"/></xsl:call-template>
                    <br />
                    <ul class="list_go">
                        <li>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.17'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbacc"/>
                        </li>
                        <li>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.18'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbname"/>
                        </li>
                        <li>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.19'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbcrf"/>
                        </li>
                        <li>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.20'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbmfo"/>
                        </li>
                    </ul>
                    <xsl:if test="info/dump/@bgcgpop = 'C'">
                        <p>
                            <strong>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.22'"/></xsl:call-template>&#160;
                                <xsl:value-of select="concat(substring(info/dump/@bgcdtn,1,2),'.',substring(info/dump/@bgcdtn,4,2),'.',substring(info/dump/@bgcdtn,7,4))"/>
                            </strong>
                        </p>
                        <p>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.23'"/></xsl:call-template>
                        </p>
                        <p>
                            <xsl:value-of select="info/dump/@bgpbname"/>,&#160;
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbcrf"/><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.24'"/></xsl:call-template><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.25'"/></xsl:call-template>&#160;
                            <xsl:value-of select="substring-before(info/dump/@bgcdti, ' ')"/><br />
                        </p>
                        <p>
                            <xsl:value-of select="info/dump/@bgpaname"/>,&#160;
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpacrf"/><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.24'"/></xsl:call-template><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.25'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgcdts"/><br />
                        </p>
                        <p>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.26'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbname"/>&#160;
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbcrf"/>&#160;
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.27'"/></xsl:call-template><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.28'"/></xsl:call-template>&#160;
                            <xsl:value-of select="substring-before(info/dump/@bgcdti, ' ')"/><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.26'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpaname"/>&#160;
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpacrf"/>&#160;
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.27'"/></xsl:call-template><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.28'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgcdts"/>
                        </p>
                    </xsl:if>
                    <xsl:if test="info/dump/@bgcgpop = 'D'">
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.33'"/></xsl:call-template>
                        <p>
                            <xsl:value-of select="info/dump/@bgpbname"/>,&#160;
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.5'"/></xsl:call-template>&#160;
                            <xsl:value-of select="info/dump/@bgpbcrf"/><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.24'"/></xsl:call-template><br />
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.25'"/></xsl:call-template>&#160;
                            <xsl:value-of select="substring-before(info/dump/@bgcdti, ' ')"/>
                        </p>
                        <p>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'gar.order.34'"/></xsl:call-template>&#160;
                            <xsl:value-of select="substring-before(info/dump/@bgcdti, ' ')"/>
                        </p>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>
                    <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.numdoc'"/></xsl:call-template> <xsl:value-of select="info/dump/@numdoc" />;</p>
                    <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.dcreate'"/></xsl:call-template>  <xsl:value-of select="info/dump/@dbeg" />;</p>
                    <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.aacc'"/></xsl:call-template>  <xsl:value-of select="info/dump/@receiver_acc" />;</p>
                    <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.anam'"/></xsl:call-template>  <xsl:value-of select="info/dump/@a_name" />;</p>
                    <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.acrf'"/></xsl:call-template>  <xsl:value-of select="info/dump/@okpopay" />;</p>
                    <!--Ветка для Грузии-->
                    <xsl:choose>
                        <xsl:when test="$bank='TAOPRIVATBANK'">
                            <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.summ'"/></xsl:call-template> <xsl:value-of select="info/dump/@summ" />
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.summlich.ge'"/></xsl:call-template> <xsl:value-of select="info/dump/@summlich" />
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.summcred.ge'"/></xsl:call-template> <xsl:value-of select="info/dump/@summcred" /> GEL;</p>
                        </xsl:when>
                        <xsl:otherwise>
                            <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.summ'"/></xsl:call-template> <xsl:value-of select="info/dump/@summ" />
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.summlich'"/></xsl:call-template> <xsl:value-of select="info/dump/@summlich" />
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.summcred'"/></xsl:call-template> <xsl:value-of select="info/dump/@summcred" /> UAH;</p>
                        </xsl:otherwise>
                    </xsl:choose>
                    <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.datend'"/></xsl:call-template>  <xsl:value-of select="info/dump/@dend" />;</p>
                    <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.datarec'"/></xsl:call-template></p>
                    <ul class="list_go">
                        <li><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.bacc'"/></xsl:call-template>  <xsl:value-of select="info/dump/@acc" />;</li>
                        <li><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.bname'"/></xsl:call-template>   <xsl:value-of select="info/dump/@b_name" />;</li>
                        <li><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.bcrf'"/></xsl:call-template>   <xsl:value-of select="info/dump/@okpo" />;</li>
                        <li><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.bbic'"/></xsl:call-template>   <xsl:value-of select="info/dump/@bgp_b_mfo" />;</li>
                        <li><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.osmd'"/></xsl:call-template>   "<xsl:value-of select="info/dump/@comm" />".</li>
                        <br/>
                    </ul>
                    <p><xsl:choose>
                        <xsl:when test="$bank='TAOPRIVATBANK'">
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text1.ge'"/></xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text1'"/></xsl:call-template><br/>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text1.2'"/></xsl:call-template>
                            <xsl:choose>
                                <xsl:when test="info/dump/@bgp_a_mfo='307770'">
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.textabank'"/></xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.textprivat'"/></xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text1.2.1'"/></xsl:call-template>
                            <xsl:if test="info/dump/@bgp_a_mfo!='307770'">
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text1.2.2'"/></xsl:call-template>
                            </xsl:if>.
                            <p><xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text1.2.3'"/></xsl:call-template>&#160;
                                <xsl:value-of select="info/dump/@dend"/>.
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text1.2.4'"/></xsl:call-template></p>
                        </xsl:otherwise>
                    </xsl:choose></p>
                    <p>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text11'"/></xsl:call-template>
                        <xsl:value-of select="info/dump/@a_name"/>; <xsl:value-of select="info/dump/@okpopay"/>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text2'"/></xsl:call-template>
                        <xsl:choose>
                            <xsl:when test="info/dump/@bgp_a_mfo='307770'">
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.textabank'"/></xsl:call-template>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.textprivat'"/></xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text2.1'"/></xsl:call-template>
                        <xsl:choose>
                            <xsl:when test="info/dump/@bgp_a_mfo='307770'">
                                <xsl:value-of select="'www.a-bank.com.ua'"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="'www.privatbank.ua'"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text2.2'"/></xsl:call-template>
                        <xsl:value-of select="info/dump/@a_name"/>; <xsl:value-of select="info/dump/@okpopay"/>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text3'"/></xsl:call-template> "<xsl:value-of select="info/dump/@comm" />".
                    </p>
                    <br/>
                    <br/>
                </xsl:otherwise>
            </xsl:choose>

            <xsl:if test="not((info/dump/@bgcgpop = 'C') or (info/dump/@bgcgpop ='D'))">
                <div class='left_box'>
                    <xsl:if test="not(info/dump/@bgcgpop)">
                        <p>
                            <xsl:value-of select="info/dump/@a_name"/>; <xsl:value-of select="info/dump/@okpopay"/>
                        </p>
                    </xsl:if>
                    <p>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text4'"/></xsl:call-template>
                    </p>
                    <p>
                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text5'"/></xsl:call-template> <xsl:value-of select="info/dump/@dbeg" /> г.
                    </p>
                    <br/>
                    <!--<p>-->
                    <!--<xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.text6'"/></xsl:call-template>  <xsl:value-of select="info/dump/@dbeg" /> г.-->
                    <!--</p>-->
                </div>
            </xsl:if>
            <div class='right_box'>
                <!--Выделяем штамп только для Украины-->
                <xsl:if test="$bank='PRIVATBANK'">
                <table cellpadding="1" cellspacing="0" style="font-size: 12px; border:solid #000000 2px; margin: 5px;" width="220">
                    <tr>
                        <td align="center">
                            <span class="style1">
                                <xsl:choose>
                                    <xsl:when test="info/dump/@bgp_a_mfo='307770'">
                                        <xsl:value-of select="'А-Банк'"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="'ПриватБанк'"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </span>
                        </td>
                        <td align="center">
                            <span class="style1">
                                <xsl:choose>
                                    <xsl:when test="info/dump/@bgp_a_mfo!=0">
                                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.textmfo'"/></xsl:call-template>
                                    </xsl:when>
                                    <xsl:otherwise>&#160;</xsl:otherwise>
                                </xsl:choose>
                            </span>
                        </td>
                        <td align="center">
                            <span class="style1">
                                <xsl:choose>
                                    <xsl:when test="info/dump/@bgp_a_mfo!=0">
                                        <xsl:value-of select="info/dump/@bgp_a_mfo"/>
                                    </xsl:when>
                                    <xsl:otherwise>&#160;</xsl:otherwise>
                                </xsl:choose>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='3' align="center">
                            <span class="style1">
                                <xsl:choose>
                                    <xsl:when test="info/dump/@bgp_a_mfo='307770'">
                                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.textabank'"/></xsl:call-template>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:call-template name="translate"><xsl:with-param name="key" select="'garlist.textprivat'"/></xsl:call-template>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </span>
                        </td>
                    </tr>
                </table>
                </xsl:if>

                <div class="sign">
                    <xsl:choose>
                        <xsl:when test="$bank='TAOPRIVATBANK'">
                            <img alt="stamp" src="img/stamp_ge_vupiska.gif" />
                            <img alt="sign" src="img/sign_kandaurov_ge.png" />
                        </xsl:when>
                        <xsl:when test="info/dump/@bgp_a_mfo=307770">
                            <img alt="stamp" src="img/stamp-ab-1.gif" />
                            <img alt="sign" src="img/AB_sign_Kan.png" />
                        </xsl:when>
                        <xsl:otherwise>
                            <img alt="stamp" src="img/stamp-pb-1.gif" />
                            <img alt="sign" src="img/agreement-sign.gif" />
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
            </div>
        </div>
    </xsl:template>


    <xsl:include href="translate.xsl"/>
    <xsl:include href="news_rests_statements_lang.xsl"/>

</xsl:stylesheet>
