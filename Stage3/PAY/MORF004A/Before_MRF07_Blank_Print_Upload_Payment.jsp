<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.Util,
                 hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.CodeTableConstant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="UPLOAD_PAYMENT_Value"><%=RequestConstant.PAYMENT_REFUND_DESC%></c:set>
<c:set var="UPLOAD_PAYMENT_AMOUNT"><%=RequestConstant.REFUND_CASE_DETAIL_AMOUNT%></c:set>
<c:set var="uploadPaymentPrint" value="${requestScope[UPLOAD_PAYMENT_Value]}"/>
<c:set var="uploadPaymentAmount" value="${requestScope[UPLOAD_PAYMENT_AMOUNT]}"/>
<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"dd/MM/yyyy")%></c:set>
<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"HH:mm:ss")%></c:set>
<c:set var="currencySymbol"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>


<html>
<head>
<title>&nbsp;</title>
<meta charset="UTF-8">
<meta name="footer" content="&b&p of &P">
<meta name="margin-top" content="19.05">
<meta name="margin-bottom" content="19.05">  
<meta name="margin-left" content="19.05">    
<meta name="margin-right" content="19.05">   
<meta name="copies" content="1">             
<meta name="papersize" content="A4">         
<meta name="orientation" content="1">        
<meta name="duplex" content="0">             
</head>

<body>
<c:choose>
    <c:when test="${caseStatus.first}"></c:when>
    <c:otherwise>
        <DIV CLASS=page>
    </c:otherwise>
</c:choose>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr>
    <td style="width: 20%; vertical-align: top;"><span style="font-size: 12px;"><b>REPORT ID: RORF004A</b></span></td>
    <td style="width: 60%; vertical-align: top; text-align: center;"><span style="font-size: 12px;"><b><%=PaymentConstant.BLANK_PRINT_TITLE%></b></span></td>
    <td style="width: 20%; vertical-align: top; text-align: right;"><span style="font-size: 12px;"><b>RUNDATE:<c:out value="${runDate}"/></b></span></td>
  </tr>
  <tr>
    <td style="width: 20%; vertical-align: top;"><span style="font-size: 12px;"><b>SEQ : CASE NO.</b></span></td>
    <td style="width: 60%; vertical-align: top;">
      <div style="text-align: center;"><span style="font-size: 12px;"><b>WPOCS PAYMENT REPORT</b></span></div>
    </td>
    <td style="width: 20%; vertical-align: top; text-align: right;"><span style="font-size: 12px;"><b>PAGE: 1</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
<br><br>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr>
    <td style="width: 11%; vertical-align: top;"><u><span style="font-size: 12px;">CASE NO.<br>REFUND CASE TYPE</span></u></td>
    <td style="width: 10%; vertical-align: top;"><u><span style="font-size: 12px;">REFERENCE<br>PAYEE NAME</span></u></td>
    <td style="width: 9%; vertical-align: top;"><u><span style="font-size: 12px;">CASE CREATE DATE</span></u></td>
    <td style="width: 15%; vertical-align: top;"><u><span style="font-size: 12px;">PAYMENT VOUCHER NO.<br>TREASURY VOUCHER NO.</span></u></td>
    <td style="width: 10%; vertical-align: top;"><u><span style="font-size: 12px;">PAYMENT DATE</span></u></td>
    <td style="width: 8%; vertical-align: top;"><u><span style="font-size: 12px;">PAYMENT AMOUNT</span></u></td>
    <td style="width: 10%; vertical-align: top;"><u><span style="font-size: 12px;">CHEQUE NUMBER</span></u></td>
    <td style="width: 5%; vertical-align: top;"><u><span style="font-size: 12px;">RA NO.</span></u></td>
    <td style="width: 32%; vertical-align: top;"><u><span style="font-size: 12px;">SYSTEM MESSAGE</span></u></td>
  </tr>
  
  <c:forEach var="amountValues" items="${uploadPaymentPrint}">
  <tr><td colspan="9">&nbsp;</td></tr>
  <tr>
         <td style="vertical-align: top;"><span style="font-size: 12px;"><c:out value="${amountValues.caseNo}"/><br><c:out value="${amountValues.caseType}"/></span></td>
         <td style="vertical-align: top;"><span style="font-size: 12px;">
                         <c:out value="${amountValues.idNo}"/><br>
                         <c:if test="${!empty amountValues.regMark}">
                            <c:out value="${amountValues.regMark}"/><br>
                         </c:if>
                         <c:if test="${!empty amountValues.permitNo}">
                            <c:out value="${amountValues.permitNo}"/><br>
                         </c:if>
                         <c:out value="${amountValues.payeeName}"/>
                         </span>
         </td>
         <td style="vertical-align: top;"><span style="font-size: 12px;"><fmt:formatDate  value="${amountValues.openDate}" pattern="dd/MM/yyyy "/></span></td>
         <td style="vertical-align: top;"><span style="font-size: 12px;"><c:out value="${amountValues.paymentVouchaNo}"/><br><c:out value="${amountValues.tryVoucherNo}"/></span></td>
         <td style="vertical-align: top;"><span style="font-size: 12px;"><fmt:formatDate  value="${amountValues.paymentDate}" pattern="dd/MM/yyyy "/></span></td>
         <td style="vertical-align: top;"><span style="text-align: right;font-size: 12px;"><fmt:formatNumber value="${amountValues.paymentAmount}" currencySymbol="${currencySymbol}" type="currency"/></span></td>
        <td style="vertical-align: top;"><span style="font-size: 12px;"><c:out value="${amountValues.chequeNo}"/></span></td>
        <td style="vertical-align: top;"><span style="text-align: right;font-size: 12px;">
	 <c:if test="${amountValues.raNo!=0}">
	    <c:out value="${amountValues.raNo}"/>
	 </c:if>
	 </span></td>
	 <td style="vertical-align: top;">
	     <span style="font-size: 12px;">
	     <c:out value="${amountValues.errorMessage}"/>
	     </span>
         </td>
  </tr>
  </c:forEach>

  <tr>
    <td style="vertical-align: top;" >&nbsp;</td>
    <td style="vertical-align: top;" >&nbsp;</td>
    <td style="vertical-align: top;" >&nbsp;</td>
    <td style="vertical-align: top;" >&nbsp;</td>
    <td style="vertical-align: top;" ><div style="text-align: right;"><b><u><span style="font-size: 12px;">TOTAL:</span></u></b></div></td>
    <td style="vertical-align: bottom;" >
       <b><u><span style="font-size: 12px;" ><fmt:formatNumber value="${uploadPaymentAmount}" currencySymbol="${currencySymbol}" type="currency"/>
       </span></u></b></td>
    <td style="vertical-align: top;" >&nbsp;</td>
    <td style="vertical-align: top;">

    </td>
    <td style="display: none"></td>
  </tr>
</table>
<br><br>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
  <tr>
    <td style="text-align: center;"><span style="font-size: 12px;" ><b>*** END OF REPORT ***</b></span></td>
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