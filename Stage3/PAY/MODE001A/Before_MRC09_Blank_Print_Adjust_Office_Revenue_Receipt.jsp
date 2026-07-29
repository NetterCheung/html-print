<!DOCTYPE html>
<%@ page import="hk.gov.valid.driver.util.DriverConstant,
                 hk.gov.valid.payment.util.PaymentConstant,
                 hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.util.Util" %>
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


<c:set var="Request_Name_Of_Revenue_Adjustment_Value"><%=RequestConstant.REVENUE_ADJUSTMENT_VALUE%></c:set>
<c:set var="Request_Name_Of_Revenue_Adjustment_Detail_Values"><%=RequestConstant.REVENUE_ADJUSTMENT_DETAIL_VALUES%>
</c:set>
<c:set var="Request_Name_Of_Txn_No"><%=RequestConstant.PAYMENT_ADJUST_OFFICE_REVENUE_RECEIPT_TXN_NO%></c:set>

<c:set var="revenueAdjustmentValue" value="${requestScope[Request_Name_Of_Revenue_Adjustment_Value]}"/>
<c:set var="revenueAdjustmentDetailValues" value="${requestScope[Request_Name_Of_Revenue_Adjustment_Detail_Values]}"/>
<c:set var="txnNo" value="${requestScope[Request_Name_Of_Txn_No]}"/>

<c:set var="RunDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "dd/MM/yyyy")%></c:set>

<c:set var="pageNo" value="1"/>
<c:set var="HKD_CURRENCY_SYMBOL" scope="request"><%=DriverConstant.HKD_CURRENCY_SYMBOL%></c:set>
<html>
<head>
    <title>ADJUST OFFICE REVENUE RECEIPT LOG</title>
    <meta charset="UTF-8">
    <meta name="margin-top" content="19.05">
    <meta name="margin-bottom" content="19.05">
    <meta name="margin-left" content="19.05">
    <meta name="margin-right" content="19.05">
    <meta name="copies" content="1">
    <meta name="papersize" content="A4">
    <meta name="orientation" content="0">
    <meta name="duplex" content="0">
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

        DIV.page {
            page-break-before: always
        }

        -->
    </style>
</head>


<body style="background-color: #FFFFFF; color: #000000;">
<p>&nbsp;</p>
<table style="width: 100%; margin: 0 auto; border-spacing: 0px;">
    <tr>
        <td style="width: 20%; white-space: nowrap; vertical-align: top;">REPORT ID : MODE001A</td>
        <td style="width: 60%; vertical-align: top;">
            <div style="text-align: center;">
                <%=PaymentConstant.BLANK_PRINT_TITLE%>
            </div>
        </td>
        <td style="width: 20%; white-space: nowrap; vertical-align: top;">RUNDATE : <c:out value="${RunDate}"/></td>
    </tr>
    <tr>
        <td style="width: 20%;">SEQ : TRAN.NO.</td>
        <td style="width: 60%;">
            <div style="text-align: center;">ADJUST OFFICE REVENUE RECEIPT LOG</div>
        </td>
        <td style="width: 20%;">PAGE : <c:out value="${pageNo}"/></td>
    </tr>
</table>
<br>

<table style="width: 100%; margin: 0 auto; border-spacing: 0px;">
    <tr>
        <td style="width: 20%;">TRANSACTION NO :</td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 30%;"><c:out value="${txnNo}"/></td>
        <td style="width: 20%;">USER ID : </td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 28%;"><c:out value="${revenueAdjustmentValue.operatorId}"/></td>
    </tr>
    <tr>
        <td style="width: 20%; vertical-align: top;">REMARK:</td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 30%; vertical-align: top;"><c:out value="${revenueAdjustmentValue.remarks}"/></td>
        <td style="width: 20%; vertical-align: top;">WORKSTATION ID:</td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 28%; vertical-align: top;"><c:out value="${revenueAdjustmentValue.workstationId}"/></td>
    </tr>
    <tr>
        <td style="width: 20%;">&nbsp;</td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 30%;">&nbsp;</td>
        <td style="width: 20%;">DATE / TIME: </td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 28%;">
            <fmt:formatDate value="${revenueAdjustmentValue.txnDate}" pattern="dd/MM/yyyy HH:mm:ss"/></td>
    </tr>
</table>
<br>
<table style="width: 100%; margin: 0 auto; border-spacing: 0px;">
<tr>
    <td style="width: 20%;">USER CODE</td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 15%;">
        <div style="text-align: left;">AMOUNT</div>
    </td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 25%;">
        <div style="text-align: left;">PAYMENT METHOD</div>
    </td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 40%;">
        <div style="text-align: left;">REMARK</div>
    </td>
</tr>
<tr>
    <td style="width: 20%; height: 1px; background-color: #000000;"></td>
    <td style="width: 1%; height: 1px;"></td>
    <td style="width: 15%; height: 1px; background-color: #000000;"></td>
    <td style="width: 1%; height: 1px;"></td>
    <td style="width: 25%; height: 1px; background-color: #000000;"></td>
    <td style="width: 1%; height: 1px;"></td>
    <td style="width: 40%; height: 1px; background-color: #000000;"></td>
</tr>
<c:set var="amountSum" value="0.00"></c:set>
<c:forEach var="revenueAdjustmentDetailValue" items="${revenueAdjustmentDetailValues}">
    <c:set var="amountSum" value="${amountSum + revenueAdjustmentDetailValue.amount}"></c:set>
    <tr>
        <td style="width: 20%;">     
	        <c:set var="LAFIS_CODE"><c:out value='${revenueAdjustmentDetailValue.userCode}'/></c:set>
	        <c:set var="GFMIS_CODE">
	        	<codetable:out value="<%=PaymentConstant.USER_CODE_TABLE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${LAFIS_CODE}">
	            	<codetable:column codeColumn="<%=PaymentConstant.OLD_CODE_COLUMN%>" interpretationColumn="<%=PaymentConstant.NEW_CODE_COLUMN%>"/>
	            </codetable:out>
	        </c:set>
	        <c:choose>
				<c:when test="${USER_CODE_SWICTH == SWITCH_ON}">
					<c:out value='${GFMIS_CODE}'/>
				</c:when>
				<c:otherwise>
					<c:out value='${LAFIS_CODE}'/>
				</c:otherwise>
			</c:choose>
        </td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 15%;">
            <div style="text-align: left;">
                <c:if test="${revenueAdjustmentDetailValue.amount<0}">(</c:if>
                <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}"
                                  value="${revenueAdjustmentDetailValue.amount}"/>
                <c:if test="${revenueAdjustmentDetailValue.amount<0}">)</c:if>
            </div>
        </td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 25%;">
            <div style="text-align: left;">
                <c:set var="paymentMethod" value="${revenueAdjustmentDetailValue.paymentMethod}"></c:set>
                <c:choose>
                    <c:when test="${paymentMethod=='E'}">
                        <c:out value="EPS"/>
                    </c:when>
					<c:when test="${paymentMethod=='F'}">
                        <c:out value="FPS"/>
                    </c:when>
                    <c:when test="${paymentMethod=='C'}">
                        <c:out value="Cash"/>
                    </c:when>
                    <c:when test="${paymentMethod=='Q'}">
                        <c:out value="Cheque"/>
                    </c:when>

                    <c:when test="${paymentMethod=='F'}">
                        <c:out value="FPS"/>
                    </c:when>
  
                    <c:otherwise>
                        <c:out value="${paymentMethod}"/>
                    </c:otherwise>
                </c:choose>
            </div>
        </td>
        <td style="width: 1%;">&nbsp;</td>
        <td style="width: 40%;"><c:out value="${revenueAdjustmentDetailValue.remark}"/></td>
    </tr>
</c:forEach>
<tr>
    <td style="width: 20%; height: 1px; background-color: #000000;"></td>
    <td style="width: 1%; height: 1px;"></td>
    <td style="width: 15%; height: 1px; background-color: #000000;"></td>
    <td style="width: 1%; height: 1px;"></td>
    <td style="width: 25%; height: 1px; background-color: #000000;"></td>
    <td style="width: 1%; height: 1px;"></td>
    <td style="width: 40%; height: 1px; background-color: #000000;"></td>
</tr>
<tr>
    <td style="width: 20%; height: 35px; vertical-align: bottom;">
        <div style="text-align: right;">TOTAL:</div>
    </td>
    <td style="width: 1%; height: 35px;">&nbsp;</td>
    <td style="width: 15%; height: 35px; vertical-align: bottom;">
        <div style="text-align: left;">
            <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${amountSum}"/>
        </div>
    </td>
    <td style="width: 1%; height: 35px;">&nbsp;</td>
    <td style="width: 25%; height: 35px;">&nbsp;</td>
    <td style="width: 1%; height: 35px;">&nbsp;</td>
    <td style="width: 40%; height: 35px;">&nbsp;</td>
</tr>
<tr>
    <td style="width: 20%;">&nbsp;</td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 15%;">&nbsp;</td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 25%;">&nbsp;</td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 40%;">&nbsp;</td>
</tr>
<tr>
    <td style="width: 20%;">&nbsp;</td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 15%;">&nbsp;</td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 25%;">&nbsp;</td>
    <td style="width: 1%;">&nbsp;</td>
    <td style="width: 40%;">&nbsp;</td>
</tr>
<tr>
    <td colspan="7">
        <div style="text-align: center;">*** END OF REPORT ***</div>
    </td>
</tr>
</table>
</body>
</html>