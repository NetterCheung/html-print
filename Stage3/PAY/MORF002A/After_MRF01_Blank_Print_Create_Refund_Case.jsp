<!DOCTYPE html>
<%@ page import="hk.gov.valid.driver.util.DriverConstant,
                 hk.gov.valid.payment.util.PaymentConstant,
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

<c:set var="REFUND_CASE_PAGE_VALUE" value="${refundCasePageValue}" scope="request"/>
<c:set var="REFUND_CASE_VALUE" value="${refundCaseValue}" scope="request"/>
<c:set var="vehicleValue" value="${refundCaseValue.vehicleValue}" scope="request"/>
<c:set var="vehicleValueAfter" value="${refundCaseValue.vehicleValueAfter}" scope="request"/>

<c:set var="HKD_CURRENCY_SYMBOL" scope="request"><%=DriverConstant.HKD_CURRENCY_SYMBOL%></c:set>

<c:set var="runDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "dd/MM/yyyy")%></c:set>

<c:set var="generatedTime"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "HH:mm:ss")%></c:set>

<c:set var="currencySymbol"><%=PaymentConstant.HKD_CURRENCY_SYMBOL%></c:set>

<html lang="en">
<head>
    <title>&nbsp;</title>
    <!-- saved from url=(0014)about:internet -->
    <meta charset="UTF-8">
    <meta name="margin-top" content="0.5">
    <meta name="margin-bottom" content="0.5">
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
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;" class="bordercolordark-FFF-C0C">
    <tr>
        <td style="width: 20%; vertical-align: top;"><b>REPORT&nbsp;ID:MORF002A</b></td>
        <td style="width: 60%; text-align: center; vertical-align: top;">
            <div style="text-align: center;"><b>
                <%=PaymentConstant.BLANK_PRINT_TITLE%></b>
            </div>
        </td>
        <td style="width: 20%; vertical-align: top;"><b>RUN&nbsp;DATE:<c:out value="${runDate}"/></b></td>
    </tr>

    <tr>
        <td style="width: 20%;"><b>SEQ:CASE NO</b></td>
        <td style="width: 60%;">
            <div style="text-align: center;"><b>REFUND CASE&nbsp;SUMMARY</b></div>
        </td>
        <td style="width: 20%;"><b>PAGE:1</b></td>
    </tr>

    <tr>
        <td style="width: 20%;">&nbsp;</td>
        <td style="width: 60%;">
            <div style="text-align: center;"><b>(GENERATED&nbsp;AS&nbsp;AT&nbsp;<c:out value="${generatedTime}"/>)</b></div>
        </td>
        <td style="width: 20%;">&nbsp;</td>
    </tr>
</table>
<br>
<jsp:include page="Common_RF_Detail.jsp">
    <jsp:param name="dispayInsCode" value="1"/>
</jsp:include>
<table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
    <tr>
        <td style="padding: 5px;">
            <fieldset>
                <legend><span class="section">Payment Details</span></legend>
                <table style="width: 100%; border-spacing: 0px;" id="PaymentDetails">
                    <tr>
                        <td style="vertical-align: top; width: 20%; padding: 2px;" class="content_field">Payee Name</td>
                        <td style="padding: 2px;"><c:out value="${REFUND_CASE_VALUE.payeeName}"/></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; width: 20%; padding: 2px;" class="content_field">Payee Address</td>
                        <td style="padding: 2px;"><c:out value="${REFUND_CASE_VALUE.posOther1}"/></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; width: 20%; padding: 2px;" class="content_field"></td>
                        <td style="padding: 2px;"><c:out value="${REFUND_CASE_VALUE.posOther2}"/></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; width: 20%; padding: 2px;" class="content_field"></td>
                        <td style="padding: 2px;"><c:out value="${REFUND_CASE_VALUE.posOther3}"/></td>
                    </tr>
                </table>
            </fieldset>
        </td>
    </tr>


    <tr><td style="padding: 5px;">
       
                    <table style="width: 100%; border-spacing: 2px; margin: 0 auto;">
                        <tr class="content_table_bg">
                            <td style="width: 33%; padding: 2px;" class="content_field_hr">User Code</td>
                            <td style="width: 33%; padding: 2px;" class="content_field_hr">Description</td>
                            <td style="width: 34%; padding: 2px; text-align: center;" class="content_field_hr">Refund Amount</td>
                        </tr>
                        <c:set var="RECORD_ODD" value="record_odd"/>
                        <c:set var="RECORD_EVEN" value="record_even"/>
                        <c:set var="REFUND_CASE_DETAIL_VALUE_SIZE" value="0"/>
                        <c:set var="RECORD_PAYMENT_STATUS" value="${RECORD_ODD}"/>
                        <c:forEach var="REFUND_CASE_DETAIL_VALUE" items="${REFUND_CASE_VALUE.refundCaseDetails}"
                                   varStatus="status">
                        <tr class="<c:out value="${RECORD_PAYMENT_STATUS}"/>">
                            <td style="height: 25px; padding: 2px;">
                            	<c:set var="LAFIS_CODE"><fmt:formatNumber value="${REFUND_CASE_DETAIL_VALUE.userCodeHead}" pattern="000"/>-<fmt:formatNumber value="${REFUND_CASE_DETAIL_VALUE.userCodeSubHead}" pattern="000"/>-<fmt:formatNumber value="${REFUND_CASE_DETAIL_VALUE.userCodeItemId}" pattern="000"/></c:set>
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
                            <td style="height: 25px; padding: 2px;"><c:out value="${REFUND_CASE_DETAIL_VALUE.refundDesc}"/></td>
                            <td style="height: 25px; padding: 2px; text-align: right;"><fmt:formatNumber type="currency"
                                                                            currencySymbol="${HKD_CURRENCY_SYMBOL}"
                                                                            value="${REFUND_CASE_DETAIL_VALUE.refundAmount}"/></td>

            
                </tr>
                <tr style="display: none;">
                    <td colspan="3">
                        <input type="hidden" name="<%=RequestConstant.CASE_SERIAL_NO%><c:out value="${status.count}"/>"
                        value="<c:out value="${REFUND_CASE_DETAIL_VALUE.caseSerialNo}"/>">
                    </td>
                </tr>

                <c:choose>
                    <c:when test="${RECORD_PAYMENT_STATUS == RECORD_ODD}">
                        <c:set var="RECORD_PAYMENT_STATUS" value="${RECORD_EVEN}"/>
                    </c:when>
                    <c:otherwise>
                        <c:set var="RECORD_PAYMENT_STATUS" value="${RECORD_ODD}"/>
                    </c:otherwise>
                </c:choose>
                <c:set var="REFUND_CASE_DETAIL_VALUE_SIZE" value="${status.count}"/>
                </c:forEach>
                <tr>
                    <td style="height: 25px; padding: 2px;"></td>
                    <td style="height: 25px; padding: 2px;"></td>
                    <td style="height: 25px; padding: 2px; text-align: right;"><hr>
                        Total: <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}"
                                                 value="${REFUND_CASE_PAGE_VALUE.totalAmount}"/></td>
                </tr>
            </table>
    </td>
    </tr>
</table>
<br>

<table style="width: 90%; border-spacing: 0px; margin: 0 auto;">
    <tr>
        <td style="text-align: center;">*** END OF REPORT ***</td>
    </tr>
</table>
</body>
</html>
