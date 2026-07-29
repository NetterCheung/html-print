<!DOCTYPE html>
<%@ page import="hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.CodeTableConstant,
                 hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.Util" %>
<%@ page import="com.td.j2ee.util.config.SystemParameter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="USER_CODE_SWICTH" scope="request"><%=SystemParameter.getInstance().getParameter(PaymentConstant.SWITCH_NAME)%></c:set>
<c:set var="SWITCH_OFF" scope="request"><%= PaymentConstant.SWITCH_OFF%></c:set>   
<c:set var="SWITCH_ON" scope="request"><%= PaymentConstant.SWITCH_ON%></c:set>

<c:set var="ADJV_PRINT_VALUE"><%=RequestConstant.ADJV_PRINT_VALUE%></c:set>
<c:set var="adjvPrintValues" value="${requestScope[ADJV_PRINT_VALUE]}" scope="request"/>

<c:set var="ADJV_TXN_CODE"><%=RequestConstant.ADJV_TXN_CODE%></c:set>
<c:set var="txnCode" value="${requestScope[ADJV_TXN_CODE]}" scope="request"/>

<c:set var="ACTIVITY_TXN_NO"><%=RequestConstant.ADJV_ACTIVITY_TXN_NO%></c:set>
<c:set var="activityTxnNo" value="${requestScope[ACTIVITY_TXN_NO]}" scope="request"/>

<c:set var="ORIGINAL_TXN_NO"><%=RequestConstant.ADJV_ORIGINAL_TXN_NO%></c:set>
<c:set var="searchTxnNo" value="${requestScope[ORIGINAL_TXN_NO]}" scope="request"/>

<c:set var="ADJV_REFERENCE_NO"><%=RequestConstant.ADJV_REFERENCE_NO%></c:set>
<c:set var="refNo" value="${requestScope[ADJV_REFERENCE_NO]}" scope="request"/>

<c:set var="WORKSTATION_ID"><%=RequestConstant.ADJV_WORKSTATION_ID%></c:set>
<c:set var="workstationId" value="${requestScope[WORKSTATION_ID]}" scope="request"/>

<c:set var="ADJV_OPERATOR_ID"><%=RequestConstant.ADJV_OPERATOR_ID%></c:set>
<c:set var="operatorId" value="${requestScope[ADJV_OPERATOR_ID]}" scope="request"/>

<c:set var="runDate" scope="request"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "dd/MM/yyyy")%></c:set>
<c:set var="generatedTime" scope="request"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "HH:mm:ss")%></c:set>

<c:set var="currencySymbol" scope="request"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>
<html>
<head>
    <meta charset="UTF-8">
    <title>&nbsp;</title>
    <style type="text/css">
        <!--
        body {
            font-family: "Arial", "Helvetica", "sans-serif";
            font-size: 9pt
        }

        td {
            font-family: "Arial", "Helvetica", "sans-serif";
            font-size: 9pt
        }

        DIV.page {
            page-break-before: always
        }
        -->
    </style>
</head>

<body style="background-color: #FFFFFF; color: #000000;">
<p>&nbsp;</p>
<table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF"
       bordercolorlight="#C0C0C0">
    <tr>
        <td style="width: 20%;"></td>
        <td style="width: 60%;"></td>
        <td style="width: 20%;"></td>
    </tr>
    <tr>
        <td style="width: 20%; white-space: nowrap; vertical-align: top;">
            REPORT ID : MORC003A
        </td>
        <td style="width: 60%; vertical-align: top;">
            <div style="text-align: center;">VALID IV DRIVER & VEHICLE LICENSING & REGISTRATION MODULE</div>
        </td>
        <td style="width: 20%; white-space: nowrap; vertical-align: top;"><c:out value="${runDate}"/></td>
    </tr>
    <tr>
        <td style="width: 20%;">SEQ: <c:out value="${workstationId}"/></td>
        <td style="width: 60%;">
            <div style="text-align: center;">ACCOUNTS VOUCHER ADJUSTMENT</div>
        </td>
        <td style="width: 20%;">PAGE: 1</td>
    </tr>
    <tr>
        <td style="width: 20%;"></td>
        <td style="width: 60%;"></td>
        <td style="width: 20%;"><c:out value="${activityTxnNo}"/></td>
    </tr>
</table>

<br><br>
<table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF"
       bordercolorlight="#C0C0C0">
    <tr>
        <td style="width: 40%;">OPERATOR:</td>
        <td style="width: 60%;"><c:out value="${operatorId}"/></td>
    </tr>
    <tr>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
    </tr>
    <tr>
        <td style="width: 40%;">ORIGINAL TRANSACTION NUMBER: </td>
        <td style="width: 60%;"><c:out value="${searchTxnNo}"/></td>
    </tr>
    <tr>
        <td style="width: 40%;">ORIGINAL TRANSACTION TYPE: </td>
        <td style="width: 60%;">
            <codetable:out value="<%=CodeTableConstant.TRANSACTION_CODE%>" selected="${txnCode}">
                <codetable:column codeColumn="<%=CodeTableConstant.TRANSACTION_CODE%>"
                                  interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/>
            </codetable:out>
        </td>
    </tr>
    <tr>
        <td style="width: 40%;">REFERENCE NUMBER: </td>
        <td style="width: 60%;"><c:out value="${refNo}"/></td>
    </tr>
</table>

<br><br>
<table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF"
       bordercolorlight="#C0C0C0">
    <tr>
        <td style="width: 15%;"><b>A/C ID</b></td>
        <td style="width: 15%;"><b>USER CODE</b></td>
        <td style="width: 25%; text-align: right;"><b>ORIGINAL AMOUNT</b></td>
		<td style="width: 15%; text-align: right;"><b>QTY</b></td>
        <td style="width: 25%; text-align: right;"><b>UPDATED AMOUNT</b></td>
        <td style="width: 10%;"></td>
    </tr>
    <tr>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
		<td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
    </tr>

    <c:forEach var="adjvValue" items="${adjvPrintValues}">
        <tr>
            <td style="width: 15%;"><c:out value="${adjvValue.accountId}"/></td>
            <td style="width: 15%;">
	            <c:choose>
					<c:when test="${USER_CODE_SWICTH == SWITCH_ON}">
						<codetable:out value="<%=PaymentConstant.USER_CODE_TABLE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${adjvValue.userCode}">
							<codetable:column codeColumn="<%=PaymentConstant.OLD_CODE_COLUMN%>" interpretationColumn="<%=PaymentConstant.NEW_CODE_COLUMN%>"/>
						</codetable:out>
					</c:when>
					<c:otherwise><c:out value="${adjvValue.userCode}"/></c:otherwise>
				</c:choose>
            </td>
            <td style="width: 25%; text-align: right;"><fmt:formatNumber value="${adjvValue.originalAmount}"
                                                            currencySymbol="${currencySymbol}" type="currency"/></td>
			<td style="width: 15%; text-align: right;"><c:out value="${adjvValue.qty}"/></td>
            <td style="width: 25%; text-align: right;"><fmt:formatNumber value="${adjvValue.updatedAmount}"
                                                            currencySymbol="${currencySymbol}" type="currency"/>
                &nbsp;</td>
            <td style="width: 10%;"></td>
        </tr>
    </c:forEach>
    <tr>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
        <td style="height: 1px;"></td>
        <td style="display: none"></td>
    </tr>
</table>
<br><br><br><br>

<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
    <tr>
        <td style="text-align: center;">*** END OF REPORT ***</td>
    </tr>
</table>
</body>
</html>