<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant,
				 hk.gov.valid.driver.util.DriverConstant,
                 hk.gov.valid.util.Util,
                 hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.CodeTableConstant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="HKD_CURRENCY_SYMBOL" scope="request"><%=DriverConstant.HKD_CURRENCY_SYMBOL%></c:set>

<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"dd/MM/yyyy")%></c:set>

<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"HH:mm:ss")%></c:set>

<c:set var="currencySymbol"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>

<c:set var="AUDIT_ROLL_PRINT_VALUES"><%=RequestConstant.AUDIT_ROLL_PRINT_VALUES%></c:set>
<c:set var="auditRollPrintValues" value="${requestScope[AUDIT_ROLL_PRINT_VALUES]}"/>

<c:set var="spaceWidth" value="10"/>

<c:set var="tempAmt" value="0.00"/>

<html>
<head>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="footer" content="&bPage &p of &P">
<meta name="margin-top" content="0.5">
<meta name="margin-bottom" content="0.5">  
<meta name="margin-left" content="19.05">    
<meta name="margin-right" content="19.05">   
<meta name="copies" content="1">             
<meta name="papersize" content="A4">         
<meta name="orientation" content="1">
<meta name="duplex" content="0">
<title>&nbsp;</title>
<style>
<!--
body {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt}
td {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt}

div.page{page-break-after: always}
table{border-collapse: collapse;}
tbody tr.underline-row td:nth-child(n+13){border-bottom:1px solid #000000;}

-->
</style>
</head>
<body style="background-color: #FFFFFF; color: #000000;">
<div style="margin-top:1.0cm;">
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
<THEAD style="display:table-header-group">
<tr><td>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
  <tr>
    <td style="width: 20%; vertical-align: top;"><b>REPORT&nbsp;ID:MORC006A</b></td>
    <td style="width: 60%; text-align: center; vertical-align: top;">
    <div style="text-align: center;"><b>
    <%=PaymentConstant.BLANK_PRINT_TITLE%></b>
    </div>
    </td>
    <td style="width: 20%; vertical-align: top;"><b>RUN&nbsp;DATE:<c:out value="${runDate}"/></b></td>
  </tr>

  <tr>
    <td style="width: 20%;"><b>SEQ:DATE, TERMINAL</b></td>
    <td style="width: 60%;">
      <div style="text-align: center;"><b>FEE COLLECTION AUDIT REPORT - AUDIT ROLL</b></div>
    </td>
    <td style="width: 20%;"><b><!--PAGE:--></b></td>
  </tr>
</table>
<br>
<br>
</td></tr>
</THEAD>
<TBODY>
<tr><td>
<c:forEach var="auditRollPrintValue" items="${auditRollPrintValues}" varStatus="searchStatus">
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
  <tr>
    <td style="width: 50%;"><b>DATE:<fmt:formatDate value="${auditRollPrintValue.paymentDate}" pattern="dd/MM/yyyy"/></b></td>
    <td style="width: 50%;"><b>TERMINAL:<c:out value="${auditRollPrintValue.workstationId}"/></b></td>
  </tr>
</table>
<br>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
  <tr>
    <td style="vertical-align: top;" >USER</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
        <td style="vertical-align: top;" >TIME</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<td style="vertical-align: top;" >RECEIPT</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<td style="vertical-align: top;" >IND</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
        <td style="vertical-align: top; width: 13%;">TRANS.TYPE</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
        <td style="vertical-align: top;" >ACCT.ID</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<td style="vertical-align: top; width: 8%; text-align: center;">FEE AMT.</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<td style="vertical-align: top; width: 7%; text-align: center;">EPS</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
	<td style="vertical-align: top; width: 7%; text-align: center;">FPS</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
	<td style="vertical-align: top; width: 7%; text-align: center;">CASH</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<td style="vertical-align: top; width: 7%; text-align: center;">CHQ.</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
        <td style="vertical-align: top; width: 8%; text-align: center;">TOTAL</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
        <td style="vertical-align: top;" >RECEIPT RANGE</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
	<td style="vertical-align: top; text-align: center; width: 7%;">CHANGE</td>
	<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
        <td style="vertical-align: top; text-align: center; width: 7%;">OVER COLL.</td>
  </tr>


<c:set var="totalSize" value="${auditRollPrintValue.totalSize}"/>
<c:forEach begin="1" end="${totalSize}" var="i" step="1">

<!-- start first report-->
<c:forEach var="paymentReceivableValue" items="${auditRollPrintValue.firstPayValues}" varStatus="firstStatus">
    <c:if test="${paymentReceivableValue.printOrderNo==i}">
	<c:set var="firstReceiptNo" value=""/>
	<c:set var="lastReceiptNo" value=""/>
	<c:forEach var="paymentTxnValue" items="${paymentReceivableValue.paymentTxnValues}" varStatus="secondStatus">
		<c:set var="oldInterpretation" value=""/>
		<c:forEach var="paymentTxnDetailValue" items="${paymentTxnValue.paymentTxnDetailsValues}" varStatus="thirdStatus">
		<tr class="<c:if test="${secondStatus.first && thirdStatus.first}">underline-row</c:if>">
			<td style="vertical-align: top;" >
				<c:if test="${secondStatus.first && thirdStatus.first}">
					<c:out value="${paymentReceivableValue.operatorId}"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${secondStatus.first && thirdStatus.first}">
					<fmt:formatDate value="${paymentReceivableValue.txnDate}" pattern="HH:mm"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${thirdStatus.first}">
					<c:out value="${paymentTxnValue.receiptNo}"/>
					<c:if test="${firstReceiptNo==''}">
						<c:set var="firstReceiptNo" value="${paymentTxnValue.receiptNo}"/>
					</c:if>
					<c:set var="lastReceiptNo" value="${paymentTxnValue.receiptNo}"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:out value=" "/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${paymentTxnDetailValue.businessTxnInterpretation!=oldInterpretation}">
					<c:out value="${paymentTxnDetailValue.businessTxnInterpretation}"/>
				</c:if>
				<c:set var="oldInterpretation" value="${paymentTxnDetailValue.businessTxnInterpretation}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:out value="${paymentTxnDetailValue.accountId}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
			    <c:if test="${paymentTxnDetailValue.totalAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.totalAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
			    <c:if test="${paymentTxnDetailValue.allocatedEpsAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedEpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
 				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
			    <c:if test="${paymentTxnDetailValue.allocatedFpsAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedFpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
 				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
			    <c:if test="${paymentTxnDetailValue.allocatedCashAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedCashAmount}" currencySymbol="${currencySymbol}" type="currency"/>
 				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
			    <c:if test="${!thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount> 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedChequeAmount}" currencySymbol="${currencySymbol}" type="currency"/>
 			    </c:if>
 			    <c:if test="${thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount + paymentTxnValue.overCollectionAmount > 0}">
					<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
 			    </c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<%--Update by Mickey Yip for ER-2020-001 FPS START --%>
			    <c:if test="${!thirdStatus.first && (tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount > 0)}">
					<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
			    </c:if>
			    <c:if test="${thirdStatus.first && (tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount > 0)}">
					<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount + paymentTxnValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
			    </c:if>
				<%--Update by Mickey Yip for ER-2020-001 FPS END --%>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >&nbsp;</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">&nbsp;</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${thirdStatus.first && paymentTxnValue.overCollectionAmount > 0}">
					<fmt:formatNumber value="${paymentTxnValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</c:forEach>
		<tr>
			<td style="vertical-align: top;" colspan="12">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${paymentReceivableValue.paymentAmount - paymentReceivableValue.overCollectionAmount > 0}">
					<fmt:formatNumber value="${tempAmt + paymentReceivableValue.paymentAmount - paymentReceivableValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${paymentReceivableValue.epsAmount > 0}">
					<fmt:formatNumber value="${paymentReceivableValue.epsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${paymentReceivableValue.fpsAmount > 0}">
					<fmt:formatNumber value="${paymentReceivableValue.fpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${paymentReceivableValue.cashAmount > 0}">
					<fmt:formatNumber value="${paymentReceivableValue.cashAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${paymentReceivableValue.chequeAmount > 0}">
					<fmt:formatNumber value="${tempAmt + paymentReceivableValue.chequeAmount }" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<%--Update by Mickey Yip for ER-2020-001 FPS START --%>
				<c:if test="${paymentReceivableValue.chequeAmount + paymentReceivableValue.cashAmount + paymentReceivableValue.epsAmount + paymentReceivableValue.fpsAmount > 0}">
					<fmt:formatNumber value="${tempAmt + paymentReceivableValue.chequeAmount + paymentReceivableValue.cashAmount + paymentReceivableValue.epsAmount + paymentReceivableValue.fpsAmount }" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<%--Update by Mickey Yip for ER-2020-001 FPS END --%>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top;" >
				<hr><c:out value="${firstReceiptNo}"/> - <c:out value="${lastReceiptNo}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${paymentReceivableValue.changeAmount > 0}">
					<fmt:formatNumber value="${paymentReceivableValue.changeAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>			
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${paymentReceivableValue.overCollectionAmount > 0}">
					<fmt:formatNumber value="${paymentReceivableValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
		</tr>
		<tr><td colspan="29" style="height: 10px;">&nbsp;</td></tr>
    </c:if>
</c:forEach>
<!-- end first report-->

<!-- start second report-->
<c:forEach var="paymentReprintValue" items="${auditRollPrintValue.rePrintValues}" varStatus="firstStatus">
    <c:if test="${paymentReprintValue.printOrderNo==i}">
	<c:forEach var="paymentTxnValue" items="${paymentReprintValue.paymentTxnValues}" varStatus="secondStatus">
		<c:set var="oldInterpretation" value=""/>
		<c:forEach var="paymentTxnDetailValue" items="${paymentTxnValue.paymentTxnDetailsValues}" varStatus="thirdStatus">
		<tr class="<c:if test="${secondStatus.first && thirdStatus.first}">underline-row</c:if>">
			<td style="vertical-align: top;" >
				<c:if test="${secondStatus.first && thirdStatus.first}">
					<c:out value="${paymentReprintValue.operatorId}"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${secondStatus.first && thirdStatus.first}">
					<fmt:formatDate value="${paymentReprintValue.txnDate}" pattern="HH:mm"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${secondStatus.first && thirdStatus.first}">
					<c:out value="${paymentReprintValue.receiptNo}"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${thirdStatus.first}">
					<c:out value="Rpt"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${paymentTxnDetailValue.businessTxnInterpretation!=oldInterpretation}">
					<c:out value="${paymentTxnDetailValue.businessTxnInterpretation}"/>
				</c:if>
				<c:set var="oldInterpretation" value="${paymentTxnDetailValue.businessTxnInterpretation}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:out value="${paymentTxnDetailValue.accountId}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.totalAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.totalAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.allocatedEpsAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedEpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.allocatedFpsAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedFpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.allocatedCashAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedCashAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${!thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount > 0}">
					<fmt:formatNumber value="${paymentTxnDetailValue.allocatedChequeAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<c:if test="${thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount + paymentTxnValue.overCollectionAmount> 0}">
					<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<%--Update by Mickey Yip for ER-2020-001 FPS START --%>
				<c:if test="${!thirdStatus.first && (paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount > 0)}">
					<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<c:if test="${thirdStatus.first && (paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount + paymentTxnValue.overCollectionAmount > 0)}">
					<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount + paymentTxnValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<%--Update by Mickey Yip for ER-2020-001 FPS END --%>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >&nbsp;</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">&nbsp;</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${thirdStatus.first && paymentTxnValue.overCollectionAmount > 0}">
					<fmt:formatNumber value="${paymentTxnValue.overCollectionAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</c:forEach>
	</c:if>
</c:forEach>
<!-- end second report-->

<!-- start third report-->
<c:forEach var="revertPaymentValue" items="${auditRollPrintValue.revertValues}" varStatus="firstStatus">
    <c:if test="${revertPaymentValue.printOrderNo==i}">
	<c:set var="firstReceiptNo" value=""/>
	<c:set var="lastReceiptNo" value=""/>
	<c:set var="totalAmt"  value="0.00"/>
	<c:set var="totalEps"  value="0.00"/>
	<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
	<c:set var="totalFps"  value="0.00"/>
	<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
	<c:set var="totalCash" value="0.00"/>
	<c:set var="totalChq"  value="0.00"/>
	<c:forEach var="revertPaymentValueSub" items="${revertPaymentValue.paymentTxnValues}" varStatus="secondStatus">
		<c:set var="oldInterpretation" value=""/>
		<c:forEach var="paymentTxnDetailValue" items="${revertPaymentValueSub.paymentTxnDetailsValues}" varStatus="thirdStatus">
		<tr class="<c:if test="${secondStatus.first && thirdStatus.first}">underline-row</c:if>">
			<td style="vertical-align: top;" >
				<c:if test="${secondStatus.first && thirdStatus.first}">
					<c:out value="${revertPaymentValue.revertedOperatorId}"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${secondStatus.first && thirdStatus.first}">
					<fmt:formatDate value="${revertPaymentValueSub.revertedDate}" pattern="HH:mm"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${thirdStatus.first}">
					<c:out value="${revertPaymentValueSub.receiptNo}"/>
					<c:if test="${firstReceiptNo==''}">
						<c:set var="firstReceiptNo" value="${revertPaymentValueSub.receiptNo}"/>
					</c:if>
					<c:set var="lastReceiptNo" value="${revertPaymentValueSub.receiptNo}"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${thirdStatus.first}">
					<c:out value="C"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:if test="${paymentTxnDetailValue.businessTxnInterpretation!=oldInterpretation}">
					<c:out value="${paymentTxnDetailValue.businessTxnInterpretation}"/>
				</c:if>
				<c:set var="oldInterpretation" value="${paymentTxnDetailValue.businessTxnInterpretation}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >
				<c:out value="${paymentTxnDetailValue.accountId}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.amount > 0}">
					-<fmt:formatNumber value="${paymentTxnDetailValue.amount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.allocatedEpsAmount > 0}">
					-<fmt:formatNumber value="${paymentTxnDetailValue.allocatedEpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.allocatedFpsAmount > 0}">
					-<fmt:formatNumber value="${paymentTxnDetailValue.allocatedFpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${paymentTxnDetailValue.allocatedCashAmount > 0}">
					-<fmt:formatNumber value="${paymentTxnDetailValue.allocatedCashAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${!thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount > 0}">
					-<fmt:formatNumber value="${paymentTxnDetailValue.allocatedChequeAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<c:if test="${thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount + revertPaymentValueSub.overCollectionAmt> 0}">
					-<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + revertPaymentValueSub.overCollectionAmt}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<%--Update by Mickey Yip for ER-2020-001 FPS START --%>
				<c:if test="${!thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount > 0}">
					-<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<c:if test="${thirdStatus.first && paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount + revertPaymentValueSub.overCollectionAmt> 0}">
					-<fmt:formatNumber value="${tempAmt + paymentTxnDetailValue.allocatedChequeAmount + paymentTxnDetailValue.allocatedCashAmount + paymentTxnDetailValue.allocatedEpsAmount + paymentTxnDetailValue.allocatedFpsAmount + revertPaymentValueSub.overCollectionAmt}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<%--Update by Mickey Yip for ER-2020-001 FPS END --%>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top;" >&nbsp;</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">&nbsp;</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<c:if test="${thirdStatus.first && revertPaymentValueSub.overCollectionAmt > 0}">
					-<fmt:formatNumber value="${revertPaymentValueSub.overCollectionAmt}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
		</tr>
	        <c:set var="totalAmt"  value="${totalAmt + paymentTxnDetailValue.amount}"/>
		<c:set var="totalEps"  value="${totalEps + paymentTxnDetailValue.allocatedEpsAmount}"/>
		<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
		<c:set var="totalFps"  value="${totalFps + paymentTxnDetailValue.allocatedFpsAmount}"/>
		<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
		<c:set var="totalCash" value="${totalCash + paymentTxnDetailValue.allocatedCashAmount}"/>
		<c:if test="${!thirdStatus.first}">
		       <c:set var="totalChq"  value="${totalChq + paymentTxnDetailValue.allocatedChequeAmount}"/>
		</c:if>
		<c:if test="${thirdStatus.first}">
		       <c:set var="totalChq"  value="${totalChq + paymentTxnDetailValue.allocatedChequeAmount + revertPaymentValueSub.overCollectionAmt}"/>
		</c:if>		
		</c:forEach>
	</c:forEach>
		<tr>
			<td style="vertical-align: top;" colspan="12">&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${totalAmt > 0}">
					-<fmt:formatNumber value="${totalAmt}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${totalEps > 0}">
					-<fmt:formatNumber value="${totalEps}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS START --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${totalFps > 0}">
					-<fmt:formatNumber value="${totalFps}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<%--Add by Mickey Yip for ER-2020-001 FPS END --%>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${totalCash > 0}">
					-<fmt:formatNumber value="${totalCash}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${totalChq > 0}">
					-<fmt:formatNumber value="${totalChq}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<%--Update by Mickey Yip for ER-2020-001 FPS START --%>
				<c:if test="${totalChq + totalCash + totalEps + totalFps > 0}">
					-<fmt:formatNumber value="${totalChq + totalCash + totalEps + totalFps}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
				<%--Update by Mickey Yip for ER-2020-001 FPS END --%>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top;" >
				<hr><c:out value="${firstReceiptNo}"/> - <c:out value="${lastReceiptNo}"/>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${revertPaymentValue.changeAmt > 0}">
					-<fmt:formatNumber value="${revertPaymentValue.changeAmt}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
			<td style="vertical-align: top; width: <c:out value='${spaceWidth}'/>px;"><hr>&nbsp;</td>
			<td style="vertical-align: top; text-align: right;">
				<hr>
				<c:if test="${revertPaymentValue.overCollectionAmt > 0}">
					-<fmt:formatNumber value="${revertPaymentValue.overCollectionAmt}" currencySymbol="${currencySymbol}" type="currency"/>
				</c:if>
			</td>
		</tr>
		<tr><td colspan="29" style="height: 10px;">&nbsp;</td></tr>
	</c:if>
</c:forEach>
<!-- end third report-->
<tr><td colspan="29" style="height: 20px;">&nbsp;</td></tr>
</c:forEach>
</table>
</c:forEach>
</td></tr>
</TBODY>
</table>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
  <tr>
    <td style="text-align: center; height: 40px;">*** END OF REPORT ***</td>
  </tr>
</table>
</div>
</body>
</html>