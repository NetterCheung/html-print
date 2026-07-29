<!DOCTYPE html>
<%--
 * <p>Title: Print_PDI_AOPI066A_Letter2022.jsp</p>
 * <p>Project: VALID IV</p>
 * <p>Description: This report retrieves the information of PDI applicant who has applied for PDI execise stage2 2022</p>
 * <p>Copyright: Copyright (c) 2003</p>
 * <p>Company: HEWLETT PACKARD</p>
 *
 * @author Joy Xu
 * @version 1.0
 *          Date: 2022-01-18
 *          Time: 09:30:00
--%>
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="tdcustom" %>

<c:set var="PDI_PRINT_VALUE"><%=RequestConstant.PDI_PRINT_VALUE%>
</c:set>
<c:set var="pdiPrintValue" value="${requestScope[PDI_PRINT_VALUE]}" scope="request"/>
<c:set var="issuePrintingCtlValue" value="${requestScope[PDI_PRINT_VALUE].issuePrintingCtlValue}" scope="request"/>

<html lang="en">
<head>
    <title>Document</title>
    <meta charset="UTF-8">
    <meta name="margin-top" content="0">
    <meta name="margin-bottom" content="0">
    <meta name="margin-left" content="0">
    <meta name="margin-right" content="0">
    <meta name="copies" content="1">
    <meta name="papersize" content="A4">
    <meta name="orientation" content="0">
    <meta name="duplex" content="2">

    <style>
       p{
        margin-top: auto;
        margin-bottom: auto;
       }
       .win10_bold{
        font-family:"MingLiu_HKSCS","MingLiu","PMingLiu";
        font-weight: bold;
       }
        <!--
        .STYLE1 {
            font-family: Times New Roman;
            font-size: 11pt;
        }

        .STYLE2 {
            font-family: MingLiU_HKSCS;
            font-size: 12pt;
        }

        .STYLE3 {
            font-family: MingLiU_HKSCS;
            font-size: 14pt;
        }

        .STYLE4 {
            font-family: Times New Roman;
            font-size: 14pt;
        }

        .STYLE5 {
            font-family: Times New Roman;
            font-size: 12pt;
        }

        .STYLE6 {
            font-family: Times New Roman;
            font-size: 30pt;
        }

        .STYLE7 {
            font-family: MingLiU_HKSCS;
            font-size: 10pt;
        }

        .STYLE8 {
            font-family: Times New Roman;
            font-size: 10pt;
        }

        .nameChi {
            font-family: MingLiU_HKSCS;
            font-size: 9pt;
        }

        .nameEng {
            font-family: Times New Roman;
            font-size: 9pt;
        }

        .addressEng {
            font-family: Times New Roman;
            font-size: 9pt;
        }

        .addressChi {
            font-family: MingLiU_HKSCS;
            font-size: 9pt;
        }

        div.page {
            page-break-before: always
        }
        -->
    </style>
</head>

<body>
<table style="margin:0 auto;height:100%;width:550px">
    <tr style="vertical-align:top">
        <td style="text-align:center;border:0">
            <table class="MsoTableGrid cellpadding-0" style='border-collapse: collapse;margin:0 auto;border-spacing:0'>
                <tr style="display:none">
                    <th>Col1</th>
                    <th>Col2</th>
                    <th>Col3</th>
                    <th>Col4</th>
                    <th>Col5</th>
                    <th>Col6</th>
                    <th>Col7</th>
                    <th>Col8</th>
                    <th>Col9</th>
                    <th>Col10</th>
                    <th>Col11</th>
                    <th>Col12</th>
                    <th>Col13</th>
                    <th>Col14</th>
                </tr>
                <tr>
                    <td style="border:0;padding:0px"><p style='line-height: 5pt'>&nbsp;</p></td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
                <tr>
                    <td style="text-align:left;width:50%;border:0;padding:0px"><img
                            style="border:0;width:263px;height:88px" alt=""
                            src="<print:BlankFormPrint imageName='logo.gif'/>"></td>
                    <td style="width:20%;border:0;padding:0px">&nbsp;</td>
                    <td style="width:30%;border:0;padding:0px">
                        <table style="border-spacing:0;width:150px">
                            <tr>
                                <td style="border:1px solid;padding:0px"><p style="text-align:center"><span
                                        class="STYLE6" style='line-height: 45pt;padding-top:10pt;'>G<c:out
                                        value="${pdiPrintValue.pdiGroup}"/></span><br><span class="STYLE3"
                                                                                            style='line-height: 25pt'><c:if
                                        test="${pdiPrintValue.pdiGroup=='1'}">(第一組別)</c:if><c:if
                                        test="${pdiPrintValue.pdiGroup=='2'}">(第二組別)</c:if><c:if
                                        test="${pdiPrintValue.pdiGroup=='3'}">(第三組別)</c:if></span></p></td>
                            </tr>
                        </table>
                    </td>
                    <td style="display: none;" colspan="11"></td>
                </tr>
                <tr>
                    <td style="border:0;padding:0px"><p style='line-height: 3pt'>&nbsp;</p></td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
                <tr>
                    <td style="width:50%;border:0;padding:0px"><p style='line-height: 30px' class="STYLE7">&nbsp;</p>
                    </td>
                    <td style="width:20%;border:0;padding:0px">
                        <table style="width:150px">
                            <tr>
                                <td style="border:0;padding:0px"><p style='line-height: 30px;text-align:right'
                                                                    class="STYLE7">申請編號&nbsp;</p></td>
                            </tr>
                        </table>
                    </td>
                    <td style="text-align:center;width:30%;border:0;padding:0px">
                        <table style="border-spacing:0;width:150px">
                            <tr>
                                <td style="text-align:center;border:1px solid;padding:0px"><p style='line-height: 30px'
                                                                                              class="STYLE5"><b><c:out
                                        value="${pdiPrintValue.pdiApplNo}"/></b></p></td>
                            </tr>
                        </table>
                    </td>
                    <td style="display: none;" colspan="11"></td>
                </tr>
                <tr>
                    <td style="border:0;padding:0px"><p style='line-height: 5pt'>&nbsp;</p></td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
                <tr>
                    <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                        <p style='line-height:14pt;text-align:justify;margin:0;'>
                            <c:choose>
                                <c:when test="${!empty pdiPrintValue.nameChi}">
                                    <span class="nameChi"><c:out value="${pdiPrintValue.nameChi}"/></span>
                                </c:when>
                                <c:otherwise>
                                    <span class="nameEng"><c:out value="${pdiPrintValue.nameEng}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                        <p style='line-height:14pt;text-align:justify;margin:0;'>
                            <c:choose>
                                <c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
                                    <span class="addressChi"><c:out value="${pdiPrintValue.addressChi1}"/></span>
                                </c:when>
                                <c:otherwise>
                                    <span class="addressEng"><c:out value="${pdiPrintValue.addressEng1}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                        <p style='line-height:14pt;text-align:justify;margin:0;'>
                            <c:choose>
                                <c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
                                    <span class="addressChi"><c:out value="${pdiPrintValue.addressChi2}"/></span>
                                </c:when>
                                <c:otherwise>
                                    <span class="addressEng"><c:out value="${pdiPrintValue.addressEng2}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                        <p style='line-height:14pt;text-align:justify;margin:0;'>
                            <c:choose>
                                <c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
                                    <span class="addressChi"><c:out value="${pdiPrintValue.addressChi3}"/></span>
                                </c:when>
                                <c:otherwise>
                                    <span class="addressEng"><c:out value="${pdiPrintValue.addressEng3}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p style="line-height: 25px;text-align:left"
                                                                   class="STYLE2">申請人：</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2" style="text-align:center;margin-top:-0.7cm;"><u><b>申請第<c:if
                            test="${pdiPrintValue.pdiGroup=='1'}">一</c:if><c:if
                            test="${pdiPrintValue.pdiGroup=='2'}">二</c:if><c:if
                            test="${pdiPrintValue.pdiGroup=='3'}">三</c:if>組別私人駕駛教師考試（指明人士配額）</b></u>
                    </p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p
                            style="text-indent: 2em; text-align: justify;line-height: 25px" class="STYLE2">
                        本署現正處理上述的申請。</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p
                            style="text-indent: 2em; text-align: justify; text-justify:inter-character;line-height: 25px;margin-top:0.1cm;"
                            class="STYLE2">若本署收到的申請數目超出本署擬發出第<c:if
                            test="${pdiPrintValue.pdiGroup=='1'}">一</c:if><c:if
                            test="${pdiPrintValue.pdiGroup=='2'}">二</c:if><c:if
                            test="${pdiPrintValue.pdiGroup=='3'}">三</c:if>組別私人駕駛教師執照（指明人士配額）的數目(<c:out
                            value="${pdiPrintValue.gpNoToIssue}"/>個)，本署將按《道路交通(駕駛執照)規例》(第&nbsp;374B&nbsp;章)第&nbsp;21A(7)條進行抽籤，以決定處理其申請的次序。本署於抽籤後，會發信通知申請人其抽籤序號。你亦可於抽籤後透過本署網頁(http://www.td.gov.hk)，根據右上方的申請編號查詢有關抽籤序號。</p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p
                            style="text-indent: 2em; text-align: justify; text-justify:inter-character;line-height: 25px;margin-top:0.1cm;"
                            class="STYLE2">本署日後會以你在運輸署車輛牌照及駕駛執照綜合資料電腦系統所記錄的通訊地址<sup>1</sup>與你聯絡。如你的通訊地址經已更改，請填妥運輸署表格&nbsp;TD559，通知運輸署更新你的地址。該表格亦可向各運輸署牌照事務處或各區民政事務處索取，或於運輸署網頁下載。
                    </p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p
                            style="text-indent: 2em; text-align: justify;line-height: 25px;margin-top:0.1cm;" class="STYLE2">如有查詢，請致電運輸署熱線&nbsp;<c:out
                            value="${issuePrintingCtlValue.telNo1}"/>。</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px">
                        <table style="width:100%">
                            <tr>
                                <td style="width:80%;border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                                <td style="width:20%;border:0;padding:0px"><p class="STYLE2"
                                                                              style='line-height: 25px;text-align:center'>
                                    運輸署署長</p></td>
                            </tr>
                            <tr>
                                <td style="width:80%;border:0;padding:0px"><p class="STYLE2" style="text-align:justify">
                                    &nbsp;</p></td>
                                <td style="width:20%;border:0;padding:0px"><p class="STYLE2"
                                                                              style='line-height: 25px;text-align:right'>
                                    (<c:out value="${issuePrintingCtlValue.commissorNameChi}"/>代行)<sup>2</sup></p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;border:0;padding:0px">
                                    <p class="STYLE2" style='line-height: 25px;text-align:justify;margin-top:0.3cm;'>
                                        <fmt:formatDate value="${pdiPrintValue.printDate}" pattern="yyyy"/>&nbsp;年
                                        <fmt:formatDate value="${pdiPrintValue.printDate}" pattern="M"/>&nbsp;月
                                        <fmt:formatDate value="${pdiPrintValue.printDate}" pattern="d"/>&nbsp;日
                                    </p>
                                </td>
                                <td style="width:50%;border:0;padding:0px"><p class="STYLE2">&nbsp;</p></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tfoot>
    <tr style="vertical-align:bottom">
        <td style="text-align:center;width:100%;border:0">
            <table class="MsoTableGrid cellpadding-0"
                   style='border-collapse: collapse;margin:0 auto;border-spacing:0;width:100%'>
                <tr style="display:none">
                    <th>Col1</th>
                    <th>Col2</th>
                    <th>Col3</th>
                    <th>Col4</th>
                    <th>Col5</th>
                    <th>Col6</th>
                    <th>Col7</th>
                    <th>Col8</th>
                    <th>Col9</th>
                    <th>Col10</th>
                    <th>Col11</th>
                    <th>Col12</th>
                    <th>Col13</th>
                    <th>Col14</th>
                </tr>
                <tr>
                    <td colspan=14 style="border:0;padding:0px"><p
                            style='text-align: left; text-decoration: underline;text-align:left;margin-top:3.3cm;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                    </td>
                </tr>
                <tr>
                    <td style="border:0;padding:0px"><p class="STYLE7" style="text-align:justify;padding-top:5pt;"><sup>1</sup>
                        有關的通訊地址已列於本函的上方，供你核對。</p></td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
                <tr>
                    <td style="border:0;padding:0px"><p class="STYLE7" style="text-align:justify;padding-top:5pt;"><sup>2</sup>
                        這是電腦列印的信件，無需簽署。</p></td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
                <tr>
                    <td style="border:0;padding:0px"><p class="STYLE7">&nbsp;</td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
            </table>
        </td>
    </tr>
    </tfoot>
</table>

<div class="page">
    <fmt:setLocale value="en_US"/>
    <table style="margin:0 auto;height:100%;width:545px;margin-top:8px;">
        <tr style="vertical-align:top">
            <td style="text-align:center;border:0">
                <table class="MsoTableGrid cellpadding-0"
                       style='border-collapse: collapse;margin:0 auto;border-spacing:0;width:100%'>
                    <tr style="display:none">
                        <th>Col1</th>
                        <th>Col2</th>
                        <th>Col3</th>
                        <th>Col4</th>
                        <th>Col5</th>
                        <th>Col6</th>
                        <th>Col7</th>
                        <th>Col8</th>
                        <th>Col9</th>
                        <th>Col10</th>
                        <th>Col11</th>
                        <th>Col12</th>
                        <th>Col13</th>
                        <th>Col14</th>
                    </tr>
                    <tr>
                        <td style="border:0;padding:0px"><p style='line-height: 5pt'>&nbsp;</p></td>
                        <td style="display: none;" colspan="13"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;border:0;padding:0px"><img style="border:0;width:263px;height:88px" alt=""
                                                                        src="<print:BlankFormPrint imageName='logo.gif'/>">
                        </td>
                        <td style="width:20%;border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                        <td style="width:30%;border:0;padding:0px">
                            <table style="border-spacing:0;width:150px">
                                <tr>
                                    <td style="border:1px solid;padding:0px"><p style="text-align:center"><span
                                            class="STYLE6" style='line-height: 45pt'>G<c:out
                                            value="${pdiPrintValue.pdiGroup}"/></span><br><span class="STYLE4"
                                                                                                style='line-height: 25pt'>(Group <c:out
                                            value="${pdiPrintValue.pdiGroup}"/>)</span></p></td>
                                </tr>
                            </table>
                        </td>
                        <td style="display: none;" colspan="11"></td>
                    </tr>
                    <tr>
                        <td style="border:0;padding:0px"><p style='line-height: 3pt'>&nbsp;</p></td>
                        <td style="display: none;" colspan="13"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;border:0;padding:0px"><p style='line-height: 30px'>&nbsp;</p></td>
                        <td style="width:20%;border:0;padding:0px">
                            <table style="width:150px">
                                <tr>
                                    <td style="border:0;padding:0px"><p style='line-height: 30px;text-align:right'
                                                                        class="STYLE8">Application No.&nbsp;</p></td>
                                </tr>
                            </table>
                        </td>
                        <td style="text-align:right;width:30%;border:0;padding:0px">
                            <table style="border-spacing:0;width:150px">
                                <tr>
                                    <td style="text-align:center;border:1px solid;padding:0px"><p
                                            style='line-height: 30px' class="STYLE5"><b><c:out
                                            value="${pdiPrintValue.pdiApplNo}"/></b></p></td>
                                </tr>
                            </table>
                        </td>
                        <td style="display: none;" colspan="11"></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p>&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                            <p style='line-height:14pt;text-align:justify;margin:0;margin-top:-0.4cm'>
                                <c:choose>
                                    <c:when test="${!empty pdiPrintValue.nameEng}">
                                        <span class="nameEng"><c:out value="${pdiPrintValue.nameEng}"/></span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="nameChi"><c:out value="${pdiPrintValue.nameChi}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                            <p style='line-height:14pt;text-align:justify;margin:0;'>
                                <c:choose>
                                    <c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
                                        <span class="addressEng"><c:out value="${pdiPrintValue.addressEng1}"/></span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="addressChi"><c:out value="${pdiPrintValue.addressChi1}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                            <p style='line-height:14pt;text-align:justify;margin:0;'>
                                <c:choose>
                                    <c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
                                        <span class="addressEng"><c:out value="${pdiPrintValue.addressEng2}"/></span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="addressChi"><c:out value="${pdiPrintValue.addressChi2}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14 style='border:0;padding-left:110pt;padding-top:5pt;vertical-align:top;'>
                            <p style='line-height:14pt;text-align:justify;margin:0;'>
                                <c:choose>
                                    <c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
                                        <span class="addressEng"><c:out value="${pdiPrintValue.addressEng3}"/></span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="addressChi"><c:out value="${pdiPrintValue.addressChi3}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p class="STYLE1" style="text-align:right">
                            <fmt:formatDate value="${pdiPrintValue.printDate}" pattern="d MMMM yyyy"/></p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p style="line-height: 25px;text-align:justify;margin-top:-0.2cm;"
                                                                       class="STYLE1">Dear Applicant,</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p style="line-height: 25px;text-align:center;margin-top:-0.4cm;"
                                                                       class="STYLE1"><u><b>Application for Private
                            Driving Instructors' Test (Group <c:out value="${pdiPrintValue.pdiGroup}"/>)<br>(Quota for
                            Specified Persons)</b></u></p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p
                                style="text-indent: 2em; text-align: justify;line-height: 25px" class="STYLE1">We have
                            received your above application which is now being processed.</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p>&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p
                                style="text-indent: 2em; text-align: justify;line-height: 25px" class="STYLE1">In
                            accordance with regulation 21A(7) of the Road Traffic (Driving Licences) Regulations (Cap.
                            374B), if the number of applicants exceeds the number of Group <c:out
                                    value="${pdiPrintValue.pdiGroup}"/> private driving instructors' licences (Quota for
                            Specified Persons) proposed to be issued in this exercise (i.e. <c:out
                                    value="${pdiPrintValue.gpNoToIssue}"/>), a ballot will be held to determine the
                            order of applications to be dealt with. You will then be informed of your balloted order
                            number in writing. You may also check your balloted order number on the Transport Department
                            Webpage (http://www.td.gov.hk) by using the Application No. shown on the top right hand
                            corner after balloting.</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p>&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p
                                style="text-indent: 2em; text-align: justify;line-height: 25px" class="STYLE1">This
                            department will in future communicate with you by the above correspondence
                            address<sup>3</sup> available in Transport Department's Vehicles And Drivers Licensing
                            Integrated Data System. If you find the correspondence address as shown in this letter is
                            not updated, please update it by completing Form TD559, which is available at the Licensing
                            Offices of Transport Department and the District Offices and can be downloaded from the
                            Transport Department Webpage.</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p>&nbsp;</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p style="text-indent: 2em; text-align: justify"
                                                                       class="STYLE1">For enquiries, please call
                            Transport Department's Hotline at <c:out value="${issuePrintingCtlValue.telNo1}"/>.</p></td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px">
                            <table style="width:100%">
                                <tr style="display:none">
                                    <th>Col1</th>
                                    <th>Col2</th>
                                    <th>Col3</th>
                                    <th>Col4</th>
                                    <th>Col5</th>
                                    <th>Col6</th>
                                    <th>Col7</th>
                                    <th>Col8</th>
                                    <th>Col9</th>
                                    <th>Col10</th>
                                    <th>Col11</th>
                                    <th>Col12</th>
                                    <th>Col13</th>
                                    <th>Col14</th>
                                </tr>
                                <tr>
                                    <td style="width:60%;border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                                    <td style='padding-right:35pt;width:40%;border:0;padding:0px'><p class="STYLE1"
                                                                                                     style='line-height: 20px;text-align:right'>
                                        Yours faithfully,</p></td>
                                    <td style="display: none;" colspan="12"></td>
                                </tr>
                                <tr>
                                    <td colspan=14 style="border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                                </tr>
                                <tr>
                                    <td style="width:60%;border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                                    <td style='padding-right:35pt;width:40%;border:0;padding:0px'><p class="STYLE1"
                                                                                                     style='line-height: 20px;text-align:right'>
                                        (<c:out value="${issuePrintingCtlValue.commissorNameEng}"/>)<sup>4</sup></p>
                                    </td>
                                    <td style="display: none;" colspan="12"></td>
                                </tr>
                                <tr>
                                    <td style="width:60%;border:0;padding:0px"><p class="STYLE1">&nbsp;</p></td>
                                    <td style="width:40%;border:0;padding:0px"><p class="STYLE1"
                                                                                  style='line-height: 20px;text-align:right'>
                                        for Commissioner for Transport</p></td>
                                    <td style="display: none;" colspan="12"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tfoot>
        <tr style="vertical-align:bottom">
            <td style="text-align:center;width:100%;border:0">
                <table class="MsoTableGrid cellpadding-0"
                       style='border-collapse: collapse;margin:0 auto;border-spacing:0;width:100%'>
                    <tr style="display:none">
                        <th>Col1</th>
                        <th>Col2</th>
                        <th>Col3</th>
                        <th>Col4</th>
                        <th>Col5</th>
                        <th>Col6</th>
                        <th>Col7</th>
                        <th>Col8</th>
                        <th>Col9</th>
                        <th>Col10</th>
                        <th>Col11</th>
                        <th>Col12</th>
                        <th>Col13</th>
                        <th>Col14</th>
                    </tr>
                    <tr>
                        <td colspan=14 style="border:0;padding:0px"><p class="STYLE8 MsoNormal"
                                                                       style='text-align: left; text-decoration: underline;text-align:left'>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        </td>
                    </tr>
                    <tr>
                        <td style="border:0;padding:0px"><p class="STYLE8" style="text-align:justify;padding-top:5pt;"><sup>3</sup> The
                            Correspondence Address is printed on the top of this letter for your verification.</p></td>
                        <td style="display: none;" colspan="13"></td>
                    </tr>
                    <tr>
                        <td style="border:0;padding:0px"><p class="STYLE8" style="text-align:justify;padding-top:5pt;"><sup>4</sup> This
                            is a computer-generated letter which requires no signature.</p></td>
                        <td style="display: none;" colspan="13"></td>
                    </tr>
                    <tr>
                        <td style="border:0;padding:0px"><p class="STYLE8">&nbsp;</p></td>
                        <td style="display: none;" colspan="13"></td>
                    </tr>
                </table>
            </td>
        </tr>
        </tfoot>
    </table>
</div>
</body>
</html>
