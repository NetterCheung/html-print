<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.Util,
                 hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.CodeTableConstant"%>
<%@ page import="com.td.j2ee.util.config.SystemParameter" %>       



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="Request_Name_Of_DC_Case_Value"><%=PaymentConstant.DC_CASE_VALUE%></c:set>
<c:set var="dcCasePrintValues" value="${requestScope[Request_Name_Of_DC_Case_Value]}"/>

<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"dd/MM/yyyy")%></c:set>
<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(),"HH:mm:ss")%></c:set>

<c:set var="currencySymbol"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>

<c:set var="Request_TOTAL_AMOUNT"><%=PaymentConstant.TOTAL_AMOUNT%></c:set>
<c:set var="totalAmount" value="${requestScope[Request_TOTAL_AMOUNT]}"/>

<c:set var="Request_TOTAL_SETTLE_AMOUNT"><%=PaymentConstant.TOTAL_SETTLE_AMOUNT%></c:set>
<c:set var="totalSettleAmount" value="${requestScope[Request_TOTAL_SETTLE_AMOUNT]}"/>

<c:set var="Request_TOTAL_OS_AMOUNT"><%=PaymentConstant.TOTAL_OS_AMOUNT%></c:set>
<c:set var="totalOsAmount" value="${requestScope[Request_TOTAL_OS_AMOUNT]}"/>
<html>
<head>
<title>Dishonoured Cheque Case Summary</title>
<meta charset="UTF-8">
<meta name="margin-top" content="19.05">
<meta name="margin-bottom" content="19.05">
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
.bordercolordark-FFF-C0C td{
    padding:0;
    line-height: 1.1;
}
-->
</style>
</head>

<body style="background-color: #FFFFFF; color: #000000;">
<c:forEach var="dcCasePrintValue" items="${dcCasePrintValues}" varStatus="caseStatus">
<c:set var="dcTreasuryMemoValue" value="${dcCasePrintValue.dcTreasuryMemoValue}"/>
<c:set var="dcContactManValue" value="${dcCasePrintValue.dcContactManValue}"/>
<c:set var="pageNo" value="1"/>
<c:choose>
    <c:when test="${caseStatus.first}"></c:when>
    <c:otherwise>
        <DIV CLASS=page>
    </c:otherwise>
</c:choose>
<br>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr>
    <td style="width: 20%; white-space: nowrap; vertical-align: top;">REPORT ID : MODC001A</td>
    <td style="width: 60%; vertical-align: top; text-align: center;">
	  <div style="text-align: center;">
             <%=PaymentConstant.BLANK_PRINT_TITLE%>
	  </div>
    </td>
    <td style="width: 20%; white-space: nowrap; vertical-align: top;">RUNDATE:<c:out value="${runDate}"/></td>
  </tr>
  <tr>
    <td style="width: 20%; vertical-align: top;">SEQ :<c:out value="TRANS NO."/></td>
    <td style="width: 60%;">
      <div style="text-align: center;">DISHONOURED CHEQUE CASE SUMMARY<br>
	  (GENERATED AS AT <c:out value="${generatedTime}"/>)
	  </div>
    </td>
    <td style="width: 20%; vertical-align: top;">PAGE:<c:out value="${pageNo}"/></td>
  </tr>
</table>
<br>
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

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr>
    <td style="width: 35%;">DISHONOURED CHEQUE CASE NO.</td>
    <td style="width: 20%;"><c:out value="${dcContactManValue.caseNo}"/></td>
    <td style="width: 25%;">TREASURY REFERENCE</td>
    <td style="width: 20%;"><c:out value="${dcTreasuryMemoValue.tryRefNo}"/></td>
  </tr>
  <tr>
    <td style="width: 35%;">STATUS</td>
    <td style="width: 20%;"><codetable:out value="<%=CodeTableConstant.DC_STATUS%>" formatType="<%=CodeTableConstant.DESCRIPTION%>" selected="${dcTreasuryMemoValue.memoStatus}"/></td>
    <td style="width: 25%;">TREASURY REFERENCE MEMO DATE</td>
    <td style="width: 20%;"><fmt:formatDate value="${dcTreasuryMemoValue.tryRefDate}" pattern="dd/MM/yyyy"/></td>
  </tr>
  <tr>
    <td style="width: 35%;">DISTRIBUTOR ID/NAME</td>
    <td style="width: 20%;"><c:out value="${distributorIdName}"/></td>
    <td style="width: 25%;">PROPOSED DEADLINE</td>
    <td style="width: 20%;"><fmt:formatDate value="${dcTreasuryMemoValue.proposedDeadline}" pattern="dd/MM/yyyy"/></td>
  </tr>
  <tr>
    <td style="width: 35%;">DEBTOR ID/NAME</td>
    <td colspan="3">
        <c:set var="idAndName" value="${dcContactManValue.legalEntityValue.idNo}"/>
        <c:if test="${ !empty dcContactManValue.legalEntityValue.nameEng}">
<%--
	Remarked by ST-Eric for Log# 2657499
            <c:set var="idAndName"><c:out value="${idAndName}"/> / <c:out value="${dcContactManValue.legalEntityValue.nameEng}"/></c:set>
--%>             	
            <c:set var="idAndName"><c:out value="${idAndName}"/> / <c:out value="${dcContactManValue.legalEntityValue.nameEng}" escapeXml="false"/></c:set>
        </c:if>
        <c:out value="${idAndName}"/>
    </td>
  </tr>
  <tr>
    <td style="width: 35%; vertical-align: top;">ADDRESS</td>
    <td style="width: 20%;">
      <c:forEach var="addressString" items="${dcContactManValue.legalEngAddressOfLine4}">
        <c:out value="${addressString}"/><br>
      </c:forEach>
    </td>
    <td style="width: 25%; vertical-align: top;">TEL</td>
    <td style="width: 20%;">
	<c:if test="${ !empty dcContactManValue.legalEntityValue.contactTel1}">
           <c:out value="${dcContactManValue.legalEntityValue.contactTel1}"/><br>
    </c:if>
	<c:if test="${ !empty dcContactManValue.legalEntityValue.contactTel2}">
           <c:out value="${dcContactManValue.legalEntityValue.contactTel2}"/><br>
    </c:if>
	<c:if test="${ !empty dcContactManValue.legalEntityValue.contactTel3}">
           <c:out value="${dcContactManValue.legalEntityValue.contactTel3}"/><br>
    </c:if>
	</td>
  </tr>
</table>
<br>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr>
    <td >&nbsp;</td>
	<td   style="vertical-align: top;">&nbsp;&nbsp;</td>
    <td   style="vertical-align: top;">TICK UP REF</td>
    <td   style="vertical-align: top;">CHEQUE NO</td>
    <td   style="vertical-align: top;">BANK</td>
    <td   style="vertical-align: top;">CHEQUE AMOUNT</td>
	<td   style="vertical-align: top;">&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td   style="vertical-align: top;">TRAN. TYPE</td>
	<td   style="vertical-align: top;">TRAN. NO/<br> DATE</td>
	<td   style="vertical-align: top;">TRAN. AMOUNT</td>
	<td   style="vertical-align: top;">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td   style="vertical-align: top; width: 120px;">TRAN. REF/<br> C&E NO</td>
    <td   style="vertical-align: top; width: 180px;" colspan="2">ASSIGNED AMOUNT</td>
	<td   style="text-align: center; vertical-align: top;">AMOUNT SETTLED</td>
    <td   style="text-align: center; vertical-align: top;">AMOUNT O/S</td>
  </tr>
  <tr>
    <td style="width: 100%; height: 5px;" colspan="16">&nbsp;</td>
  </tr>
  <c:set var="oldTickUpRef" value=""/>
  <c:set var="oldBusinessTxnKeyRef" value=""/>
  <c:set var="dcRecDetailCount" value="0"/>
  <c:forEach var="dcRecDetailValue" items="${dcTreasuryMemoValue.dcRecDetailValues}" varStatus="dcRecDetailStatus">
      <c:forEach var="dcRecBusinessValue" items="${dcRecDetailValue.dcRecBusinessValues}" varStatus="recBizValueStatus">
		 <c:set var="oldBusinessTxnCode" value=""/>
		 <c:set var="oldBusinessTxnSubCode" value=""/>
         <c:forEach var="dcRecBusinessAccValue" items="${dcRecBusinessValue.dcRecBusinessAccValues}" varStatus="recBizAccValueStatus">
  		 <c:set var="newTickUpRef" value="${dcRecBusinessValue.tickUpRefNo}"/>
		 <tr>
  		 <c:set var="newBusinessTxnKeyRef" value="${dcRecBusinessAccValue.businessTxnKeyRef}"/>
         <td style="vertical-align: top;">
			<c:if test="${newTickUpRef!=oldTickUpRef}">
				<c:set var="dcRecDetailCount" value="${dcRecDetailCount + 1}"/>
				<c:out value="${dcRecDetailCount}"/>
			</c:if>
    	</td>
		<td   style="vertical-align: top;">&nbsp;&nbsp;</td>
        <td style="vertical-align: top;">
	    	<c:if test="${newTickUpRef!=oldTickUpRef}">
				<c:out value="${dcRecBusinessValue.tickUpRefNo}"/>
            </c:if>
	    </td>
        <td style="vertical-align: top;">
			<c:if test="${newTickUpRef!=oldTickUpRef}">
				<c:out value="${dcRecDetailValue.chequeNo}"/>
	        </c:if>
	    </td>
        <td  style="vertical-align: top; width: 100px; white-space: nowrap;">
			<c:if test="${newTickUpRef!=oldTickUpRef}">
				<codetable:out value="<%=CodeTableConstant.BANK_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${dcRecDetailValue.drawerBankCode}"/>
	        </c:if>
	    </td>
        <td  style="vertical-align: top; text-align: right;">
			<c:if test="${newTickUpRef!=oldTickUpRef}">
	        	<fmt:formatNumber value="${dcRecDetailValue.chequeAmount}" currencySymbol="${currencySymbol}" type="currency"/>
	        </c:if>
        </td>
		<td   style="vertical-align: top;">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td  style="vertical-align: top;">
			<c:if test="${dcRecBusinessAccValue.businessTxnCode!=oldBusinessTxnCode && dcRecBusinessAccValue.businessTxnSubCode!=oldBusinessTxnSubCode}">
				<codetable:out value ="<%=CodeTableConstant.TRANSACTION_SUB_CODE%>" formatType = "<%=CodeTableConstant.INTERPRETATION%>" selected="${dcRecBusinessAccValue.businessTxnCode}" filter="${dcRecBusinessAccValue.businessTxnSubCode}"/>
				<c:if test="${!recBizAccValueStatus.last}">
					<br>
				</c:if>
			</c:if>
			<c:set var="oldBusinessTxnCode"    value="${dcRecBusinessAccValue.businessTxnCode}"/>
			<c:set var="oldBusinessTxnSubCode" value="${dcRecBusinessAccValue.businessTxnSubCode}"/>	    </td>
		<td  style="vertical-align: top;">
			<c:if test="${newBusinessTxnKeyRef!=oldBusinessTxnKeyRef || (newTickUpRef!=oldTickUpRef && newBusinessTxnKeyRef==oldBusinessTxnKeyRef)}">
				<c:out value="${dcRecBusinessValue.businessTxnNo}"/> / <fmt:formatDate value="${dcRecBusinessValue.paymentTxnDate}" pattern="dd/MM/yyyy"/>
			</c:if>
	    </td>
		<td  style="vertical-align: top; text-align: right;">
			<c:if test="${newBusinessTxnKeyRef!=oldBusinessTxnKeyRef || (newTickUpRef!=oldTickUpRef && newBusinessTxnKeyRef==oldBusinessTxnKeyRef)}">
             <fmt:formatNumber value="${dcRecBusinessValue.dcChequeAmount}" currencySymbol="${currencySymbol}" type="currency"/>
            </c:if>
        </td>
		<td   style="vertical-align: top;">&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="vertical-align: top;">
			<c:if test="${newBusinessTxnKeyRef!=oldBusinessTxnKeyRef || (newTickUpRef!=oldTickUpRef && newBusinessTxnKeyRef==oldBusinessTxnKeyRef)}">
				<c:out value="${dcRecBusinessValue.dcRefNo}"/>
            </c:if>
		</td>
		<td  style="vertical-align: top;">
		
		    <c:set var="USER_CODE_SWICTH" scope="request"><%=SystemParameter.getInstance().getParameter(PaymentConstant.SWITCH_NAME)%></c:set>
            <c:set var="SWICTH_VALUE" scope="request"><%=PaymentConstant.SWITCH_ON%></c:set>
                           <c:choose>
                                 <c:when test="${USER_CODE_SWICTH == SWICTH_VALUE}">
                                      <codetable:out value="<%=PaymentConstant.USER_CODE_TABLE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${dcRecBusinessAccValue.accountCrossRefCodeValue.userCode}"><codetable:column codeColumn="<%=PaymentConstant.OLD_CODE_COLUMN%>" interpretationColumn="<%=PaymentConstant.NEW_CODE_COLUMN%>"/></codetable:out>
                                 </c:when>
                                 <c:otherwise>		   
                                      <c:out value="${dcRecBusinessAccValue.accountCrossRefCodeValue.userCode}"/>
                                 </c:otherwise>
                             </c:choose>       

		</td>		
        <td  style="vertical-align: top; text-align: right;">
             <fmt:formatNumber value="${dcRecBusinessAccValue.assignedDcAmount}" currencySymbol="${currencySymbol}" type="currency"/>
        </td>
		<td style="vertical-align: top; text-align: right;">
			<c:if test="${dcRecBusinessValue.settleInd=='Y'}">
				<fmt:formatNumber value="${dcRecBusinessAccValue.assignedDcAmount}" currencySymbol="${currencySymbol}" type="currency"/>
			</c:if>
		</td>
		<td style="vertical-align: top; text-align: right;">
			<c:if test="${dcRecBusinessValue.settleInd=='N' || empty dcRecBusinessValue.settleInd}">
				<fmt:formatNumber value="${dcRecBusinessAccValue.assignedDcAmount}" currencySymbol="${currencySymbol}" type="currency"/>
			</c:if>
		</td>
      </tr>
	  <c:set var="oldTickUpRef" value="${newTickUpRef}"/>
	  <c:set var="oldBusinessTxnKeyRef" value="${newBusinessTxnKeyRef}"/>
          </c:forEach>
      </c:forEach>
      <tr>
         <td style="width: 100%; height: 5px;" colspan="16">&nbsp;</td>
      </tr>
  </c:forEach>
  <tr>
    <td colspan="13" style="text-align: right; vertical-align: top;">Total:&nbsp;</td>
    <td style="vertical-align: top; text-align: right;">
      <div ><fmt:formatNumber value="${totalAmount}" currencySymbol="${currencySymbol}" type="currency"/></div>
    </td>
    <td style="vertical-align: top; text-align: right;">
      <div ><fmt:formatNumber value="${totalSettleAmount}" currencySymbol="${currencySymbol}" type="currency"/></div>
    </td>
    <td style="vertical-align: top; text-align: right;">
      <div ><fmt:formatNumber value="${totalOsAmount}" currencySymbol="${currencySymbol}" type="currency"/></div>
    </td>
  </tr>
  <tr>
     <td style="width: 100%; height: 5px;" colspan="16">&nbsp;</td>
  </tr>
</table>
<table style="width: 100%; border-spacing: 0px; margin: 0.2cm auto 0;" class="bordercolordark-FFF-C0C">
  <tr>
    <td style="width: 40%;">
        Date of creation of dishonoured cheque record/insertion of R.O.
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.roCreateDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">Date of tendering the dishonoured cheque
    </td>
    <td style="width: 60%;">
      <fmt:formatDate value="${dcContactManValue.dcTenderDate}" pattern="dd/MM/yyyy"/>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of issue of letter by surface mail
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.surfaceMailIssueDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of issue of letter by registered mail
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.regMailIssueDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of Referral to DoJ
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.referToDojDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of withdraw referral from DoJ
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.withdrawRefToDojDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of request for update address 
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.makeUpdatAddrDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of reply from Commissioner of Registration
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.cmsrUpdateAddrDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of reply from Company of Registration
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.cpyUpdateAddrDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of Full Settlement in LO
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.fullSettlementDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of DoJ Full Settlement
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.dojSettlementDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of Case Close
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.caseCloseDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Case Close Remark
    </td>
    <td style="width: 60%;">
        <c:out value="${dcContactManValue.caseCloseRemark}"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of no objection from DoJ for write-off
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.dojNoObjectionDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of recommend for write-off
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.recommendWriteOffDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
  <tr>
    <td style="width: 40%;">
        Date of approval for write-off
    </td>
    <td style="width: 60%;">
        <fmt:formatDate value="${dcContactManValue.approveWriteoffDate}" pattern="dd/MM/yyyy"/><br>
    </td>
  </tr>
</table>
<br>

<c:forEach var="vehicleValue" items="${dcContactManValue.vehicleValues}" varStatus="vehicleValueStatus">
    <c:if test="${vehicleValueStatus.first}">
    <table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
      <tr>
        <td>VEHICLE PARTICULARS </td>
      </tr>
    </table>
    </c:if>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
  <tr>
    <td>CHASSIS NO</td>
    <td><c:out value="${vehicleValue.chassisNo}"/></td>
    <td>Vehicle OWNER ID</td>
    <td><c:out value="${dcContactManValue.legalEntityValue.idNo}"/></td>
  </tr>
  <tr>
    <td style="vertical-align: top;">
      V/L CLASS:<br>
      MAKE:<br>
      COUNTRY OF ORIGIN:<br>
      MODEL:<br>
      REG MARK<br>
    </td>
    <td style="vertical-align: top;">
      <c:out value="${vehicleValue.vehicleClass}"/><br>
      <c:out value="${vehicleValue.vehicleMakeCode}"/><br>
      <c:out value="${vehicleValue.countryOrigin}"/><br>
      <c:out value="${vehicleValue.vehicleModel}"/><br>
      <c:out value="${vehicleValue.regMark}"/><br>
    </td>
    <td style="vertical-align: top;">
      MANUFACTURE YEAR:<br>
      LANTAU USE:<br>
      PRIVATE ROAD:<br>
      MODEL CODE:<br>
    </td>
    <td style="vertical-align: top;">
      <c:out value="${vehicleValue.yearOfManufacture}"/><br>
      <c:out value="${vehicleValue.lantauvehicleIndicator}"/><br>
      <c:out value="${vehicleValue.privateRoadIndicator}"/><br>
      <c:out value="${vehicleValue.engineNumber}"/><br>
    </td>
  </tr>
</table>
</c:forEach>
<br>
<table style="width: 100%; border-spacing: 0px; margin: 0.2cm auto 0;">
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
</c:forEach>
</body>
</html>
