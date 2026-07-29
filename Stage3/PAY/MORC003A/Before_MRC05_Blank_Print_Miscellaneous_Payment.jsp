<!DOCTYPE html>
<%@ page import="hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.Util" %>
<%@ page import="com.td.j2ee.util.config.SystemParameter" %>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>
 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="USER_CODE_SWICTH" scope="request">
	<%=SystemParameter.getInstance().getParameter(PaymentConstant.SWITCH_NAME)%>
</c:set>
<c:set var="SWITCH_OFF"><%= PaymentConstant.SWITCH_OFF%></c:set>   
<c:set var="SWITCH_ON"><%= PaymentConstant.SWITCH_ON%></c:set>


<c:set var="MISC_PAYMENT_Value"><%=PaymentConstant.BLANK_PRINT_MISCELLANEOUS_PAYMENT_VALUE%></c:set>
<c:set var="miscPaymentValues" value="${requestScope[MISC_PAYMENT_Value]}"/>
<c:set var="operatorID"><%=RequestConstant.OPERATOR_ID%></c:set>
<c:set var="userID" value="${requestScope[operatorID]}"/>
<c:set var="workstationID"><%=RequestConstant.WORKSTATION_ID%></c:set>
<c:set var="location" value="${requestScope[workstationID]}"/>
<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "dd/MM/yyyy")%></c:set>
<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "HH:mm:ss")%></c:set>
<c:set var="currencySymbol"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>
<c:set var="TXN_DATE"><%=RequestConstant.TXN_DATE%></c:set>
<c:set var="txnDate" value="${requestScope[TXN_DATE]}"/>

<c:forEach var="miscValue" items="${miscPaymentValues}" varStatus="caseStatus">
    <c:if test="${caseStatus.count == 1}">
        <c:set var="txnValue" value="${miscValue}"/>
    </c:if>
    <c:if test="${caseStatus.count == 2}">
        <c:set var="amountValue" value="${miscValue}"/>
    </c:if>
</c:forEach>

<c:choose>
    <c:when test="${caseStatus.first}"></c:when>
    <c:otherwise>
        <DIV CLASS=page>
    </c:otherwise>
</c:choose>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="margin-top" content="19.05">
    <meta name="margin-bottom" content="19.05">
    <meta name="margin-left" content="19.05">
    <meta name="margin-right" content="19.05">
    <meta name="copies" content="1">
    <meta name="papersize" content="A4">
    <meta name="orientation" content="1">
    <meta name="duplex" content="0">
    <title>&nbsp;</title>
    <style>
        <!--
        body {
            font-family: "Arial", "Helvetica", "sans-serif";
            font-size: 9pt
        }

        td {
            font-family: "Arial", "Helvetica", "sans-serif";
            font-size: 9pt
        }
        -->
    </style>
</head>
<body style="background-color: #FFFFFF; color: #000000;">
<p>&nbsp;</p>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
    <tr>
        <td style="width: 20%;"></td>
        <td style="width: 60%;"></td>
        <td style="width: 20%;">
            <div style="text-align: right;">
                <span style="font-size: 1.25rem;"><b>TL(P)</b></span>
            </div>
        </td>
    </tr>
    <tr>
        <td style="width: 20%; white-space: nowrap; vertical-align: top;">REPORT ID : MORC003A</td>
        <td style="width: 60%; vertical-align: top;">
            <div style="text-align: center;">
                <%=PaymentConstant.BLANK_PRINT_TITLE%></div>
        </td>
        <td style="width: 20%; white-space: nowrap; vertical-align: top;">RUNDATE : <c:out value="${runDate}"/></td>
    </tr>
    <tr>
        <td style="width: 20%;">SEQ :<c:out value="TRANS NO."/></td>
        <td style="width: 60%;">
            <div style="text-align: center;">MISCELLANEOUS TRANSACTION LOG</div>
        </td>
        <td style="width: 20%;">PAGE: 1</td>
    </tr>
</table>
<br><br>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;"  bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
    <tr style="display: none;">
        <th></th><th></th><th></th><th></th>
    </tr>
    <tr>
        <td style="width: 20%;"><span style="font-size: 1rem;"><b>TRANSACTION TYPE:</b></span></td>
        <td style="width: 80%;" COLSPAN="3"><span style="font-size: 1rem;"><b><c:out value="${txnValue.idNo}"/></b></span></td>
    </tr>
    <tr>
        <td style="width: 20%;"><span style="font-size: 1rem;"><b>TRANSACTION NO.:</b></span></td>
        <td style="width: 80%;" COLSPAN="3"><span style="font-size: 1rem;"><b><c:out value="${txnValue.txnNo}"/></b></span></td>
    </tr>
    <tr>
        <td style="width: 20%;">TYPE:</td>
        <td style="width: 80%;" COLSPAN="3"><c:out value="${txnValue.idType}"/></td>
    </tr>
    <tr>
        <td style="width: 20%;">REFERENCE:</td>
        <td style="width: 40%;"><c:out value="${txnValue.refNo}"/>&nbsp;</td>
        <td style="width: 15%;">USER ID:</td>
        <td style="width: 25%;"><c:out value="${userID}"/>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <table style="width: 100%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
                <tr style="display: none;">
                    <th></th><th></th><th></th><th></th><th></th>
                </tr>
                <tr>
                    <td style="width: 20%; vertical-align: top;">REMARKS:</td>
                    <td style="word-break:break-all;word-wrap:break-word; width: 38%; vertical-align: top; text-align: left;"><c:out
                            value="${txnValue.remark}"/>&nbsp;&nbsp;</td>
                    <td style="width: 2%;">&nbsp;</td>
                    <td style="width: 40%; vertical-align: top;" colspan="2">
                        <table style="width: 100%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
                            <tr>
                                <td style="width: 15%; vertical-align: top;">WORKSTATION ID:</td>
                                <td style="width: 25%; vertical-align: top;"><c:out value="${location}"/>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 15%;">DATE / TIME:&nbsp;</td>
                                <td style="width: 25%;"><c:out value="${txnDate}"/>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<br><br>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
    <tr>
        <td style="width: 20%;"><b>USER CODE</b></td>
        <td style="width: 1%;"></td>
        <td style="width: 17%; text-align: right;"><b>AMOUNT</b></td>
        <td style="width: 62%;"></td>
    </tr>
    <tr>
        <td style="height: 1px; background-color: #000000;"></td>
        <td style="height: 1px;"></td>
        <td style="height: 1px; background-color: #000000;"></td>
        <td style="height: 1px;"></td>
    </tr>
    <tr>
        <c:forEach var="amountValues" items="${amountValue}">
        <c:set var="detailValue" value="${amountValues}"/>
        <c:forEach var="amountValues" items="${amountValues}" varStatus="amountStatus">
            <c:if test="${amountStatus.count == 1}">
                <c:set var="amount" value="${amountValues}"></c:set>
            </c:if>
            <c:if test="${amountStatus.count == 2}">
                <c:set var="amountId" value="${amountValues}"></c:set>
            </c:if>
            <c:if test="${amountStatus.count == 3}">
                <c:set var="head" value="${amountValues}"></c:set>
            </c:if>
            <c:if test="${amountStatus.count == 4}">
                <c:set var="subHead" value="${amountValues}"></c:set>
            </c:if>
            <c:if test="${amountStatus.count == 5}">
                <c:set var="itemID" value="${amountValues}"></c:set>
            </c:if>
            <c:if test="${amountStatus.count == 6}">
                <c:set var="chequeAmountSum" value="${amountValues}"></c:set>
            </c:if>
        </c:forEach>
        <td style="width: 20%;">
	        <c:set var="LAFIS_CODE" scope="request"><c:out value="${head}"/>-<c:out value="${subHead}"/>-<c:out value="${itemID}"/></c:set>
	        <c:choose>
				<c:when test="${USER_CODE_SWICTH == SWITCH_ON}">
					<codetable:out value="<%=PaymentConstant.USER_CODE_TABLE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${LAFIS_CODE}">
						<codetable:column codeColumn="<%=PaymentConstant.OLD_CODE_COLUMN%>" interpretationColumn="<%=PaymentConstant.NEW_CODE_COLUMN%>"/>
					</codetable:out>
				</c:when>
				<c:otherwise><c:out value="${LAFIS_CODE}"/></c:otherwise>
			</c:choose>
        </td>
        <td style="width: 1%;"></td>
        <td style="width: 17%; text-align: right;"><fmt:formatNumber value="${amount}" currencySymbol="${currencySymbol}"
                                                        type="currency"/>&nbsp;</td>
        <td style="width: 62%;"></td>
    </tr>
    </c:forEach>
    <tr>
        <td style="height: 1px; background-color: #000000;"></td>
        <td style="height: 1px;"></td>
        <td style="height: 1px; background-color: #000000;"></td>
        <td style="height: 1px;"></td>
    </tr>
    <tr>
        <td colspan="4"><br></td>
    </tr>
    <tr>
        <td style="width: 20%; text-align: right;">TOTAL:</td>
        <td style="width: 1%;"></td>
        <td style="width: 17%; text-align: right;">
            <fmt:formatNumber value="${chequeAmountSum}" currencySymbol="${currencySymbol}" type="currency"/>&nbsp;
        </td>
        <td style="width: 62%;"></td>
    </tr>
</table>
<br><br><br><br>

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
