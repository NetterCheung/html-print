<!DOCTYPE html>
<%--
 * <p>Title: AddressProofRequestLetter.jsp</p>
 * <p>Project: VALID IV</p>
 * <p>Description: Common page</p>
 * <p>Copyright: Copyright (c) 2003</p>
 * <p>Company: HEWLETT PACKARD</p>
 *
 * @author Henning Liao
 * @version 1.0
 *          Date: 2008-8-15
 *          Time: 11:46:30
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
<c:set var="pdiPrintValue" value="${requestScope[PDI_PRINT_VALUE]}"
       scope="request"/>
<c:set var="issuePrintingCtlValue"
       value="${requestScope[PDI_PRINT_VALUE].issuePrintingCtlValue}"
       scope="request"/>

<html lang="en">
<head>
    <title>Document</title>
    <!-- saved from url=(0014)about:internet -->
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
        <!--
        p, div {
            line-height: 25px;
            font-size: 12pt;
        }

        .supStyle {
            line-height: 18px;
        }

        .STYLE1 {
            font-family: "Times New Roman";
            font-size: 12pt;
        }

        .STYLE2 {
            font-family: "MingLiU_HKSCS";
            font-size: 12pt;
        }

        .addressEng {
            font-family: "Times New Roman";
            font-size: 9pt;
        }

        .addressChi {
            font-family: MingLiU_HKSCS;
            font-size: 9pt;
        }

        .STYLE7 {
            font-family: MingLiU_HKSCS;
            font-size: 10pt;
        }

        .STYLE8 {
            font-family: "Times New Roman";
            font-size: 10pt;
        }

        .STYLE9 {
            font-family: MingLiU_HKSCS;
            font-size: 8pt;
        }

        .STYLE10 {
            font-family: "Times New Roman";
            font-size: 8pt;
        }

        .nameChi {
            font-family: MingLiU_HKSCS;
            font-size: 9pt;
        }

        .nameEng {
            font-family: "Times New Roman";
            font-size: 9pt;
        }

        div.page {
            page-break-before: always
        }

        -->
    </style>
</head>
<c:set var="PDI_PRINT_VALUE"><%=RequestConstant.PDI_PRINT_VALUE%>
</c:set>
<c:set var="pdiPrintValue" value="${requestScope[PDI_PRINT_VALUE]}"
       scope="request"/>
<c:set var="issuePrintingCtlValue"
       value="${requestScope[PDI_PRINT_VALUE].issuePrintingCtlValue}"
       scope="request"/>
<body>

<table style="margin:0 auto;height:100%;width:550px">
    <tr style="vertical-align:top">
        <td style="text-align:center;border:0">
            <table class=MsoTableGrid
                   style='border-collapse: collapse;margin:0 auto;border-spacing:0'>
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
                    <td style="vertical-align:top;width:50%;border:0;padding:0px">
                        <p class=MsoNormal
                           style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
								<span lang=EN-US
                                      style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                        </p> <img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>"/>
                    </td>
                    <td style="vertical-align:bottom;width:20%;border:0;padding:0px"></td>
                    <td style="text-align:right;vertical-align:bottom;width:30%;border:0;padding:0px">
                        <p class=MsoNormal
                           style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
								<span lang=EN-US
                                      style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                        </p>
                        <table style="border-spacing:0;width:150px">
                            <tr>
                                <td style="border:1px solid;padding:0px">
                                    <p class=MsoNormal
                                       style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
											<span lang=EN-US
                                                  style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                                    </p>
                                    <p style="text-align:center">
											<span lang=EN-US
                                                  style='font-family: Times New Roman; font-size: 30pt'>G<c:out
                                                    value="${pdiPrintValue.pdiGroup}"/></span>
                                    </p>
                                    <p style="text-align:center">
                                        <c:if test="${pdiPrintValue.pdiGroup=='1'}">
                                            <span class="STYLE2">(第一組別)</span>
                                        </c:if>
                                        <c:if test="${pdiPrintValue.pdiGroup=='2'}">
                                            <span class="STYLE2">(第二組別)</span>
                                        </c:if>
                                        <c:if test="${pdiPrintValue.pdiGroup=='3'}">
                                            <span class="STYLE2">(第三組別)</span>
                                        </c:if>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="display: none;" colspan="11"></td>
                </tr>
                <tr>
                    <td style="width:50%;border:0;padding:0px"><p class=MsoNormal
                                                                  style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
								<span lang=EN-US
                                      style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                    </p></td>
                    <td style="width:20%;border:0;padding:0px">
                        <table style="border-spacing:0;width:150px">
                            <tr>
                                <td style="border:0;padding:0px">
                                    <p style='line-height: 5pt;vertical-align:bottom'>
                                        <span class="STYLE10" style='line-height: 8pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width:30%;border:0;padding:0px"><p class=MsoNormal
                                                                  style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
								<span lang=EN-US
                                      style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                    </p></td>
                    <td style="display: none;" colspan="11"></td>
                </tr>

                <tr>
                    <td style="vertical-align:top;width:50%;border:0;padding:0px"><p class=MsoNormal
                                                                                     style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
								<span lang=EN-US
                                      style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                    </p></td>
                    <td style="vertical-align:top;width:20%;border:0;padding:0px">
                        <table style="border-spacing:0;width:150px">
                            <tr>
                                <td style="border:0;padding:0px">
                                    <p style='line-height: 12pt;vertical-align:top'>
                                        <span class="STYLE9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申請編號&nbsp;</span>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="border:0;padding:0px">
                                    <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                                    <!-- <p align="top" style='line-height: 12pt'>
                                        <span class="STYLE10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Application
                                            No.</span>
                                    </p> -->
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
                        <table style="border-spacing:0;width:150px">
                            <tr>
                                <td style="text-align:right;border:1px solid;padding:0px">
                                    <p style="text-align:center">
											<span class="STYLE8"><b><c:out
                                                    value="${pdiPrintValue.pdiApplNo}"/></b></span>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="display: none;" colspan="11"></td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p class=MsoNormal
                           style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 10pt'>
								<span lang=EN-US
                                      style='font-family: Arial; font-size: 1pt; line-height: 10pt'>&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <c:choose>
                                <c:when test="${!empty pdiPrintValue.nameChi}">
										<span class="nameChi"><c:out
                                                value="${pdiPrintValue.nameChi}"/></span>
                                </c:when>
                                <c:otherwise>
										<span class="nameEng"><c:out
                                                value="${pdiPrintValue.nameEng}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <c:choose>
                                <c:when
                                        test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
										<span class="addressChi"><c:out
                                                value="${pdiPrintValue.addressChi1}"/></span>
                                </c:when>
                                <c:otherwise>
										<span class="addressEng"><c:out
                                                value="${pdiPrintValue.addressEng1}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <c:choose>
                                <c:when
                                        test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
										<span class="addressChi"><c:out
                                                value="${pdiPrintValue.addressChi2}"/></span>
                                </c:when>
                                <c:otherwise>
										<span class="addressEng"><c:out
                                                value="${pdiPrintValue.addressEng2}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <c:choose>
                                <c:when
                                        test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
										<span class="addressChi"><c:out
                                                value="${pdiPrintValue.addressChi3}"/></span>
                                </c:when>
                                <c:otherwise>
										<span class="addressEng"><c:out
                                                value="${pdiPrintValue.addressEng3}"/></span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            <span class="STYLE2">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            <span class="STYLE2">申請人：</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:center">
                            <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                            <!--
								<span class="STYLE2"><u><b>申請第<c:if
												test="${pdiPrintValue.pdiGroup=='1'}">
												<span class="STYLE2">一</span>
											</c:if> <c:if test="${pdiPrintValue.pdiGroup=='2'}">
												<span class="STYLE2">二</span>
											</c:if> <c:if test="${pdiPrintValue.pdiGroup=='3'}">
												<span class="STYLE2">三</span>
											</c:if>組別私人駕駛教師考試
								</b></u></span>
							-->
                            <span class="STYLE2"><u><b>申請第<c:if test="${pdiPrintValue.pdiGroup=='1'}">一</c:if><c:if
                                    test="${pdiPrintValue.pdiGroup=='2'}">二</c:if><c:if
                                    test="${pdiPrintValue.pdiGroup=='3'}">三</c:if>組別私人駕駛教師考試(指明人士配額)
								</b></u></span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            <span class="STYLE2">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-indent: 2em; text-align: justify;">
                            <span class="STYLE2">本署現正處理你上述的申請。</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            <span class="STYLE2">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                        <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                        <!--
							<p
								style="text-indent: 2em; text-align: justify; text-justify: inter-ideograph;">
								<span class="STYLE2">若本署收到的申請數目超出本署擬發出第<c:if
										test="${pdiPrintValue.pdiGroup=='1'}">
										<span class="STYLE2">一</span>
									</c:if> <c:if test="${pdiPrintValue.pdiGroup=='2'}">
										<span class="STYLE2">二</span>
									</c:if> <c:if test="${pdiPrintValue.pdiGroup=='3'}">
										<span class="STYLE2">三</span>
									</c:if>組別私人駕駛教師執照的數目(<c:out value="${pdiPrintValue.gpNoToIssue}" />&nbsp;個)，本署將按《道路交通(駕駛執照)規例》(香港法例第&nbsp;374B&nbsp;章)第&nbsp;21A(5)條進行抽籤，以決定申請獲處理的次序。本署於抽籤後，會於&nbsp;<fmt:formatDate
										value="${pdiPrintValue.tentBallotingDate}" pattern="yyyy" />&nbsp;年&nbsp;<fmt:formatDate
										value="${pdiPrintValue.tentBallotingDate}" pattern="M" />&nbsp;月發信通知申請人其抽籤序號。你亦可透過本署網頁(http://www.td.gov.hk)，按印在右上角的申請編號查詢自己的抽籤序號。
								</span>
							</p>
							 -->
                        <p
                                style="text-indent: 2em; text-align: justify; text-justify:inter-character;">
								<span class="STYLE2">若本署收到的申請數目超出本署擬發出第<c:if
                                        test="${pdiPrintValue.pdiGroup=='1'}">一</c:if><c:if
                                        test="${pdiPrintValue.pdiGroup=='2'}">二</c:if><c:if
                                        test="${pdiPrintValue.pdiGroup=='3'}">三</c:if>組別私人駕駛教師執照(指明人士配額)的數目(<c:out
                                        value="${pdiPrintValue.gpNoToIssue}"/>個)，本署將按《道路交通(駕駛執照)規例》(第&nbsp;374B&nbsp;章)第&nbsp;21A(5)條進行抽籤，以決定處理其申請的次序。本署於抽籤後，會發信通知申請人其抽籤序號。你亦可於抽籤後透過本署網頁(http://www.td.gov.hk)，根據右上方的申請編號查詢有關抽籤序號。
								</span>
                        </p>
                    </td>
                </tr>

                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            <span class="STYLE2">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                        <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                        <!--
                        <p
                            style="text-indent: 2em; text-align: justify; text-justify: inter-ideograph;">
                            <span class="STYLE2">本署在日後會以你在運輸署牌照電腦系統所記錄的通訊地址<sup>1</sup>與你聯絡。如你的通訊地址經已更改，請填妥運輸署表格&nbsp;TD559，通知運輸署更新你的地址。該表格亦可向運輸署牌照部或各區民政事務處索取，或由運輸署網頁下載。
                            </span>
                        </p>
                        -->
                        <p
                                style="text-indent: 2em; text-align: justify; text-justify:inter-character;">
								<span class="STYLE2"><span
                                        class="supStyle">本署日後會以你在運輸署車輛牌照及駕駛執照綜合資料電腦系統所記錄的通</span>訊地址<sup>1</sup>與你聯絡。如你的通訊地址經已更改，請填妥運輸署表格&nbsp;TD559，通知運輸署更新你的地址。該表格亦可向各運輸署牌照事務處或各區民政事務處索取，或於運輸署網頁下載。
								</span>
                        </p>
                    </td>
                </tr>

                <tr>
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p style="text-align:justify">
                            <span class="STYLE2">&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                        <p style="text-indent: 2em; text-align: justify;">
								<span class="STYLE2">如有查詢，請致電運輸署熱線&nbsp;<c:out
                                        value="${issuePrintingCtlValue.telNo1}"/> <c:if
                                        test="${!empty issuePrintingCtlValue.telNo2}">/<c:out
                                        value="${issuePrintingCtlValue.telNo2}"/>
                                </c:if> <c:if test="${!empty issuePrintingCtlValue.telNo3}">/<c:out
                                        value="${issuePrintingCtlValue.telNo3}"/>
                                </c:if>。
								</span>
                        </p>
                    </td>
                </tr>

                <tr>
                    <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                        <table style="width:100%">
                            <tr>
                                <td style="width:50%;border:0;padding:0px">
                                    <p style="text-align:justify">
                                        <span class="STYLE2"></span>
                                    </p>
                                </td>
                                <td style="width:50%;border:0;padding:0px">
                                    <p style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <span class="STYLE2">運輸署署長</span>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;border:0;padding:0px">
                                    <p style="text-align:justify">
                                        <span class="STYLE2"></span>
                                    </p>
                                </td>
                                <td style="width:50%;border:0;padding:0px">
                                    <p style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <span class="STYLE2">(<c:out
                                                value="${issuePrintingCtlValue.commissorNameChi}"/>代行)<sup>2</sup></span>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%;border:0;padding:0px">
                                    <p style="text-align:justify">
											<span class="STYLE2"><fmt:formatDate
                                                    value="${pdiPrintValue.printDate}"
                                                    pattern="yyyy"/>&nbsp;年&nbsp;<fmt:formatDate
                                                    value="${pdiPrintValue.printDate}"
                                                    pattern="M"/>&nbsp;月&nbsp;<fmt:formatDate
                                                    value="${pdiPrintValue.printDate}" pattern="d"/>&nbsp;日</span>
                                    </p>
                                </td>
                                <td style="width:50%;border:0;padding:0px">
                                    <p style="text-align:center">
                                        <span class="STYLE2">&nbsp;</span>
                                    </p>
                                </td>
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
            <table class=MsoTableGrid
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
                    <td colspan=14
                        style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                        <p class=MsoNormal
                           style='text-align: left; text-decoration: underline;text-align:left'>
                            <span class="STYLE7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="border:0;padding:0px">
                        <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                        <!--
                        <p align="justify">
                            <span class="STYLE7"><sup>1</sup> 有關的通訊地址列於本函的左上角，供你核對。</span>
                        </p>
                         -->
                        <p style="text-align:justify">
                            <!-- Updated by Peter Fung for CR-2020-006 on 03-08-2020 begin-->
                            <!-- <span class="STYLE7"><sup>1</sup> 有關的通訊地址已列於本函的左上方，供你核對。</span>  -->
                            <span class="STYLE7"><sup>1</sup> 有關的通訊地址已列於本函的上方，供你核對。</span>
                            <!-- Updated by Peter Fung for CR-2020-006 on 03-08-2020 end-->
                        </p>
                    </td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
                <tr>
                    <td style="border:0;padding:0px">
                        <p style="text-align:justify">
                            <span class="STYLE7"><sup>2</sup> 這是電腦列印的信件，無需簽署。</span>
                        </p>
                    </td>
                    <td style="display: none;" colspan="13"></td>
                </tr>
            </table>
        </td>
    </tr>
    </tfoot>
</table>
<div class="page">
    <fmt:setLocale value="en_US"/>
    <table style="margin:0 auto;height:98%;width:545px">
        <tr style="vertical-align:top">
            <td style="text-align:center;border:0">
                <table class=MsoTableGrid
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
                        <td style="vertical-align:top;width:50%;border:0;padding:0px">
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p> <img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>"/>
                        </td>
                        <td style="vertical-align:top;width:20%;border:0;padding:0px">
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p>
                        </td>
                        <td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p>
                            <table style="border-spacing:0;width:150px">
                                <tr>
                                    <td style="border:1px solid;padding:0px">
                                        <p class=MsoNormal
                                           style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
												<span lang=EN-US
                                                      style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                                        </p>
                                        <p style="text-align:center">
												<span lang=EN-US style='font-family: Times New Roman; font-size: 30pt'>G<c:out
                                                        value="${pdiPrintValue.pdiGroup}"/></span>
                                        </p>
                                        <p style="text-align:center">
												<span class="STYLE1">(Group <c:out
                                                        value="${pdiPrintValue.pdiGroup}"/>)
												</span>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="display: none;" colspan="11"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;border:0;padding:0px"><p class=MsoNormal
                                                                      style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                        </p></td>
                        <td style="width:20%;border:0;padding:0px">
                            <table style="border-spacing:0;width:150px">
                                <tr>
                                    <td style="border:0;padding:0px">
                                        <p style='line-height: 5pt;vertical-align:bottom'>
                                            <span class="STYLE10" style='line-height: 8pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width:30%;border:0;padding:0px"><p class=MsoNormal
                                                                      style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                        </p></td>
                        <td style="display: none;" colspan="11"></td>
                    </tr>

                    <tr>
                        <td style="vertical-align:top;width:50%;border:0;padding:0px"><p class=MsoNormal
                                                                                         style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                        </p></td>
                        <td style="vertical-align:top;width:20%;border:0;padding:0px">
                            <table style="border-spacing:0;width:150px">
                                <tr>
                                    <td style="border:0;padding:0px">
                                        <p style='line-height: 12pt;vertical-align:top'>
                                            <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                                            <!-- <span class="STYLE9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申請編號</span> -->
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border:0;padding:0px"><p style='line-height: 12pt;vertical-align:top'>
												<span class="STYLE10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Application
													No.</span>
                                    </p></td>
                                </tr>
                            </table>
                        </td>
                        <td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
                            <table style="border-spacing:0;width:150px">
                                <tr>
                                    <td style="text-align:right;border:1px solid;padding:0px">
                                        <p style="text-align:center">
												<span class="STYLE8"><b><c:out
                                                        value="${pdiPrintValue.pdiApplNo}"/></b></span>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="display: none;" colspan="11"></td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 10pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 10pt'>&nbsp;</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:justify">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:choose>
                                    <c:when test="${!empty pdiPrintValue.nameEng}">
											<span class="nameEng"><c:out
                                                    value="${pdiPrintValue.nameEng}"/></span>
                                    </c:when>
                                    <c:otherwise>
											<span class="nameChi"><c:out
                                                    value="${pdiPrintValue.nameChi}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:justify">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:choose>
                                    <c:when
                                            test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
											<span span class="addressEng"><c:out
                                                    value="${pdiPrintValue.addressEng1}"/></span>
                                    </c:when>
                                    <c:otherwise>
											<span span class="addressChi"><c:out
                                                    value="${pdiPrintValue.addressChi1}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:justify">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:choose>
                                    <c:when
                                            test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
											<span span class="addressEng"><c:out
                                                    value="${pdiPrintValue.addressEng2}"/></span>
                                    </c:when>
                                    <c:otherwise>
											<span span class="addressChi"><c:out
                                                    value="${pdiPrintValue.addressChi2}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:justify">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <c:choose>
                                    <c:when
                                            test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
											<span span class="addressEng"><c:out
                                                    value="${pdiPrintValue.addressEng3}"/></span>
                                    </c:when>
                                    <c:otherwise>
											<span span class="addressChi"><c:out
                                                    value="${pdiPrintValue.addressChi3}"/></span>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 5pt; padding-bottom: 5pt;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:right">
									<span class="STYLE1"><fmt:formatDate
                                            value="${pdiPrintValue.printDate}" pattern="d MMMM yyyy"/></span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:justify">
                                <span class="STYLE1">Dear Applicant,</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:center">
									<span class="STYLE1"><u><b>Application for
												Private Driving Instructors' Test (Group <c:out
                                                value="${pdiPrintValue.pdiGroup}"/>)
										</b></u></span>
                            </p>
                        </td>
                    </tr>
                    <!-- added by Justin wong for ER-2021-004 PDI stage 2 begin on 10-02-2022 -->
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-align:center">
									<span class="STYLE1"><b>(Quota for Specified Persons)
										</b></span>
                            </p>
                        </td>
                    </tr>
                    <!-- added by Justin wong for ER-2021-004 PDI stage 2 on 10-02-2022 End-->
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0pt; padding-bottom: 5pt;vertical-align:top;border:0;padding:0px'>
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p style="text-indent: 2em; text-align: justify;">
									<span class="STYLE1">We have received your above
										application which is now being processed. </span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0pt; padding-bottom: 5pt;vertical-align:top;border:0;padding:0px'>
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                            <p style="text-indent: 2em; text-align: justify;">
                                <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                                <!--
									<span class="STYLE1">In accordance with regulation
										21A(5) of the Road Traffic (Driving Licence) Regulations (Cap.
										374B), if the number of applicants exceeds the number of Group
										<c:out value="${pdiPrintValue.pdiGroup}" /> private driving
										instructors' licences to be issued in this exercise (i.e. <c:out
											value="${pdiPrintValue.gpNoToIssue}" />), a ballot will be
										held to determine the order of applications to be dealt with.
										You will then be informed of your balloted order number in
										writing in <fmt:formatDate
											value="${pdiPrintValue.tentBallotingDate}"
											pattern="MMMM yyyy" />. You may also check your balloted
										order number on the Transport Department's Webpage
										(http://www.td.gov.hk) by using the Application No. shown on
										the top right hand corner.
									</span>
									 -->
                                <span class="STYLE1">In accordance with regulation
										21A(5) of the Road Traffic (Driving Licences) Regulations
										(Cap. 374B), if the number of applicants exceeds the number of
										Group <c:out value="${pdiPrintValue.pdiGroup}"/> private
										driving instructors' licences (Quota for Specified Persons) proposed to be issued in this exercise
										(i.e. <c:out value="${pdiPrintValue.gpNoToIssue}"/>), a
										ballot will be held to determine the order of applications to
										be dealt with. You will then be informed of your balloted
										order number in writing. You may also check your balloted
										order number on the Transport Department Webpage
										(http://www.td.gov.hk) by using the Application No. shown on
										the top right hand corner after the conduction of the ballot.
									</span>
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0pt; padding-bottom: 5pt;vertical-align:top;border:0;padding:0px'>
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                            <p style="text-indent: 2em; text-align: justify;">
                                <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                                <!--
                                <span class="STYLE1">This department will in future
                                    communicate with you by the above correspondence address<sup>3</sup>
                                    available in Transport Department's Vehicles And Drivers
                                    Licensing Integrated Data System. If you find the
                                    correspondence address as shown in this letter is not updated,
                                    please update it by completing Form TD559, which is available
                                    at the Licensing Offices of Transport Department and the
                                    District Offices and could be downloaded from the Transport
                                    Department Webpage.
                                </span>
                                 -->
                                <span class="STYLE1"><span class="supStyle">This department will in future
										communicate with you by the above</span> correspondence address<sup>3</sup>
										available in Transport Department's Vehicles And Drivers
										Licensing Integrated Data System. If you find the
										correspondence address as shown in this letter is not updated,
										please update it by completing Form TD559, which is available
										at the Licensing Offices of Transport Department and the
										District Offices and can be downloaded from the Transport
										Department Webpage.
									</span>
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0pt; padding-bottom: 5pt;vertical-align:top;border:0;padding:0px'>
                            <p class=MsoNormal
                               style='text-align: justify; text-justify:inter-character; layout-grid-mode: char; line-height: 5pt'>
									<span lang=EN-US
                                          style='font-family: Arial; font-size: 1pt; line-height: 5pt'>&nbsp;</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                            <p style="text-indent: 2em; text-align: justify;">
                                <!-- Commented by Michael_K for CR-2014-006 (PDI exercise 2014) on 20140729 -->
                                <!--
									<span class="STYLE1">For enquiry, please call Transport
										Department's Hotline at <c:out
											value="${issuePrintingCtlValue.telNo1}" /> <c:if
											test="${!empty issuePrintingCtlValue.telNo2}">/<c:out
												value="${issuePrintingCtlValue.telNo2}" />
										</c:if> <c:if test="${!empty issuePrintingCtlValue.telNo3}">/<c:out
												value="${issuePrintingCtlValue.telNo3}" />
										</c:if>.
									</span>
									 -->
                                <span class="STYLE1">For enquiries, please call
										Transport Department's Hotline at <c:out
                                            value="${issuePrintingCtlValue.telNo1}"/> <c:if
                                            test="${!empty issuePrintingCtlValue.telNo2}">/<c:out
                                            value="${issuePrintingCtlValue.telNo2}"/>
                                    </c:if> <c:if test="${!empty issuePrintingCtlValue.telNo3}">/<c:out
                                            value="${issuePrintingCtlValue.telNo3}"/>
                                    </c:if>.
									</span>
                            </p>
                        </td>
                    </tr>

                    <tr>
                        <td colspan=14 style="border:0;padding:0px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan=14 style="vertical-align:top;border:0;padding:0px">
                            <table style="width:100%">
                                <tr>
                                    <td style="width:50%;border:0;padding:0px">
                                        <p style="text-align:justify">
                                            <span class="STYLE1"></span>
                                        </p>
                                    </td>
                                    <td style="width:50%;border:0;padding:0px">
                                        <p style="text-align:center">
                                            <span class="STYLE1">&nbsp;&nbsp;Yours faithfully,</span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan=2 style="border:0;padding:0px"></td>
                                </tr>
                                <tr>
                                    <td style="width:50%;border:0;padding:0px">
                                        <p style="text-align:justify">
                                            <span class="STYLE1"></span>
                                        </p>
                                    </td>
                                    <td style="width:50%;border:0;padding:0px">
                                        <p style="text-align:center">
												<span class="STYLE1">&nbsp;&nbsp;(<c:out
                                                        value="${issuePrintingCtlValue.commissorNameEng}"/>)<sup>4</sup></span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:50%;border:0;padding:0px">
                                        <p style="text-align:justify">
                                            <span class="STYLE1"></span>
                                        </p>
                                    </td>
                                    <td style="width:50%;border:0;padding:0px">
                                        <p style="text-align:center">
                                            <span class="STYLE1">for Commissioner for Transport</span>
                                        </p>
                                    </td>
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
                <table class=MsoTableGrid
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
                        <td colspan=14
                            style='padding-left: 0pt; padding-right: 0pt; padding-top: 0cm; padding-bottom: 0cm;vertical-align:top;border:0;padding:0px'>
                            <p class=MsoNormal
                               style='text-align: left; text-decoration: underline;text-align:left'>
                                <span class="STYLE8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="border:0;padding:0px">
                            <p style="text-align:justify">
                                <!-- Updated by Peter Fung for CR-2020-006 on 03-08-2020 begin-->
                                <!-- <span class="STYLE8"><sup>3</sup> The Correspondence
                                    Address is printed on the top left hand corner for your
                                    verification.</span>  -->
                                <span class="STYLE8"><sup>3</sup> The Correspondence
											Address is printed on the top of this letter for your
											verification.</span>
                                <!-- Updated by Peter Fung for CR-2020-006 on 03-08-2020 end-->
                            </p>
                        </td>
                        <td style="display: none;" colspan="13"></td>
                    </tr>
                    <tr>
                        <td style="border:0;padding:0px">
                            <p style="text-align:justify">
										<span class="STYLE8"><sup>4</sup> This is a
											computer-generated letter which requires no signature.</span>
                            </p>
                        </td>
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
