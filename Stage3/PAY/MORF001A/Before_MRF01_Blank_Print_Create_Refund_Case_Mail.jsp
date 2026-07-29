<!DOCTYPE html>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ page import="hk.gov.valid.util.Util"%>
<%@ page import="hk.gov.valid.payment.util.PaymentConstant"%>

<c:set var="CREATE_REFUND_CASE_MAIL"><%=PaymentConstant.BLANK_PRINT_CREATE_REFUND_CASE_MAIL_VALUE%></c:set>
<c:set var="mailValues" value="${requestScope[CREATE_REFUND_CASE_MAIL]}"/>

<c:set var="REFUND_OFFICE_CODE_VALUE"><%=PaymentConstant.REFUND_OFFICE_CODE_VALUE%></c:set>
<c:set var="issuePrintingCtlValue" value="${requestScope[REFUND_OFFICE_CODE_VALUE]}"/>

<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"dd/MM/yyyy")%></c:set>
<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"HH:mm")%></c:set>
<c:set var="deadLineDate"><%=Util.getTimestampString(Util.addDate(Util.getOnlineBusinessDate(),10),"dd/MM/yyyy")%></c:set>

<c:set var="runDateYear"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"yyyy")%></c:set>
<c:set var="runDateMonth"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"MM")%></c:set>
<c:set var="runDateDay"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"dd")%></c:set>

<html lang="en">

<head>
<title>&nbsp;</title>
<!--Amended by Kelvin Tang on 2016-05-13 for CR-2015-012 (MS IE) begin -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--Amended by Kelvin Tang on 2016-05-13 for CR-2015-012 (MS IE) end -->
<meta charset="UTF-8">
<meta name="margin-top" content="0.5">
<meta name="margin-bottom" content="0.5">  
<meta name="margin-left" content="19.05">    
<meta name="margin-right" content="19.05">   
<meta name="copies" content="1">             
<meta name="papersize" content="A4">         
<meta name="orientation" content="0"> 
<meta name="duplex" content="2">                    
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:PMingLiU;
	panose-1:2 2 3 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 2 3 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
h1
	{margin:0cm;
	margin-bottom:.0001pt;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Times New Roman";
	text-decoration:underline;}
 /* Page Definitions */
 @page Section1
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	layout-grid:15.6pt;}
div.Section1
	{page:Section1;}
-->
DIV.chinese { page-break-before: always }
</style>

</head>

<body lang=ZH-CN style='text-justify-trim:punctuation'>

<c:forEach var="mailValue" items="${mailValues}" varStatus="caseStatus">
    <c:if test ="${caseStatus.count == 1}">
        <c:set var="refundCaseValue" value="${mailValue}"/>
    </c:if>
</c:forEach>

<c:set var="txnNo" value="${refundCaseValue.txnNo}"/>

<c:set var="refNoString" value=""/>
<c:if test="${!empty refundCaseValue.idNo}">
    <c:choose>
    <c:when test="${!empty refundCaseValue.idType && refundCaseValue.idType != ' '}">
        <c:set var="refNoString" value="${refundCaseValue.idNo}"/>
    </c:when>
    <c:otherwise>
        <c:set var="refNoString" value=""/>
    </c:otherwise>
    </c:choose>
</c:if>
<c:if test="${!empty refundCaseValue.regMark}">
    <c:choose>
    <c:when test="${!empty refNoString}">
        <c:set var="refNoString" value="${refNoString} / ${refundCaseValue.regMark}"/>
    </c:when>
    <c:otherwise>
        <c:set var="refNoString" value="${refundCaseValue.regMark}"/>
    </c:otherwise>
    </c:choose>
</c:if>
<c:if test="${!empty refundCaseValue.permitNo}">
    <c:choose>
    <c:when test="${!empty refNoString}">
        <c:set var="refNoString" value="${refNoString} / ${refundCaseValue.permitNo}"/>
    </c:when>
    <c:otherwise>
        <c:set var="refNoString" value="${refundCaseValue.permitNo}"/>
    </c:otherwise>
    </c:choose>
</c:if>

<c:choose>
    <c:when test="${caseStatus.first}"></c:when>
    <c:otherwise>
        <DIV CLASS=page>
    </c:otherwise>
</c:choose>

<!--<div style="text-align: center;">-->

<div style="text-align: center;">

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 579px; margin: 0 auto;'>
 <tr>
  <td style='vertical-align: top; width:565pt;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 134px;'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  line-height:16.0pt'>
  <img src="<print:BlankFormPrint imageName='logo.gif'/>" width="263" height="88" alt=""><br>
  <span lang=EN-US>Our Ref: &nbsp;<b><c:out value="${txnNo}"/></b></span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US>Tel No.: &nbsp;<b><c:out  value="${issuePrintingCtlValue.telNo1}"/></b></span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:right;word-break:break-all'>
  <span
  lang=EN-US style='color:black; font-weight:700'><c:out value="${runDate}"/></span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  line-height:19.0pt'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  line-height:19.0pt'><span lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  line-height:19.0pt'><span lang=EN-US>Dear Sir/Madam,</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:565pt;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 199px;'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <h1 style='text-align:center'><span lang=EN-US>Application for
  Refund</span></h1>
  <p class=MsoNormal style='text-align:center;line-height:19.0pt'><span
  lang=EN-US>Ref: &nbsp;<b><c:out value="${refundCaseValue.caseNo}"/><c:if test="${!empty refNoString}"><c:out value=" & "/></c:if><c:out  value="${refNoString}"/></b></span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  line-height:19.0pt'><span lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  line-height:15pt'><span lang=EN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your application for refund &nbsp;is received on &nbsp;<fmt:formatDate  value="${refundCaseValue.openDate}" pattern="dd/MM/yyyy"/>.&nbsp; The Treasury will send the refund cheque to you by mail.&nbsp; For enquiries about the arrangement for refund, please
  contact our Account Office at 2804 2588 or 2804 2589.&nbsp;&nbsp; If you have
  other enquiries about the above application, please contact &nbsp;<c:out  value="${issuePrintingCtlValue.contactNameEng}"/>&nbsp; direct.</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  text-indent:24.0pt;line-height:19.0pt'><span lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:565pt;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 104px;'>
  <p class=MsoNormal style='margin-left:252.0pt;text-align:justify;text-justify:
  inter-ideograph;line-height:15pt'><span lang=EN-US>&nbsp;&nbsp;&nbsp;  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang=EN-US>Yours
  faithfully,</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:right;text-indent:24.0pt;
  line-height:15pt'><span lang=EN-US>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
  <p class=MsoNormal style='text-align:right;text-indent:24.0pt;
  line-height:15pt'><span lang=EN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for&nbsp; Commissioner for Transport</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span lang=EN-US style="display: block;text-align: center;"><c:out value="${issuePrintingCtlValue.officeAddressEng}"/></span></p>
  </td>
 </tr>
</table>
<DIV class=chinese>
<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 579px;'>
 <tr>
  <td style='vertical-align: top; width:565pt;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 80px;'>
  <img src="<print:BlankFormPrint imageName='logo.gif'/>" width="263" height="88" alt="">
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  line-height:16.0pt'><span lang=ZH-TW style='font-size:11.0pt;font-family:
  PMingLiU'>本</span><span lang=ZH-TW style='font-size:11.0pt'> </span><span
  lang=ZH-TW style='font-size:11.0pt;font-family:PMingLiU'>署</span><span
  lang=ZH-TW style='font-size:11.0pt'> </span><span lang=ZH-TW
  style='font-size:11.0pt;font-family:PMingLiU'>檔</span><span lang=ZH-TW
  style='font-size:11.0pt'> </span><span lang=ZH-TW style='font-size:11.0pt;
  font-family:PMingLiU'>號：</span><span
  lang=EN-US style='font-size:11.0pt'>&nbsp;<b><c:out value="${txnNo}"/></b></span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=ZH-TW style='font-size:11.0pt;font-family:PMingLiU'>電</span><span
  lang=ZH-TW style='font-size:11.0pt'> </span><span lang=ZH-TW
  style='font-size:11.0pt;font-family:PMingLiU'>話</span><span lang=ZH-TW
  style='font-size:11.0pt'> </span><span lang=ZH-TW style='font-size:11.0pt;
  font-family:PMingLiU'>號</span><span lang=ZH-TW style='font-size:11.0pt'> </span><span
  lang=ZH-TW style='font-size:11.0pt;font-family:PMingLiU'>碼：</span><span
  lang=EN-US style='font-size:11.0pt'>&nbsp;<b><c:out  value="${issuePrintingCtlValue.telNo1}"/></b></span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=ZH-TW style='font-family:PMingLiU;color:black'>先生</span><span lang=EN-US
  style='color:black'>/</span><span lang=ZH-TW style='font-family:PMingLiU;
  color:black'>女仕</span><span lang=EN-US style='color:black'>:</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:565pt;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 57px;'>
  <p class=MsoNormal style='text-align:center'><span lang=ZH-TW
  style='font-family:PMingLiU;letter-spacing:1.5pt'>退款申請事宜</span></p>
  <p class=MsoNormal style='text-align:center'><span lang=ZH-TW
  style='font-family:PMingLiU;letter-spacing:1.5pt'>編號：</span><span lang=EN-US
  style='letter-spacing:1.5pt'>&nbsp;<b><c:out value="${refundCaseValue.caseNo}"/><c:if test="${!empty refNoString}"><c:out value=" & "/></c:if><c:out  value="${refNoString}"/></b>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:565pt;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 75px;'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>
  <span lang=EN-US style='color:red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
  <span lang=ZH-TW style='font-family:PMingLiU;letter-spacing:1.5pt'>本署已於</span>
  <span lang=EN-US>&nbsp;<fmt:formatDate  value="${refundCaseValue.openDate}" pattern="dd/MM/yyyy"/>&nbsp; </span><span lang=ZH-TW style='font-family:PMingLiU;letter-spacing:1.5pt'>收到你的退款申請。庫務署會</span>
  <span lang=ZH-TW style='font-family:PMingLiU;letter-spacing:1.5pt'>將相關款項以支票形式直接郵寄給你。如有疑問，請電</span>
  <span lang=EN-US style='letter-spacing:1.5pt'>2804 2588 </span><span lang=ZH-TW
  style='font-family:PMingLiU;letter-spacing:1.5pt'>或</span><span lang=EN-US
  style='letter-spacing:1.5pt'> 2804 2589</span><span lang=ZH-TW
  style='font-family:PMingLiU;letter-spacing:1.5pt'>與本署會計部聯絡。就上述申請，如果你需要進一步資料，可直接向</span><span
  lang=ZH-TW style='font-family:PMingLiU;letter-spacing:1.5pt'><c:out  value="${issuePrintingCtlValue.contactNameChi}"/></span><span lang=ZH-TW
  style='font-family:PMingLiU;letter-spacing:1.5pt'>查詢。</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US style='color:red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:565pt;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 71px;'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:right;line-height:16.0pt'><span
  lang=EN-US style='color:red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span
  lang=ZH-TW style='font-family:PMingLiU;letter-spacing:1.5pt'>運輸署署長&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:right'><span lang=EN-US
  style='letter-spacing:1.5pt'>&nbsp;&nbsp;&nbsp;&nbsp; (&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><span lang=ZH-TW style='font-family:PMingLiU;letter-spacing:1.5pt'>代行</span><span
  lang=EN-US style='letter-spacing:1.5pt'>)</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US style='color:black'>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'><span
  lang=EN-US style='color:black'>&nbsp;<c:out value="${runDateYear}"/>&nbsp;</span><span lang=ZH-TW style='font-family:
  PMingLiU;color:black'>年</span><span lang=EN-US style='color:black'>&nbsp;<c:out value="${runDateMonth}"/>&nbsp;</span><span
  lang=ZH-TW style='font-family:PMingLiU;color:black'>月</span><span lang=EN-US
  style='color:black'>&nbsp;<c:out value="${runDateDay}"/>&nbsp;</span><span lang=ZH-TW style='font-family:PMingLiU;
  color:black'>日</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
  <p class=MsoNormal style='text-align:center;text-indent:46.1pt'><span
  lang=EN-US>&nbsp;</span></p>
  </td>
 </tr>
</table>
</DIV>
</div>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal style='text-align:justify;text-justify:inter-character'>&nbsp;</p>
<p class=MsoNormal><span lang=ZH-TW style="display:block;text-align: center;font-family:PMingLiU;letter-spacing:1.5pt"><c:out value="${issuePrintingCtlValue.officeAddressChi}"/></span></p>
</body>
</html>