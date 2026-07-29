<!DOCTYPE html>
<%@ page import="hk.gov.valid.payment.util.PaymentConstant,
                 java.util.Collection,
                 hk.gov.valid.driver.util.DriverConstant,
                 hk.gov.valid.util.*,
                 java.math.BigDecimal,
                 java.util.Iterator,
                 hk.gov.valid.payment.model.PaymentTxnValue,
                 hk.gov.valid.payment.model.PaymentTxnDetailsValue" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="orientation" content="1">
    <title>&nbsp;</title>
<c:set var="TXN_FEE_CODE_ADJV"><%=TxnCode.ADJV_TXN_CODE%></c:set>
<c:set var="FEE_TYPE_CODE_J"><%=PaymentConstant.FEE_TYPE_CODE_J%></c:set>
<c:set var="TXN_SUB_CODE_NEW"><%=TxnCode.ADJV_TXN_SUB_CODE_NEW%></c:set>
<c:set var="HKD_CURRENCY_SYMBOL" scope="request">
  <%= DriverConstant.HKD_CURRENCY_SYMBOL %>
</c:set>
<c:set var="RECORD_DISPLAY_NUM" scope="request">
  <%= 20 %>
</c:set>
<c:set var="FEE_TYPE_CODE_R">
  <%= PaymentConstant.FEE_TYPE_CODE_R %>
</c:set>
<c:set var="Request_Name_Of_PayemntTxnValues">
  <%= RequestConstant.PAYMENT_TXN_DETAIL_VALUES_WITH_ALL_DETAILS %>
</c:set>
<c:set var="paymentTxnValues" value="${requestScope[Request_Name_Of_PayemntTxnValues]}" />
<c:set var="paymentTxnValueSize">
  <%= ((Collection)request.getAttribute(RequestConstant.PAYMENT_TXN_DETAIL_VALUES_WITH_ALL_DETAILS)).size() %>
</c:set>
<c:set var="Request_payment_Receivable_Value">
  <%= RequestConstant.PAYMENT_RECEIVABLE_VALUE %>
</c:set>
<c:set var="paymentReceivableValue" value="${requestScope[Request_payment_Receivable_Value]}" />
<c:set var="REVERT_PAYMENT_VALUES">
  <%= SessionConstant.REVERT_PAYMENT_VALUES %>
</c:set>
<c:set var="revertPaymentValues" value="${sessionScope[REVERT_PAYMENT_VALUES]}" />
<c:set var="revertPaymentValueSize">
  <%= ((Collection)session.getAttribute(SessionConstant.REVERT_PAYMENT_VALUES)).size() %>
</c:set>
<c:set var="USER_PROFILE">
  <%= SessionConstant.USER_PROFILE %>
</c:set>
<c:set var="userProfile" value="${sessionScope[USER_PROFILE]}" />
<c:set var="pageNum" value="1" scope="request" />

<%
    Collection paymentTxnValues = (Collection) request.getAttribute(RequestConstant.PAYMENT_TXN_DETAIL_VALUES_WITH_ALL_DETAILS);
    BigDecimal totalAmt = new BigDecimal(0);
    if (paymentTxnValues != null) {
        Iterator itr = paymentTxnValues.iterator();
        while(itr.hasNext()) {
            PaymentTxnValue paymentTxnValue = (PaymentTxnValue) itr.next();
            Collection details = paymentTxnValue.getPaymentTxnDetailsValues();
            Iterator itr2 = details.iterator();
            while (itr2.hasNext()) {
                PaymentTxnDetailsValue paymentTxnDetailsValue = (PaymentTxnDetailsValue) itr2.next();
                BigDecimal amount = paymentTxnDetailsValue.getAmount();
                if (amount != null) {
                    totalAmt = totalAmt.add(amount.multiply(new BigDecimal(paymentTxnDetailsValue.getQuantity())));
                }
            }
       }
    }

    request.setAttribute("TOTAL_AMOUNT", totalAmt);
%>

  <style>
    <!--
    body {  font-family:"Arial","Helvetica","sans-serif"; font-size: 9pt}
    td {  font-family:"Arial","Helvetica","sans-serif"; font-size: 9pt}
    DIV.page{page-break-before: always}
    p.pageBreak { page-break-after: always;}
    -->
  </style>
  <script>
    var totalAmount = 0;
    function parseToCurrencyNormal(sCurrency)
    {

        var sCurr = sCurrency + "";
        if (isNaN(parseFloat(sCurr)))
            return "$0.00";
        // round up sCurrency at the third bit
        var dCurr = parseFloat(sCurr)+0.005;
        sCurr = "" + dCurr;
        var sCurrList = sCurr.split(".");
        var sInteger  = sCurrList[0];
        var sFloat = "00";
        if (sCurr.indexOf(".")>-1)
            sFloat = sCurrList[1];
        var sCurrInt  = "";
        for ( i=0 ; i < sInteger.length ; i++)
        {
            if (i != 0 && i%3 == 0)
            {
               sCurrInt = ",".concat(sCurrInt);
            }
            sCurrInt = sInteger.charAt(sInteger.length - 1 - i).concat(sCurrInt);
        }
        if (sFloat.length<2) sFloat = sFloat + "0";
        sFloat = sFloat.substring(0,2);
        sCurrInt ="$" + sCurrInt.concat(".") ;
        return sCurrInt.concat(sFloat);
    }
</script>
  </head>
  <body style="background-color: #FFFFFF; color: #000000;">
    <p>
      &nbsp;
    </p>
<%--    <table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">--%>
<%--      <tr>--%>
<%--        <td colspan="2">--%>
<%--          Report ID in V3 :--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          NIL--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Report Name :--%>
<%--        </td>--%>
<%--        <td colspan="4">--%>
<%--          REVERT PAYMENT TRANSACTION LOG--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--        <td colspan="2">--%>
<%--          Report ID in V4 :--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          RORC004O--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Major User :--%>
<%--        </td>--%>
<%--        <td colspan="4">--%>
<%--          TD-LU--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--        <td>--%>
<%--          Module :--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Payment--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Classification :--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Operation--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Sub-Module:--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          &nbsp;--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Mode :--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          On-line--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--        <td colspan="2">--%>
<%--          Sort By :--%>
<%--        </td>--%>
<%--        <td colspan="6">--%>
<%--          Transaction No in the list with amount.--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--        <td colspan="2">--%>
<%--          Group by :--%>
<%--        </td>--%>
<%--        <td colspan="2">--%>
<%--          &nbsp;--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Group Total :--%>
<%--        </td>--%>
<%--        <td colspan="3"></td>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--        <td colspan="2">--%>
<%--          Subtotal :--%>
<%--        </td>--%>
<%--        <td colspan="2">--%>
<%--          &nbsp;--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          Total :--%>
<%--        </td>--%>
<%--        <td colspan="3">--%>
<%--          <c:set var="totalAmt" value="0" />--%>
<%--          <c:forEach var="paymentTxnValue" items="${paymentTxnValues}">--%>
<%--            <c:set var="totalAmt" value="${totalAmt + paymentTxnValue.paymentAmount}" />--%>
<%--          </c:forEach>--%>
<%--          <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${totalAmt}" />--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--        <td colspan="2">--%>
<%--          Output Format :--%>
<%--        </td>--%>
<%--        <td colspan="6">--%>
<%--          &nbsp;--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--      <tr>--%>
<%--        <td colspan="2">--%>
<%--          Remarks:--%>
<%--        </td>--%>
<%--        <td colspan="2">--%>
<%--          &nbsp;--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--    </table>--%>
<%--    <br>--%>
<%--    <br>--%>
    <%--        Common header--%>
    <jsp:include page="MRC06_BlankPrintRevertPaymentTxnLogCommonHdr.jsp">
      <jsp:param name="pageNum" value="1" />
    </jsp:include>
    <br>
    <br>
    <table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
      <tr>
<%--        <td style="vertical-align: top;">--%>
<%--          TRANSACTION NO.:--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          <c:set var="count" value="0" />--%>
<%--          <c:forEach var="paymentTxnValue" items="${paymentTxnValues}">--%>
<%--            <c:set var="count" value="${count + 1}" />--%>
<%--            <c:out value="${paymentTxnValue.businessTxnNo}" />--%>
<%--            <c:if test="${count < revertPaymentValueSize}">--%>
<%--              ,&nbsp;--%>
<%--            </c:if>--%>
<%--            <c:if test="${count%3 == 0 && count != revertPaymentValueSize}">--%>
<%--              <br>--%>
<%--            </c:if>--%>
<%--          </c:forEach>--%>
<%--        </td>--%>
        <td style="vertical-align: top;">
          USER ID:
        </td>
        <td style="vertical-align: top;">
          <c:out value="${userProfile.operatorId}" />
        </td>
        <td style="vertical-align: top;">
        </td>
        <td style="vertical-align: top;">
        </td>
      </tr>
<%--      <tr>--%>
<%--        <td style="vertical-align: top;">--%>
<%--          AGENT/DISTRIBUTOR:--%>
<%--        </td>--%>
<%--        <td style="vertical-align: top;">--%>
<%--          <c:forEach var="paymentTxnValue" items="${paymentTxnValues}" end="0">--%>
<%--            <c:out value="${paymentTxnValue.distributorRegNo}" />--%>
<%--          </c:forEach>--%>
<%--        </td>--%>
<%--        <td></td>--%>
<%--        <td></td>--%>
<%--      </tr>--%>
      <tr>
        <td style="vertical-align: top;">
          PAYMENT METHOD:
        </td>
        <td>
          <table style="border-spacing: 0px; width: 90%;">
            <tr>
              <td>
                EPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-
              </td>
              <td style="text-align: right;">
                <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${paymentReceivableValue.epsAmount}" />
              </td>
            </tr>
            <tr>
              <td>
                FPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-
              </td>
              <td style="text-align: right;">
                <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${paymentReceivableValue.fpsAmount}" />
              </td>
            </tr>            
            <tr>
              <td>
                Cash&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-
              </td>
              <td style="text-align: right;">
                <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${paymentReceivableValue.cashAmount}" />
              </td>
            </tr>
            <tr>
              <td>
                Cheque&nbsp;-
              </td>
              <td style="text-align: right;">
                <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${paymentReceivableValue.chequeAmount}" />
              </td>
            </tr>
            <tr>
              <td>
                Over Collection&nbsp;-
              </td>
              <td style="text-align: right;">
                <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${paymentReceivableValue.overCollectionAmount}" />
              </td>
            </tr>
          </table>
        </td>
        <td>
          <table style="border-spacing: 0px;">
            <tr>
              <td>
                LOCATION:
              </td>
            </tr>
            <tr>
              <td>
                DATE / TIME:
              </td>
            </tr>
            <tr>
              <td>
                AUTHORIZED BY:
              </td>
            </tr>
          </table>
        </td>
        <td>
          <table style="border-spacing: 0px;">
            <tr>
              <td>
                <c:out value='${userProfile.workStationId}' />
              </td>
            </tr>
            <tr>
              <td>
                <c:forEach var="revertPaymentValue" items="${revertPaymentValues}" end="0">
                  <fmt:formatDate value="${revertPaymentValue.revertedDate}" pattern="dd/MM/yyyy HH:mm:ss" />
                </c:forEach>
              </td>
            </tr>
            <tr>
              <td>
                <c:forEach var="revertPaymentValue" items="${revertPaymentValues}" end="0">
                  <c:out value="${revertPaymentValue.revertedSupervisorId}" />
                </c:forEach>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    <br>
    <br>
    <%--  details  --%>
    <c:set var="isNewPage" value="1" />
    <c:set var="totalAmount" value="0" />
    <table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
      <c:forEach var="paymentTxnValue" items="${paymentTxnValues}" varStatus="txnRowStatus">
        <c:if test="${isNewPage == 1}">
          <c:set var="isNewPage" value="0" />
          <tr style="vertical-align: top;">
            <td>
              Reference
            </td>
            <td>
              Transaction NO.
            </td>
            <td>
              Original Receipt NO.
            </td>
            <td>
              Reverted Receipt NO.
            </td>
            <td>
              Transaction Type
            </td>
            <td>
              Amount
            </td>
          </tr>
          <tr>
            <td colspan="6"><br></td>
          </tr>
        </c:if>
        <c:set var="dtlCount" value="0" />
        <c:set var="prevBusinessTxnNo" value="" scope="request"/>
        <c:set var="skip" value="false" scope="request"/>
        <c:forEach var="paymentTxnDetailsValue" items="${paymentTxnValue.paymentTxnDetailsValues}" varStatus="rowStatus">
          <c:set var="businessTxnNo" value="${paymentTxnValue.businessTxnNo}" scope="request" />
<%--          <c:choose>--%>
<%--          <c:when test="${prevBusinessTxnNo == businessTxnNo}">          --%>
            <%if (request.getAttribute("businessTxnNo").equals(request.getAttribute("prevBusinessTxnNo"))) {%>
            <c:set var="skip" value="true" scope="request" />
            <%} else {%>
<%--          </c:when>--%>
<%--          <c:otherwise>--%>
            <c:set var="skip" value="false" scope="request"/>
            <% } %>
            <c:set var="prevBusinessTxnNo" value="${businessTxnNo}" scope="request"/>
<%--          </c:otherwise>--%>
<%--          </c:choose>--%>

          <c:set var="dtlCount" value="${dtlCount + 1}" />
          <c:set var="totalAmount" value="${totalAmount + paymentTxnDetailsValue.quantity * paymentTxnDetailsValue.amount}" />
          <script>
            totalAmount = totalAmount + <c:out value="${paymentTxnDetailsValue.quantity}"/> * <c:out value="${paymentTxnDetailsValue.amount}"/>;
          </script>
          <tr>
            <td>
              <c:if test="${skip == 'false'}">
                <c:out value="${paymentTxnValue.referenceNo}" />
              </c:if>
            </td>
            <td>
              <c:if test="${skip == 'false'}">
                <c:out value="${paymentTxnValue.businessTxnNo}" />
              </c:if>
            </td>
            <td>
                <c:if test="${skip == 'false'}">
                    <c:forEach var="revertPaymentValue" items="${revertPaymentValues}">
                        <c:if test="${revertPaymentValue.businessTxnKeyRef == paymentTxnValue.businessTxnKeyRef}">
                          <c:out value="${revertPaymentValue.originalReceiptNo}" />
                        </c:if>
                    </c:forEach>
                </c:if>
            </td>
            <td>
                <c:if test="${skip == 'false'}">
                    <c:forEach var="revertPaymentValue" items="${revertPaymentValues}">
                        <c:if test="${revertPaymentValue.businessTxnKeyRef == paymentTxnValue.businessTxnKeyRef}">
                            <c:out value="${revertPaymentValue.revertedReceiptNo}" />
                        </c:if>
                    </c:forEach>
                </c:if>
            </td>
            <td>
<%--                <c:choose>--%>
<%--                  <c:when test="${paymentTxnDetailsValue.feeTypeCode==FEE_TYPE_CODE_R}">--%>
<%--                    <c:out value="${paymentTxnDetailsValue.txnFeeCodeValue.txnFeeDescEng}" />--%>
<%--                  </c:when>--%>
<%--                  <c:otherwise>--%>
<%--                    <c:out value="${paymentTxnDetailsValue.feeTypeCodeValue.interpretationEng}" />--%>
<%--                  </c:otherwise>--%>
<%--                </c:choose>--%>
<%--                    <c:if test="${paymentTxnDetailsValue.businessTxnCode==TXN_FEE_CODE_ADJV}">--%>
                    <c:if test="${paymentTxnDetailsValue.feeTypeCode==FEE_TYPE_CODE_J}">
                        <c:set var="noOfAdjv" value="${noOfAdjv+1}" />
<%--                        <c:choose>--%>
<%--                            <c:when test="${paymentTxnDetailsValue.businessTxnSubCode==TXN_SUB_CODE_NEW}">--%>
                                <c:out value="• ${paymentTxnDetailsValue.accountCrossRefCodeValue.accountDesc}" />
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                <c:out value="${paymentTxnDetailsValue.txnFeeCodeValue.txnFeeDescEng}" />--%>
<%--                            </c:otherwise>--%>
<%--                        </c:choose>--%>
                        </c:if>
<%--                        <c:if test="${paymentTxnDetailsValue.businessTxnCode!=TXN_FEE_CODE_ADJV}">--%>
                        <c:if test="${paymentTxnDetailsValue.feeTypeCode!=FEE_TYPE_CODE_J}">
                            <c:choose>
                                <c:when test="${paymentTxnDetailsValue.feeTypeCode==FEE_TYPE_CODE_R}">
                                   <c:out value="${paymentTxnDetailsValue.txnFeeCodeValue.txnFeeDescEng}" />
                                </c:when>
                                <c:otherwise>
                                    <c:out value="${paymentTxnDetailsValue.feeTypeCodeValue.interpretationEng}" />
                                </c:otherwise>
                            </c:choose>
                     </c:if>
            </td>
            <td style="text-align: right;" >
<%--              <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${paymentTxnDetailsValue.quantity * paymentTxnDetailsValue.amount}" />--%>
              <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${paymentTxnDetailsValue.totalAmount}" />
            </td>
          </tr>
          <c:if test="${dtlCount%RECORD_DISPLAY_NUM == 0 && txnRowStatus.count != paymentTxnValueSize}">
            <tr>
              <td>
                <p class="pageBreak"></p>
                <c:set var="isNewPage" value="1" />
              </td>
              <td style="display: none;" colspan="5"></td>
            </tr>
          </table>
          <c:set var="pageNum" value="${pageNum + 1}" scope="request" />
          <jsp:include page="MRC06_BlankPrintRevertPaymentTxnLogCommonHdr.jsp"></jsp:include>
          <br>
          <br>
          <table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
          </c:if>
        </c:forEach>
      </c:forEach>
    </table>
    <table style="width: 90%; border-spacing: 0px; margin: 0 auto;" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0">
      <tr style="display: none;">
        <th></th><th></th><th></th><th></th>
      </tr>
      <tr>
      	<td colspan="2" style="width: 75%;"></td>
        <td>
          TOTAL:&nbsp;&nbsp;
        </td>
        <td style="text-align: right;" id="td_total_amount">
          <c:set var="TOTAL_AMOUNT">TOTAL_AMOUNT</c:set>
          <fmt:formatNumber type="currency" currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${requestScope[TOTAL_AMOUNT]}"/>
<%--            <SCRIPT >
                var totalAmt = parseToCurrencyNormal(totalAmount);
                td_total_amount.innerText = "" + totalAmt;
           </script>--%>
        </td>
      </tr>
    </table>
    <br>
    <br>
    <table style="width: 100%; border-spacing: 0px; margin: 0 auto;">
      <tr>
        <td style="text-align: center;">
          *** END OF REPORT ***
        </td>
      </tr>
    </table>
  </body>
</html>