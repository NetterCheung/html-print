<%@ page import="hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.CodeTableConstant,
                 hk.gov.valid.vehicle.model.ReserveSearchListPageValue,
                 java.util.Collection,
                 java.util.Date,
		     java.text.SimpleDateFormat" %>
<%@ page import="java.util.Iterator" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="../WEB-INF/tld/codetable.tld" prefix="codetable" %>


<html lang="en">
<head>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="header" content="">
<meta name="footer" content="&bpage &p of &P ">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="2">
<meta name="margin-left" content="0">
<meta name="margin-right" content="2">
<meta name="orientation" content="1">

<title>V4-List of reserved all NSRMs</title>
<style>
<!--

.tb{border-left:1.0pt solid windowtext; border-right:1.0pt solid windowtext; border-top:1.0pt solid windowtext; border-bottom:
  1.5pt double windowtext}

.td_first{
	border-top: 1px none #000000;
	border-right: 1px solid #000000;
	border-bottom: 1px solid #000000;
	border-left: 1px solid #000000;
}
.td_else {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: none;
	border-top-color: #000000;
	border-right-color: #000000;
	border-bottom-color: #000000;
	border-left-color: #000000;
}
.tb2 {border-left:none; border-right:1.0pt solid windowtext; border-top:1.0pt solid windowtext; border-bottom:
  1.5pt double windowtext}
.style9 {
	border-top: 1px none #000000;
	border-right: 1px solid #000000;
	border-bottom: 1px solid #000000;
	border-left: 1px solid #000000;
	font-family: "Times New Roman", Times, serif;
	font-size: 12px;
}
.style12 {
	font-size: 14px;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
}
.style15 {font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px; font-weight: bold; font-family: "Times New Roman", Times, serif; }
.style17 {border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: none; border-right-style: solid; border-bottom-style: solid; border-left-style: none; border-top-color: #000000; border-right-color: #000000; border-bottom-color: #000000; border-left-color: #000000; font-family: "Times New Roman", Times, serif; font-size: 12px; }
-->
@page { margin: 1cm; }
</style>
</head>

<body style="border-style: solid; border-color: white;">
<%
   Collection resultList = (Collection) session.getAttribute(RequestConstant.VEHICLE_RESERVATION_PRINTLIST_SEARCHRESULT_LIST);
%>

<c:set var="reservationDate" value="${sessionScope.vehicleReservationDate}"/>

<div style="margin-top:40pt; text-align: center;">
  <table style="width: 950px; border-spacing: 0px;margin-left: auto; margin-right: auto;">
    <tr>
    <td style="width: 100%;">
    <table style="width: 100%; border-spacing: 0px;">
      <tr>
        <td style="text-align: center;">
        <p class="style15">List of Non-Special Registration Marks (NSRMs) Reserved on <u><fmt:formatDate value="${reservationDate}" pattern="dd/MM/yyyy" /></u> Over Counter</p>
        </td>
      </tr>
    </table></td>
  </tr>
</table>
</div>
	<% 
	  SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	  SimpleDateFormat stf = new SimpleDateFormat("HH:mm:ss");

	  String termNo = null;
	  int counter = 1;
	  int count = 0;
        if(resultList != null)
        {
            Iterator it = resultList.iterator();
            while(it.hasNext())
            {
                ReserveSearchListPageValue value =  (ReserveSearchListPageValue)it.next();
                String tranNo = value.getTranNo();
                if (!tranNo.substring(0,3).equals(termNo)) {
                	if (termNo != null) {
                	%>
				</table>
				</div>
				<div style="PAGE-BREAK-BEFORE: always">&nbsp;</div>
                	<%
                	} 
                	termNo = tranNo.substring(0,3);
                	counter = 1;
                	%>
				<table style="width: 950px; border-spacing: 0px;margin-left: auto; margin-right: auto;">
  <tr>
			    		<td colspan="8" style="padding: 2px;"><p class="style12">Terminal No. : <%=termNo%></p></td>
  </tr>
  <tr>
			    		<td colspan="8" style="padding: 2px;">&nbsp;</td>
  </tr>
  <tr style="text-align: center;">
    <td class="tb" style="width: 40px; padding: 2px;" ><p class="style16">#</p></td>
    <td class="tb2" style="width: 70px; padding: 2px;"><p class="style16">Tran. No.</p></td>
    <td class="tb2" style="width: 80px; padding: 2px;"><p class="style16">Tran. Date</p></td>
    <td class="tb2" style="width: 80px; padding: 2px;"><p class="style16">Tran. Time</p></td>
    <td class="tb2" style="width: 85px; padding: 2px;"><p class="style16">NSRM</p></td>
    <td class="tb2" style="padding: 2px;"><p class="style16">Name of Applicant</p></td>
    <td class="tb2" style="width: 150px; padding: 2px;"><p class="style16">ID Type</p></td>
    <td class="tb2" style="width: 120px; padding: 2px;"><p class="style16">ID No.</p></td>
  </tr>
                	<%
                }
                %>
  <tr>
    <td class="style9" style="padding: 2px;">
				    <p style="text-align: center;"><%=counter%>.</td>
				    <td class="style17" style="padding: 2px;"><%=value.getTranNo()%></td>
    <td class="style17" style="padding: 2px;">
				    <p style="text-align: center;"><%=sdf.format(value.getTranDate())%></td>
    <td class="style17" style="padding: 2px;">
				    <p style="text-align: center;"><%=stf.format(value.getTranTime())%></td>
				    <td class="style17" style="padding: 2px;"><%=value.getRegMark()%></td>
				    <td class="style17" style="padding: 2px;"><%=value.getName()%></td>
    <td class="style17" style="padding: 2px;">
				    	  <c:set var="idType"><%=value.getIdType()%></c:set>
				    	  <c:if test="${empty idType}"><c:set var="idType" value=" "/></c:if>
        				  <codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${idType}"></codetable:out>
    </td>
    <td class="style17" style="padding: 2px;">
				    <p style="text-align: center;"><%=value.getId()%></td>
  </tr>
                <%
                count++;
                counter++;
            }
            %>
				</table>
				</div>
            <%	
        }
	%>

<div style="text-align: center;">
<table style="width: 950px; border-spacing: 0px;margin-left: auto; margin-right: auto;">
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><p class="style12">Total No. :<%=count%> </p></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><span class="style12">Checked by Supervisor :</span></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td style="width: 40px;" class="style12"><p>&nbsp;</p></td>
  	<td style="width: 70px;" class="style12">Signature</td>
  	<td style="width: 350px;" class="style12"> : <span class="MsoNormal">
  	<span lang=EN-US><b>______________________</b></span></span></td>
  	<td class="style12">Post &nbsp;&nbsp;: <span class="MsoNormal">
  	<span lang=EN-US><b>______________________</b></span></span></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  	<td><span class="style12">Name</span></td>
    <td><span class="style12">: <span class="MsoNormal"> 
      <span lang=EN-US><b>______________________</b></span></span></span></td>
  	<td><span class="style12">Date &nbsp;&nbsp;: <span class="MsoNormal">
      <span lang=EN-US><b>______________________</b></span></span></span></td>
  </tr>
</table>
</div>

</body>
</html>
