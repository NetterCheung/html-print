<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.Util,
                 hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.CodeTableConstant,
                  hk.gov.valid.driver.util.DriverConstant,
                  java.util.Collection,
                  hk.gov.valid.payment.model.DishonouredChequeCaseValue,
                  hk.gov.valid.payment.model.ConsolidatedSettlePaymentValue"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="TXN_NO_NAME"><%=RequestConstant.TXN_NO%></c:set>
<c:set var="TXN_NO" value="${requestScope[TXN_NO_NAME]}" scope="request"/>

<c:set var="Request_Name_Of_DC_Case_Value"><%=PaymentConstant.DC_CASE_VALUE%></c:set>
<c:set var="dcCaseValues" value="${requestScope[Request_Name_Of_DC_Case_Value]}"/>

<c:set var="Request_TOTAL_AMOUNT"><%=PaymentConstant.TOTAL_AMOUNT%></c:set>
<c:set var="totalAmount" value="${requestScope[Request_TOTAL_AMOUNT]}"/>

<c:set var="Request_TOTAL_SETTLE_AMOUNT"><%=PaymentConstant.TOTAL_SETTLE_AMOUNT%></c:set>
<c:set var="totalSettleAmount" value="${requestScope[Request_TOTAL_SETTLE_AMOUNT]}"/>

<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"dd/MM/yyyy")%></c:set>
<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"HH:mm:ss")%></c:set>

<c:set var="deadLineDate"><%=Util.getTimestampString(Util.addDate(Util.getOnlineBusinessDate(),10),"dd/MM/yyyy")%></c:set>
<c:set var="FEE_TYPE_CODE_R" scope="request" ><%=PaymentConstant.FEE_TYPE_CODE_R%></c:set>
<c:set var="currencySymbol"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>

<c:set var="settlePaymentDcRecBusinessValues" value="${sessionScope.settlePaymentDcRecBusiness}"/>

<html>
<head>
<title>Dishonoured Cheque - Settle Payment Log</title>
<meta charset="UTF-8">
<meta name="margin-top" content="0.5">
<meta name="margin-bottom" content="0.5">
<meta name="margin-left" content="19.05">
<meta name="margin-right" content="19.05">
<meta name="copies" content="1">
<meta name="papersize" content="A4">
<meta name="orientation" content="1">
<meta name="duplex" content="0"> 

<style>
<!--
body {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt}
td {  font-family: "Arial", "Helvetica", "sans-serif"; font-size: 9pt}

DIV.page{page-break-before: always}
-->
</style>
</head>

<body style="background-color: #FFFFFF; color: #000000;">

<c:forEach var="dcCaseValue" items="${dcCaseValues}" varStatus="caseStatus">
<c:set var="dcTreasuryMemoValue" value="${dcCaseValue.dcTreasuryMemoValue}"/>
<c:set var="dcContactManValue" value="${dcCaseValue.dcContactManValue}"/>
<c:set var="refundOfficeCodeValue" value="${dcCaseValue.refundOfficeCodeValue}"/>

<c:set var="pageNo" value="1"/>
<c:set var="dcRecBusinessValuesByCase" value="${dcContactManValue.dcRecBusinessValues}"/>
<c:set var="dcRecBusinessValueNow" value=""/>

<c:forEach var="dcRecDetailValue" items="${dcTreasuryMemoValue.dcRecDetailValues}">
   <c:forEach var="dcRecBusinessValue" items="${dcRecDetailValue.dcRecBusinessValues}" >
      <c:forEach var="settlePaymentDcRecBusiness" items="${settlePaymentDcRecBusinessValues}">
         <c:if test="${settlePaymentDcRecBusiness.tryRefNo==dcRecBusinessValue.tryRefNo && settlePaymentDcRecBusiness.tickUpRefNo==dcRecBusinessValue.tickUpRefNo && settlePaymentDcRecBusiness.businessTxnKeyRef==dcRecBusinessValue.businessTxnKeyRef}">
               <c:set var="dcRecBusinessValueNow" value="${dcRecBusinessValue}"/>
         </c:if>
      </c:forEach>
   </c:forEach>
</c:forEach>

<c:set var="referenceString" value=""/>
<c:set var="referenceStringSeperatorChar" value=" , "/>
<c:forEach var="dcRecBusinessValue" items="${dcRecBusinessValuesByCase}" varStatus="dcRecBizStatus">
    <c:choose>
        <c:when test="${dcRecBizStatus.last}">
            <c:set var="referenceString"><c:out value="${referenceString}"/><c:out value="${dcRecBusinessValue.dcRefNo}"/></c:set>
        </c:when>
        <c:otherwise>
            <c:set var="referenceString"><c:out value="${referenceString}"/><c:out value="${dcRecBusinessValue.dcRefNo}"/><c:out value="${referenceStringSeperatorChar}"/></c:set>
        </c:otherwise>
    </c:choose>
</c:forEach>

<c:set var="distributorIdName" value=""/>
<c:set var="distributorIdNameForOne" value=""/>
<c:forEach var="dcRecDetailValue" items="${dcTreasuryMemoValue.dcRecDetailValues}" varStatus="dcRecDetailStatus">
  <c:forEach var="dcRecBusinessValue" items="${dcRecDetailValue.dcRecBusinessValues}" varStatus="recBizValueStatus">
    <c:set var="distributorIdNameForOne" value=""/>
    <c:choose>
     <c:when test="${!empty dcRecBusinessValue.vehImporterCodeValue.importerRegNo && !empty dcRecBusinessValue.vehImporterCodeValue.importerName}">
        <c:set var="distributorIdNameForOne" value="${dcRecBusinessValue.vehImporterCodeValue.importerRegNo} / ${dcRecBusinessValue.vehImporterCodeValue.importerName}"/>
     </c:when>
     <c:otherwise>
        <c:set var="distributorIdNameForOne" value="${dcRecBusinessValue.vehImporterCodeValue.importerRegNo}${dcRecBusinessValue.vehImporterCodeValue.importerName}"/>
     </c:otherwise>
    </c:choose>
    <c:if test="${!empty distributorIdNameForOne}">
        <c:set var="distributorIdName" value="${distributorIdName}${distributorIdNameForOne} ;"/>
    </c:if>
  </c:forEach>
</c:forEach>

<c:choose>
    <c:when test="${caseStatus.first}"></c:when>
    <c:otherwise>
        <DIV CLASS=page>
    </c:otherwise>
</c:choose>
<p>&nbsp;</p>
<table class="bordercolordark-FFF-C0C" style="width: 100%; border-spacing: 0px; margin: 0 auto;" >
  <tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th></tr>
  <tr>
    <td style="width: 10%; white-space: nowrap; vertical-align: top;">REPORT ID : MODC005A</td>
    <td style="width: 80%; vertical-align: top;">
      <div style="text-align: center;"><%=PaymentConstant.BLANK_PRINT_TITLE%></div>
    </td>
    <td style="width: 10%; white-space: nowrap; vertical-align: top;">RUNDATE : <c:out value="${runDate}"/></td>
  </tr>
  <tr>
    <td style="width: 10%;">SEQ : CASE NO.</td>
    <td style="width: 80%;">
      <div style="text-align: center;">DISHONOURED CHEQUE – SETTLE PAYMENT LOG</div>
    </td>
    <td style="width: 10%;">PAGE: <c:out value="${pageNo}"/></td>
  </tr>
  <tr>
    <td style="width: 10%;">&nbsp;</td>
    <td style="width: 8%;">
      <div style="text-align: center;">(GENERATED AS AT <c:out value="${generatedTime}"/>)</div>
    </td>
    <td style="width: 10%;"></td>
  </tr>
</table>
<br>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr>
    <td style="width: 25%; vertical-align: top;">DISHONOURED CHEQUE CASE NO:</td>
    <td style="width: 25%; vertical-align: top;"><c:out value="${dcContactManValue.caseNo}"/></td>
    <td style="width: 25%; vertical-align: top;">USER ID:</td>
    <td style="width: 25%; vertical-align: top;"><c:out value="${sessionScope.userProfile.operatorId}" /></td>
  </tr>
  <tr>
    <td style="width: 25%; vertical-align: top;">Date of Referral to DOJ:</td>
    <td style="width: 25%; vertical-align: top;"><fmt:formatDate value="${dcContactManValue.referToDojDate}" pattern="dd/MM/yyyy"/>
	</td>
    <td style="width: 25%; vertical-align: top;" >LOCATION:</td>
    <td style="width: 25%; vertical-align: top;"><c:out value="${sessionScope.userProfile.workStationId}" /></td>
  </tr>
  <tr>
    <td style="width: 25%; vertical-align: top;">Debtor's Name:</td>
    <td style="width: 25%; vertical-align: top;"><codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${dcContactManValue.legalEntityValue.titleCode}"><codetable:column codeColumn="<%=CodeTableConstant.TITLE_CODE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out>
		<c:out value="${dcContactManValue.legalEntityValue.nameEng}"/></td>
    <td style="width: 25%; vertical-align: top;">TRANSACTION NO:</td>
    <td style="width: 25%; vertical-align: top;"><c:out value="${TXN_NO}"/></td>
  </tr>
  <tr>
    <td style="width: 25%; vertical-align: top;">Debotr's ID:</td>
    <td style="width: 25%; vertical-align: top;">
	<c:if test="${!empty dcContactManValue.legalEntityValue.idType && dcContactManValue.legalEntityValue.idType!=' '}">
		<c:out value="${dcContactManValue.legalEntityValue.idType}"/>
		&nbsp;
	</c:if>
	<c:out value="${dcContactManValue.legalEntityValue.idNo}"/>
	</td>
    <td style="width: 25%; vertical-align: top;">DC Case Creation Date/ Time:</td>
    <td style="width: 25%; vertical-align: top;"><fmt:formatDate value="${dcContactManValue.roCreateDate}" pattern="dd/MM/yyyy HH:mm:ss"/></td>
  </tr>
</table>
<br>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th><th>col4</th><th>col5</th></tr>
  <tr>
    <td style="vertical-align: top; width: 100%;" colspan="5">Settlement details:</td>
  </tr>
  <tr>
    <td style="vertical-align: top; width: 10%;">&nbsp;</td>
    <td style="vertical-align: top; width: 25%;">Transaction type</td>
    <td style="vertical-align: top; width: 20%;">Application Ref</td>
    <td style="vertical-align: top; width: 25%;">Fee type</td>
    <td style="vertical-align: top; width: 20%; text-align: right;">Amount</td>
  </tr>
<c:set var="iCount" value="0"/>
<c:forEach var="dcRecDetailValue" items="${dcTreasuryMemoValue.dcRecDetailValues}" varStatus="dcRecDetailStatus">
	<c:forEach var="dcRecBusinessValue" items="${dcRecDetailValue.dcRecBusinessValues}" >
		<c:forEach var="settlePaymentDcRecBusiness" items="${settlePaymentDcRecBusinessValues}">
		<c:if test="${settlePaymentDcRecBusiness.tryRefNo==dcRecBusinessValue.tryRefNo && settlePaymentDcRecBusiness.tickUpRefNo==dcRecBusinessValue.tickUpRefNo && settlePaymentDcRecBusiness.businessTxnKeyRef==dcRecBusinessValue.businessTxnKeyRef}">
		<c:set var="iCount" value="${iCount+1}"/>
		<c:set var="newBusiness" value="1"/>
		<c:set var="oldBusinessTxnCode" value=""/>
		<c:set var="oldBusinessTxnSubCode" value=""/>
		<c:forEach var="dcRecBusinessAccValue" items="${dcRecBusinessValue.dcRecBusinessAccValues}" varStatus="recBizAccValueStatus">
		<tr>
			<td style="vertical-align: top; width: 10%;">
			<c:if test="${newBusiness=='1'}">
				<c:out value="${iCount}"/>
	        </c:if>
			</td>
			<td style="vertical-align: top;">
			<c:if test="${newBusiness=='1' && dcRecBusinessAccValue.businessTxnCode!=oldBusinessTxnCode && dcRecBusinessAccValue.businessTxnSubCode!=oldBusinessTxnSubCode}">
				<codetable:out value ="<%=CodeTableConstant.TRANSACTION_SUB_CODE%>" formatType = "<%=CodeTableConstant.INTERPRETATION%>" selected="${dcRecBusinessAccValue.businessTxnCode}" filter="${dcRecBusinessAccValue.businessTxnSubCode}"/>
			</c:if>
			<c:set var="oldBusinessTxnCode"    value="${dcRecBusinessAccValue.businessTxnCode}"/>
			<c:set var="oldBusinessTxnSubCode" value="${dcRecBusinessAccValue.businessTxnSubCode}"/>
			</td>
			<td style="vertical-align: top;">
			<c:if test="${newBusiness=='1'}">
			<c:out value="${dcRecBusinessValue.dcRefNo}"/>
			</c:if>
			</td>
			<td style="vertical-align: top;">
			<c:choose>
				<c:when test="${FEE_TYPE_CODE_R == dcRecBusinessAccValue.feeTypeCode}">
					<c:out value="${dcRecBusinessAccValue.txnFeeCodeValue.txnFeeDescEng}"/>
				</c:when>
				<c:otherwise>
					<codetable:out value="<%=CodeTableConstant.FEE_TYPE_CODE%>" language="English" selected="${dcRecBusinessAccValue.feeTypeCode}"/>
				</c:otherwise>
			</c:choose>		
			</td>
			<td style="vertical-align: top; text-align: right;">
			  <fmt:formatNumber value="${dcRecBusinessAccValue.assignedDcAmount}" currencySymbol="${currencySymbol}" type="currency"/>
			</td>
		</tr>
		<tr><td colspan="5" style="height: 5px;">&nbsp;</td></tr>
		<c:set var="newBusiness" value="0"/>
        </c:forEach>
		</c:if>
		</c:forEach>
	</c:forEach>
</c:forEach>
  <tr>
    <td colspan="5" style="vertical-align: top; text-align: right;">
      <div >Total:&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber value="${totalAmount}" currencySymbol="${currencySymbol}" type="currency"/></div>
    </td>
  </tr>
</table>
<br>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
  <tr>
    <td style="text-align: center;">*** END OF REPORT ***</td>
  </tr>
</table>
</c:forEach>

</body>
</html>