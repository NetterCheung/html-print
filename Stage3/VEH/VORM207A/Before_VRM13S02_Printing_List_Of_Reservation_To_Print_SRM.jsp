<%@ page import="hk.gov.valid.util.RequestConstant,
                 hk.gov.valid.util.CodeTableConstant" %>

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
<meta name="margin-right" content="0">
<meta name="orientation" content="1">

<title>V4-List of reserved all VRMs or SRMs</title>
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
</style>
</head>

<body>
<c:set var="reservePrintSearchResultList" value="${sessionScope.vehicleReservationPrintListSearchResultList}"/>
<c:set var="reservationDate" value="${sessionScope.vehicleReservationDate}"/>

<div style="text-align: center; margin-top:40pt ">
  <table style="width: 980px; border-spacing: 0px;">
  <tr>
        <td style="width: 54%; text-align: right; padding: 2px;"><p class="style15">List of Registration Marks Reserved on</p></td>
        <td style="width: 46%; text-align: left; padding: 2px;"><p class="style15">&nbsp;&nbsp;<u><fmt:formatDate value="${reservationDate}" pattern="dd/MM/yyyy" /></u></p></td>
  </tr>
  <tr>
    <td colspan="2" style="padding: 2px;">&nbsp;</td>
  </tr>

  <tr>
    <td colspan="2" style="padding: 2px;"><p class="style12">Selection Criteria  :<%=request.getSession().getAttribute(RequestConstant.LIST_TO_PRINT_TYPE)%></p></td>
  </tr>
  <tr>
    <td colspan="2" style="padding: 2px;">&nbsp;</td>
  </tr>
</table>
</div>

<div style="text-align: center;">
<table style="width: 980px; border-spacing: 0px;">
  <tr style="text-align: center;">
    <td style="height: 41px; width: 30px; padding: 2px;" class="tb"><p class="style16">#</p></td>
    <td style="width: 70px; padding: 2px;" class="tb2"><p class="style16">Reg. Mark</p></td>
    <td style="width: 175px; padding: 2px;" class="tb2"><p class="style16">Name of Applicant</p></td>
    <td style="width: 120px; padding: 2px;" class="tb2"><p class="style16">ID Type</p></td>
    <td style="width: 80px; padding: 2px;" class="tb2"><p class="style16">ID No.</p></td>
    <td style="width: 142px; padding: 2px;" class="tb2"><p class="style16">Contact Person</p></td>
    <td style="width: 98px; padding: 2px;" class="tb2"><p class="style16">Contact Tel.</p></td>
    <td style="padding: 2px;" class="tb2"><p class="style16">Address</p></td>
  </tr>
    <c:forEach var="reservePrintListPageValue" items="${reservePrintSearchResultList}" varStatus="status" >
	    <c:set var="count" value="${count+1}"/>
	  	<tr>
	    <td style="text-align: center; vertical-align: middle; padding: 2px;" class="style9"><c:out value="${count}"/>.</td>
	    <td style="padding: 2px;" class="style17">
	    	<c:choose>
	    		<c:when test="${reservePrintListPageValue.regMark==null || reservePrintListPageValue.name==''}">
	    			&nbsp;
	    		</c:when>
	    	<c:otherwise>
	    		<c:out value="${reservePrintListPageValue.regMark}"/>
	    	</c:otherwise>
	    	</c:choose>
	    </td>
	    <td style="padding: 2px;" class="style17">
	    	<c:choose>
	    		<c:when test="${reservePrintListPageValue.name==null || reservePrintListPageValue.name==''}">
	    			&nbsp;
	    		</c:when>
	    		<c:otherwise>
	    			<c:out value="${reservePrintListPageValue.name}"/>
	    		</c:otherwise>
	    	</c:choose>
	    </td>    
	    <td style="text-align: center; padding: 2px;" class="style17">
        		<codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${reservePrintListPageValue.idType}"></codetable:out>
	    </td>
	    <td style="padding: 2px;" class="style17">
	    	<c:out value="${reservePrintListPageValue.id}"/>
	    </td>
	    <td style="padding: 2px;" class="style17">
	    	<c:choose>
	    		<c:when test="${reservePrintListPageValue.contactPerson==null || reservePrintListPageValue.contactPerson==''}">
	    			&nbsp;
	    		</c:when>
	    		<c:otherwise>
	    			<c:out value="${reservePrintListPageValue.contactPerson}"/>
	    		</c:otherwise>
	    	</c:choose>&nbsp;
	    </td>
	    <td style="text-align: center; padding: 2px;" class="style17">
	    	<c:choose>
	    		<c:when test="${reservePrintListPageValue.contactTel==null || reservePrintListPageValue.contactTel==''}">
	    			&nbsp;
	    		</c:when>
	    		<c:otherwise>
	    			<c:out value="${reservePrintListPageValue.contactTel}"/>
	    		</c:otherwise>
	    	</c:choose>&nbsp;
	    </td>
	    <td style="padding: 2px;" class="style17">
	    	<c:choose>
	    		<c:when test="${reservePrintListPageValue.address==null || reservePrintListPageValue.address == ''}">
	    			&nbsp;
	    		</c:when>
	    		<c:otherwise>
	    			<c:out value="${reservePrintListPageValue.address}"/>
	    		</c:otherwise>
	    	</c:choose>
	    </td>
	    </tr>
    </c:forEach>
</table>
</div>

<div style="text-align: center;">
  <table style="width: 980px; border-spacing: 0px;">
    <tr>
    <td style="width: 100%;">&nbsp;</td>
  </tr>
  <tr>
    <td><p class="style16">Total No. :<c:out value="${count}"/></p></td>
  </tr>
</table>
</div>

</body>
</html>
