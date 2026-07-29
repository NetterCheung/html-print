<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<c:set var="PPCD_PAGE_VALUE"><%=RequestConstant.ACKNOW_PAGE_VALUE_PPCD%>
</c:set>
<c:set var="ppcdPageValue" value="${requestScope[PPCD_PAGE_VALUE]}" scope="request"/>
<c:set var="legalEntityValue" value="${ppcdPageValue.legalEntityValue}" scope="request"/>
<c:set var="entitlementValues" value="${ppcdPageValue.entitlementValues}" scope="request"/>
<c:set var="probationaryDlValue" value="${ppcdPageValue.probationaryDlValue}" scope="request"/>
<html lang="en">
<head>
    <title>Document</title>
    <!-- saved from url=(0014)about:internet -->
    <meta charset="UTF-8">
    <meta name="margin-top" content="2">
    <meta name="margin-bottom" content="2">
    <meta name="margin-left" content="2">
    <meta name="margin-right" content="2">
    <meta name="copies" content="1">
    <meta name="papersize" content="A4">
    <meta name="orientation" content="0">
    <meta name="duplex" content="2">
    <style>
        <!--
        .ENGLISH_FORMAT1 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: 12pt;
        }

        .ENGLISH_FORMAT2 {
            font-family: "Times New Roman", Times, serif;
            font-size: 12pt;
        }

        .CHINESE_FORMAT1 {
            font-family: "MingLiU_HKSCS";
            font-weight: bold;
            font-size: 12pt;
        }

        .CHINESE_FORMAT2 {
            font-family: "MingLiU_HKSCS";
            font-size: 12pt;
        }

        -->
    </style>
</head>
<body>
<DIV class="ONE">&nbsp;</DIV>
<table style="width:650px; border:0; border-spacing:0; margin-left:auto; margin-right:auto;">
    <tr>
        <td>
            <table style="width:100%; border:0; border-spacing:1px; margin-left:auto; margin-right:auto;">
                <tr>
                    <td><p>&nbsp;</p>
                        <p><img style="border:0" alt="Logo" src="<print:BlankFormPrint imageName='logo.gif'/>"></p>
                        <p>&nbsp;</p>

                        <table style="width:100%; border:0; border-spacing:0">
                            <tr>
                                <td style="vertical-align:top"><p>File Ref.: <c:out
                                        value="${requestScope.printLogTxnNo}"/></p></td>
                            </tr>
                            <tr>
                                <td style="vertical-align:top"><p style="text-align:right"><fmt:formatDate
                                        value="${ppcdPageValue.currentDate}" pattern="dd/MM/yyyy"/></p></td>
                            </tr>
                        </table>
                        <p>Dear <codetable:out value="<%=CodeTableConstant.TITLE_CODE%>"
                                               formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                               language="<%=CodeTableConstant.ENGLISH%>"
                                               selected="${legalEntityValue.titleCode}"></codetable:out> <c:out
                                value="${legalEntityValue.nameEng}"/>, </p>
                        <p style="text-align:center"><span class="ENGLISH_FORMAT1"><u>Date of Completion of Probationary Driving Period</u></span><br>
                            <span class="ENGLISH_FORMAT2">(Driving  Licence No.:
			  		<c:choose>
                        <c:when test="${legalEntityValue.idType =='' ||legalEntityValue.idType ==' '}">
			  		    <SCRIPT>
								var idNo = "<c:out value="${legalEntityValue.idNo}"/>";
                                document.write(idNo.substr(0, idNo.length - 1) + "(" + idNo.substr(idNo.length - 1, idNo.length) + ")");
							</SCRIPT>
                        </c:when>
                        <c:otherwise>
                            <c:out value="${legalEntityValue.idNo}"/>
                        </c:otherwise>
                    </c:choose>
	  		  <c:out value="${legalEntityValue.idType}"/>
  		    )</span></p>
                        <p style="text-align:justify" class="ENGLISH_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;According
                            to our record, the probationary driving period of the respective vehicle class(es) is/are as
                            follows –</p>
                        <table style="border-spacing:0;border: 1px solid;">
                            <tr style="border: 1px solid;">
                                <td style="width:123px; vertical-align:top;border: 1px solid;"><p
                                        style="text-align:center;" class="ENGLISH_FORMAT2">Class(es)</p></td>
                                <td style="width:262px; vertical-align:top;border: 1px solid;"><p
                                        style="text-align:center;" class="ENGLISH_FORMAT2">Start Date</p></td>
                                <td style="width:262px; vertical-align:top;border: 1px solid;"><p
                                        style="text-align:center;" class="ENGLISH_FORMAT2">Date of Completion of<br>Probationary
                                    Driving Period</p></td>
                            </tr>
                            <c:forEach var="entitlementValue" items="${entitlementValues}">
                                <tr>
                                    <td style="width:91px; vertical-align:top;border: 1px solid;"><p
                                            style="text-align:center;">
                                        <c:choose>
                                            <c:when test="${entitlementValue.autoTransmission=='A'}">
                                                <c:choose>
                                                    <c:when test="${entitlementValue.deCode < 10}">
                                                        <c:out value="0${entitlementValue.deCode}A"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="${entitlementValue.deCode}A"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${entitlementValue.deCode < 10}">
                                                        <c:out value="0${entitlementValue.deCode}"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="${entitlementValue.deCode}"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:otherwise>
                                        </c:choose>
                                    </p></td>
                                    <td style="width:234px; vertical-align:top;border: 1px solid;"><p
                                            style="text-align:center"><fmt:formatDate
                                            value="${entitlementValue.startDate}" pattern="dd/MM/yyyy"/></p></td>
                                    <td style="width:234px; vertical-align: top;border: 1px solid;"><p
                                            style="text-align:center"><fmt:formatDate value="${entitlementValue.ppcd}"
                                                                                      pattern="dd/MM/yyyy"/></p></td>
                                </tr>
                            </c:forEach>
                        </table>
                        <p style="text-align:justify" class="ENGLISH_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your
                            current probationary driving licence is valid up to
                            <fmt:formatDate value="${probationaryDlValue.uptoDateProbationary}" pattern="dd/MM/yyyy"/>. 
                            Please note that the probationary driving period of each vehicle class, if started on
                            different date, shall be counted individually.
                            <b>The period that you do not hold a valid probationary driving licence is excluded from
                                calculating your probationary driving period.</b>
                            If the requisite probationary driving period of any probationary vehicle class has not yet
                            been fulfilled upon expiry of the probationary driving licence, you should renew the
                            probationary driving licence during the period between 15 days before its expiry and 3 years
                            after its expiry in order to continue to complete the required remaining probationary
                            driving period.</p>
                        <p style="text-align:justify">      <span class="ENGLISH_FORMAT2">You can apply for full  driving licence for the respective vehicle class(es) within 3 years after the  date of completion of the relevant probationary driving period for the relevant vehicle  class; otherwise, you will have to re-apply  for a learner's driving licence, pass the driving test of the relevant vehicle  class(es) and complete the probationary driving period again before you can apply for  a full driving licence for the respective vehicle class(es).</span>
                        </p>
                        <p style="text-align:justify">      <span class="ENGLISH_FORMAT2">The above information is  based on the current data kept in our computer record updated till the day  before the issue of this letter and is therefore for reference only. The above information is subject to change if  there is any update affecting your driving licence record including  disqualification, expiry of driving licence and conviction of offences specified  in the Twelfth Schedule of the Road Traffic (Driving Licences) Regulations,  Cap. 374B or in the Road Traffic (Driving-offence Points) Ordinance, Cap. 375.</span>
                        </p>
                        <p style="text-align:justify">&nbsp;</p>
                        <table style="width:100%; border:0; border-spacing:0;">
                            <tr>
                                <td style="width:60%; vertical-align:top">&nbsp;</td>
                                <td style="width:40%; vertical-align:top"><p style="text-align:center"
                                                                             class="ENGLISH_FORMAT2">Yours
                                    faithfully,</p></td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top">&nbsp;</td>
                                <td style="width:40%; vertical-align:top"><p>&nbsp; </p></td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top">&nbsp;</td>
                                <td style="width:60%; vertical-align:top"><p>&nbsp; </p></td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top">&nbsp;</td>
                                <td style="width:40%; vertical-align:top"><p style="text-align:center"
                                                                             class="ENGLISH_FORMAT2">
                                    (                                       )</p></td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top">&nbsp;</td>
                                <td style="width:40%; vertical-align:top"><p style="text-align:center"
                                                                             class="ENGLISH_FORMAT2">for Commissioner
                                    for Transport</p></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<DIV style="PAGE-BREAK-BEFORE: always" class="page1">&nbsp;</DIV>
<table style="width:650px; border:0; border-spacing:0; margin-left:auto; margin-right:auto;">
    <tr>
        <td>
            <table style="width:100%; border:0; border-spacing:1px; margin-left:auto; margin-right:auto;">
                <tr>
                    <td style="padding:2px"><p>&nbsp;</p>
                        <p><img style="border:0" alt="Logo" src="<print:BlankFormPrint imageName='logo.gif'/>"></p>
                        <p>&nbsp;</p>
                        <table style="width:100%; border:0; border-spacing:0; margin-left:auto; margin-right:auto;">
                            <tr>
                                <td style="vertical-align:top; padding: 2px"><p class="CHINESE_FORMAT2">本署檔號：
                                    <c:out value="${requestScope.printLogTxnNo}"/></p></td>
                            </tr>
                        </table>
                        <p class="CHINESE_FORMAT2"><c:choose>
                            <c:when test="${legalEntityValue.nameChi =='' ||legalEntityValue.nameChi ==null}">
                                <codetable:out value="<%=CodeTableConstant.TITLE_CODE%>"
                                               formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                               language="<%=CodeTableConstant.ENGLISH%>"
                                               selected="${legalEntityValue.titleCode}"></codetable:out> <c:out
                                    value="${legalEntityValue.nameEng}"/>
                            </c:when>
                            <c:otherwise>
                                <span style="font-family:MingLiU_HKSCS;"><c:out
                                        value="${legalEntityValue.nameChi}"/></span><codetable:out
                                    value="<%=CodeTableConstant.TITLE_CODE%>"
                                    formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                    language="<%=CodeTableConstant.CHINESE%>"
                                    selected="${legalEntityValue.titleCode}"></codetable:out>
                            </c:otherwise>
                        </c:choose> ： </p>
                        <p style="text-align:center"><strong
                                class="CHINESE_FORMAT1"><u>暫准駕駛期完成日</u></strong><br>
                            <span class="CHINESE_FORMAT2">(駕駛執照號碼：
			  		<c:choose>
                        <c:when test="${legalEntityValue.idType =='' ||legalEntityValue.idType ==' '}">
			  		    <SCRIPT>
								var idNo = "<c:out value="${legalEntityValue.idNo}"/>";
                                document.write(idNo.substr(0, idNo.length - 1) + "(" + idNo.substr(idNo.length - 1, idNo.length) + ")");
							</SCRIPT>
                        </c:when>
                        <c:otherwise>
                            <c:out value="${legalEntityValue.idNo}"/>
                        </c:otherwise>
                    </c:choose>
	  		  <c:out value="${legalEntityValue.idType}"/>
  		    )</span></p>

                        <p class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根據本署記錄，你的下列車輛類別的暫准駕駛期為：</p>
                        <table style="border:1px solid; border-spacing:0;">
                            <tr>
                                <td style="width:123px; vertical-align:top; padding: 2px;border: 1px solid;"><p
                                        style="text-align:center" class="CHINESE_FORMAT2">車類類別</p></td>
                                <td style="width:262px; vertical-align:top; padding: 2px;border: 1px solid;"><p
                                        style="text-align:center" class="CHINESE_FORMAT2">開始日期</p></td>
                                <td style="width:262px; vertical-align:top; padding: 2px;border: 1px solid;"><p
                                        style="text-align:center" class="CHINESE_FORMAT2">暫准駕駛期完成日</p></td>
                            </tr>
                            <c:forEach var="entitlementValue" items="${entitlementValues}">
                                <tr>
                                    <td style="width:89px; vertical-align:top; padding: 2px;border: 1px solid;"><p
                                            style="text-align:center">
                                        <c:choose>
                                            <c:when test="${entitlementValue.autoTransmission=='A'}">
                                                <c:choose>
                                                    <c:when test="${entitlementValue.deCode < 10}">
                                                        <c:out value="0${entitlementValue.deCode}A"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="${entitlementValue.deCode}A"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${entitlementValue.deCode < 10}">
                                                        <c:out value="0${entitlementValue.deCode}"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:out value="${entitlementValue.deCode}"/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:otherwise>
                                        </c:choose>
                                    </p></td>
                                    <td style="width:230px; vertical-align:top; padding: 2px;border: 1px solid;"><p
                                            style="text-align:center"><fmt:formatDate
                                            value="${entitlementValue.startDate}" pattern="dd/MM/yyyy"/></p></td>
                                    <td style="width:220px; vertical-align:top; padding: 2px;border: 1px solid;"><p
                                            style="text-align:center"><fmt:formatDate value="${entitlementValue.ppcd}"
                                                                                      pattern="dd/MM/yyyy"/></p></td>
                                </tr>
                            </c:forEach>
                        </table>
                        <table style="width:100%; border:0; border-spacing:0;">
                            <tr>
                                <td style="width:100%; vertical-align:top; padding: 2px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width:100%; vertical-align:top; padding: 2px">
                                    <p style="text-align:justify" class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你現時的暫准駕駛執照有效期至<fmt:formatDate
                                            value="${probationaryDlValue.uptoDateProbationary}" pattern="dd/MM/yyyy"/>。請注意，如果你在不同時間申領不同的汽車種類的暫准駕駛執照，每種類汽車的暫准駕駛期將個別計算。<b>你沒有持有有效暫准駕駛執照的期間不會計算在你的暫准駕駛期內。</b>如果在暫准駕駛執照屆滿時你仍未完成某種類汽車所需的暫准駕駛期，你須於暫准駕駛執照屆滿前15日至屆滿後3年內續領暫准駕駛執照，以繼續完成餘下所需的暫准駕駛期。
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:100%; vertical-align:top; padding: 2px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width:100%; vertical-align:top; padding: 2px">
                                    <p style="text-align:justify" class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你可在完成有關車輛類別的暫准駕駛期後三年內申領該車輛類別的正式駕駛執照；否則，你須重新申請及通過有關車輛類別駕駛考試，並在再完成暫准駕駛期後，才能申請該車輛類別的正式駕駛執照。</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:100%; vertical-align:top; padding: 2px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width:100%; vertical-align:top; padding: 2px">
                                    <p style="text-align:justify" class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以上資料是根據本署電腦系統內現時資料提供，並只更新至本函件發出的前一天，因此只供參考之用。如你的駕駛執照記錄其後有任何改變，包括駕駛執照被取消、駕駛執照過期及觸犯香港法例第374B章《道路交通（駕駛執照）規例》附表12或香港法例第375章《道路交通（違例駕駛記分）條例》內所述的罪行而被定罪，上述相關資料需作出相應更改。</p>
                                </td>
                            </tr>
                        </table>
                        <p style="text-align:justify">&nbsp;</p>
                        <table style="width:100%; border:0; border-spacing:0;">
                            <tr>
                                <td style="width:60%; vertical-align:top; padding: 2px">&nbsp;</td>
                                <td style="width:40%; vertical-align:top; padding: 2px"><p style="text-align:center"
                                                                                           class="CHINESE_FORMAT2">
                                    運輸署署長</p></td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top; padding: 2px">&nbsp;</td>
                                <td style="width:40%; vertical-align:top; padding: 2px"><p>&nbsp; </p></td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top; padding: 2px">&nbsp;</td>
                                <td style="width:40%; vertical-align:top; padding: 2px"><p style="text-align:center">
                                    (                                     <span class="CHINESE_FORMAT2">代行</span>)</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top; padding: 2px">&nbsp;</td>
                                <td style="width:40%; vertical-align:top; padding: 2px"><p style="text-align:center">
                                    &nbsp;</p></td>
                            </tr>
                            <tr>
                                <td style="width:60%; vertical-align:top; padding: 2px"><p style="text-align:left"
                                                                                           class="CHINESE_FORMAT2">
                                    <fmt:formatDate value="${ppcdPageValue.currentDate}" pattern="yyyy"/> 年
                                    <fmt:formatDate value="${ppcdPageValue.currentDate}" pattern="MM"/> 月
                                    <fmt:formatDate value="${ppcdPageValue.currentDate}" pattern="dd"/> 日</p></td>
                                <td style="width:40%; vertical-align:top; padding: 2px">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>