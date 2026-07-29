<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.Util,
                 hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.CodeTableConstant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="Request_Name_Of_RC_Value"><%=PaymentConstant.BLANK_PRINT_REFUND_CASE_LIST_VALUE%></c:set>

<c:set var="dcCasePrintValues" value="${requestScope[Request_Name_Of_RC_Value]}"/>

<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"dd/MM/yyyy")%></c:set>

<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"HH:mm")%></c:set>

<c:set var="currencySymbol"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>


<html lang="en">
<head>
<title>&nbsp;</title>
<meta charset="UTF-8">
<meta name="margin-top" content="19.05">
<meta name="margin-bottom" content="19.05">  
<meta name="margin-left" content="19.05">    
<meta name="margin-right" content="19.05">   
<meta name="copies" content="1">             
<meta name="papersize" content="A4">         
<meta name="orientation" content="1"> 
<meta name="duplex" content="0"> 
</head>

<!--
<style type="text/css">

body {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt}
td {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt}

DIV.page{page-break-before: always}

</style>
-->

<body style="background-color: #FFFFFF; color: #000000;">

<c:forEach var="dcCasePrintValue" items="${dcCasePrintValues}" varStatus="caseStatus">
<c:if test="${caseStatus.count == 1}" >
    <c:set var="tagInformation" value="${dcCasePrintValue}"/>
</c:if>
<c:if test="${caseStatus.count == 2}" >
    <c:set var="caseInformation" value="${dcCasePrintValue}"/>
</c:if>
<c:if test="${caseStatus.count == 3}" >
    <c:set var="officeInformation" value="${dcCasePrintValue}"/>
</c:if>
</c:forEach>

<c:choose>
    <c:when test="${caseStatus.first}"></c:when>
    <c:otherwise>
        <DIV CLASS=page>
    </c:otherwise>
</c:choose>

<p>&nbsp;</p>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
  <tr>
    <td style="width: 30%; vertical-align: top;"><b>REPORT ID : RORF003O</b></td>
    <td style="width: 65%; text-align: center; vertical-align: top;">
      <b><%=PaymentConstant.BLANK_PRINT_TITLE%></b>
    </td>
    <td style="width: 20%; vertical-align: top;"><b>RUNDATE:<c:out value="${runDate}"/></b></td>
  </tr>
  <tr>
    <td style="width: 30%;"><b>SEQ:TAG&nbsp;NO</b></td>
    <td style="width: 65%;">
      <div style="text-align: center;"><b>TAG&nbsp;CONTROL&nbsp;LIST&nbsp;FOR&nbsp;REFUND&nbsp;CASES</b></div>
    </td>
    <td style="width: 20%;"><b>PAGE: 1</b></td>
  </tr>
  <tr>
    <td style="width: 20%;">&nbsp;</td>
    <td style="width: 65%;">
      <div style="text-align: center;"><b>(GENERATED&nbsp;AS&nbsp;AT: <c:out value="${generatedTime}"/>)</b></div>
    </td>
    <td style="width: 20%;">&nbsp;</td>
  </tr>
</table>
<br>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
  <tr>
    <td style="width: 23%;">OFFICE:</td>
    <td style="width: 45%;"><c:out value="${tagInformation.officeCode}"/>-<c:out value="${officeInformation.officeNameEng}"/></td>
    <td style="width: 15%;">TAGGED&nbsp;BY:</td>
    <td style="width: 17%;"><c:out value="${tagInformation.taggedOperator}"/></td>
  </tr>
  <tr><td style="width: 90%; height: 10px;" colspan="4"></td></tr>
  <tr>
    <td style="width: 23%;">TAG&nbsp;NUMBER:</td>
    <td style="width: 45%;"><c:out value="${tagInformation.tagNo}"/></td>
    <td style="width: 15%;">TAGGED&nbsp;TIME:</td>
    <td style="width: 17%;"><fmt:formatDate value="${tagInformation.txnDate}" pattern="dd/MM/yyyy HH:mm"/></td>
  </tr>
  <tr><td style="width: 90%; height: 10px;" colspan="4"></td></tr>
  <tr>
    <td style="width: 23%;">NO.&nbsp;OF&nbsp;TAGGED&nbsp;CASES:</td>
    <td style="width: 45%;"><c:out value="${tagInformation.noCaseTagged}"/></td>
    <td style="width: 15%;">&nbsp;</td>
    <td style="width: 17%;">&nbsp;</td>
  </tr>
</table>
<br>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
  <tr>
    <td style="width: 21%;"><b><u>CASE&nbsp;TYPE</u></b></td>
    <td style="width: 12%;"><b><u>CASE&nbsp;NO</u></b></td>
    <td style="width: 16%;"><b><u>REFERENCE</u></b></td>
    <td style="width: 14%;"><b><u>PAYEE&nbsp;NAME</u></b></td>
    <td style="width: 18%;"><b><u>UPDATE&nbsp;DATE/TIME</u></b></td>
    <td style="width: 19%;"><b><u>CASE&nbsp;CREATE&nbsp;DATE</u></b></td>
    <td style="width: 12%;"><b><u>AMOUNT</u></b></td>
  </tr>
  <tr><td style="width: 100%; height: 10px;" colspan="7"></td></tr>
  <c:set var="chequeAmountSum" value="0.00"/>

  <c:forEach var="caseDetailValues" items="${caseInformation}" >
      <c:set var="chequeAmountSum" value="${chequeAmountSum+caseDetailValues.refundAmount}"/>
          <tr>
            <td style="vertical-align: top;"><c:out value="${caseDetailValues.caseType}"/></td>
            <td style="vertical-align: top;"><c:out value="${caseDetailValues.caseNo}"/></td>
            <td style="vertical-align: top;">                
                <c:if test="${!empty caseDetailValues.idNo}">
                    <c:out value="${caseDetailValues.idNo}"/>
                    
                </c:if>
                <c:if test="${!empty caseDetailValues.regMark}">
                    <br><c:out value="${caseDetailValues.regMark}"/>
                </c:if>
                <c:if test="${!empty caseDetailValues.permitNo}">
                    <br><c:out value="${caseDetailValues.permitNo}"/>
                </c:if>                
            </td>
            <td style="vertical-align: top;"><c:out value="${caseDetailValues.payeeName}"/></td>
            <td style="vertical-align: top;"><fmt:formatDate value="${caseDetailValues.txnDate}" pattern="dd/MM/yyyy HH:mm"/></td>
            <td style="vertical-align: top;"><fmt:formatDate value="${caseDetailValues.openDate}" pattern="dd/MM/yyyy"/></td>
            <td style="vertical-align: top; text-align: right;"><fmt:formatNumber value="${caseDetailValues.refundAmount}" currencySymbol="${currencySymbol}" type="currency"/>&nbsp;</td>
          </tr>
	  <tr><td style="width: 100%; height: 10px;" colspan="7"></td></tr>
  </c:forEach>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td style="height: 1px; background-color: #000000;"></td>
    <td style="height: 1px; background-color: #000000;"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>TOTAL:</td>
    <td style="text-align: right;">
      <fmt:formatNumber value="${chequeAmountSum}" currencySymbol="${currencySymbol}" type="currency"/>&nbsp;
    </td>
  </tr>
</table>
<br>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
  <tr>
    <td style="text-align: center;">*** END OF REPORT ***</td>
  </tr>
</table>
    <c:choose>
        <c:when test="${caseStatus.first}"></c:when>                            
        <c:otherwise>
            </DIV>
        </c:otherwise>
    </c:choose>

</body>
</html>
