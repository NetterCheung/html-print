 <%--
 * <p><span style="white-space:nowrap">Title: AppointmentPrint.jsp</span></p>
 * <p><span style="white-space:nowrap">Project: VALID IV</span></p>
 * <p><span style="white-space:nowrap">Description: Print Appointment</span></p>
 * <p><span style="white-space:nowrap">Copyright: Copyright (c) 2004</span></p>
 * <p><span style="white-space:nowrap">Company: HEWLETT PACKARD</span></p>
 *
 * @author Joy Xu
 * @version 1.0
 * @project CR-2020-012
 *          Date: 2021-09-21
 *          Time: 12:27:00
--%>

<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page import="hk.gov.valid.dtas.util.DtasConstant"%>
<%@ page import="hk.gov.valid.util.SessionConstant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="../WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="../WEB-INF/tld/tdcustom.tld" prefix="print"%>

<c:set var="appointValue" value="${requestScope.pagevalue}"/>
<c:set var="IssueDate" value="${appointValue.issueDate}"/>
<c:set var="AppointmentIssueDate" value="${appointValue.appointmentIssueDate}"/>
<c:set var="legalEntityValue" value="${appointValue.legalEntityValue}"/>
<c:set var="testCentreValue" value="${appointValue.testCentreValue}"/>
<c:set var="parameterValue" value="${appointValue.appointmentLetterParametersValue}" />
<c:set var="retasAlloFlagConstant" value="<%=DtasConstant.APPOINTMENT_BY_RETAS_FLAG%>" />

<style>
<!--
.header_note {
    font-family: Times New Roman, MingLiU;
    font-size: 8pt;
    font-style: italic;
    text-align: justify;
    line-height: 8pt;
    width: 250px;
    border: 1px solid black;
    padding: 1px 8px 1px 8px;
}
.issue_date {
    border-bottom: 1px solid black;
    width: 200px;
    text-align: center;
}
.applicant_name {
    font-family: Times New Roman, MingLiU;
    font-size: 16pt;
    word-wrap: break-word;
    text-align: left;
    height: 30px;
}
.applicant_addr {
    font-family: MingLiU_HKSCS, Times New Roman;
    font-size: 11pt;
    height: 70px;
}
.test_desc {
    font-family: Times New Roman, MingLiU;
    font-size: 12pt;
}
.collapse_border_table {
    border-collapse: collapse;
    border: 1px solid black;
}
.list_content {
    height: 320px;
}
.note_item {
    font-family: Times New Roman, MingLiU;
    font-size: 8pt;
    text-align: justify;
    <%if (!SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
		line-height: 100%;
	<%}%>
}
.note_highlight {
    font-family: Times New Roman, MingLiU;
    font-size: 8pt;
    background-color: #C0C0C0;
    font-weight: bold;
}
-->
</style>

<div style="margin-left:2cm;">
	<img style="width: 263px;height: 88px;" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>">
</div>

<br>
<br>
<table style="border-spacing:0;width:100%">	
	<tr>
		<td style="width:26%;padding:0px;border:0">&nbsp;</td>
		<td class="applicant_name" style="padding:0px;border:0">
			<c:choose>
				<c:when test="${!empty legalEntityValue.nameEng}">
					<c:out value="${legalEntityValue.nameEng}"/>
				</c:when>
			<c:otherwise>
				<span style="white-space:nowrap"><span lang=ZH-TW style='font-size:16pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>
				<c:out value="${legalEntityValue.nameChi}"/>
				</span></span>
			</c:otherwise>
			</c:choose>
		</td>
	</tr>
	<tr>
		<td style="width:26%;padding:0px;border:0">&nbsp;</td>
        <td class="applicant_addr" style="padding:0px;border:0">
            <c:if test="${!appointValue.existMailAddress}">
            	<c:out value="${appointValue.addressLine1}"/><br>
            	<c:out value="${appointValue.addressLine2}"/><br>
              	<c:out value="${appointValue.addressLine3}"/>
            </c:if>
            <c:if test="${appointValue.existMailAddress}">
            	<c:out value="${appointValue.mailAddressLine1}"/><br>
            	<c:out value="${appointValue.mailAddressLine2}"/><br>
            	<c:out value="${appointValue.mailAddressLine3}"/>
            </c:if>
		</td>
	</tr>
	<tr><td colspan="2" style="height:50px;padding:0px;border:0">&nbsp;</td></tr>
</table>
<table>
    <tr>
        <td style="text-align:-webkit-left">
            <c:choose>
                <c:when test="${!empty legalEntityValue.nameEng}">
                    <span style="white-space:nowrap"><span style="font-size:12pt;margin-left:2.5cm;font-family:Times New Roman;letter-spacing:0pt">
                    <c:out value="${legalEntityValue.nameEng}"/>
                    </span></span>
                </c:when>
                <c:otherwise>
                    <!-- Modified by Justin wong on 06-03-2023 begin -->
                    <!-- <span style="white-space:nowrap"><span lang=ZH-TW style="font-size:12pt;margin-left:2.5cm;font-family:PMingLiU;letter-spacing:0pt">  -->
                    <span style="white-space:nowrap"><span lang=ZH-TW style="font-size:12pt;margin-left:2.5cm;font-family:MingLiU_HKSCS;letter-spacing:0pt">
                    <!-- Modified by Justin wong on 06-03-2023 begin -->
                    <c:out value="${legalEntityValue.nameChi}"/>
                    </span></span>
                </c:otherwise>
            </c:choose>
            <b>:</b></td>
    </tr>
</table>
<table style="border-spacing:0;width:100%">
  <tr style="display:none"><th>Col1</th><th>Col2</th></tr>
	<tr><td colspan="2" style="height:40px;padding:0px;border:0">&nbsp;</td></tr>
	<tr>
		<td style="font-size:12pt;font-family:Times New Roman;text-align:-webkit-center;padding:0px;border:0"><u>Driving Test Appointment Letter</u></td>
        <td style="display: none;"></td>
	</tr>
	<tr><td colspan="2" style="height:40px;padding:0px;border:0">&nbsp;</td></tr>
	<tr>
		<td style="padding:0px;border:0">
		    <%--added "cover" word by Justin wong for CR-2020-012 --%>
        	<p style="margin-left:2.5cm;margin-right:2.5cm;font-size:12pt;font-family:Times New Roman;text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In relation to your driving test appointment and related matters, please find enclosed your relevant driving test appointment letter.  Please attend the driving test according to the test date, time and the Driving Test Centre specified in the appointment letter, and bring along your driving test appointment letter (excluding this cover letter) and required documents.  For details, please refer to the information and notes on the appointment letter.  You are also advised to visit the website of Transport Department regularly for the latest news on driving test services.</p>
        </td>
        <td style="display: none;"></td>
    </tr>    	
   	<tr><td colspan="1" style="height:20px;padding:0px;border:0">&nbsp;</td>
        <td style="display: none;"></td>
    </tr>
   	<tr>
   		<td style="padding:0px;border:0">
        	<p style="margin-left:2.5cm;margin-right:2.5cm;font-size:12pt;font-family:Times New Roman;text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In addition, you should approach the Licensing Offices of the department for amendment of record in case there is change to your mailing address.  Should you have any enquiries relating to driving test appointment services, please contact us at 2771 7723.</p>
        </td>
        <td style="display: none;"></td>
   	</tr>
   	<tr><td colspan="2" style="height:40px;padding:0px;border:0">&nbsp;</td></tr>
</table>  
   	
<table style="border-spacing:0;width:100%">      	
   	<tr>
   		<td style="text-align:-webkit-right;padding:0px;border:0"><span style="margin-right:2.5cm;font-family:Times New Roman;font-size:12pt;">Driving Test Appointment Office</span></td>
   	</tr>   	 	
   	<tr>
    	<td style="text-align:-webkit-right;padding:0px;border:0"><span style="margin-right:3.4cm;font-family:Times New Roman;font-size:12pt;">Transport Department</span></td>
   	</tr>
</table>	

<div class="note_page"><span style="visibility: hidden;">&nbsp;</span>
	<table class="A4" style="border-spacing:0;width:100%">
 	</table>
</div>
<div class="note_page"></div>          
<table class="A4" style="border-spacing:0;width:100%">
<tr><td style="height:2px;padding:0px;border:0"></td></tr>
  <tr>
    <td style="padding:0px;border:0">
      
      <table style="border-spacing:0;width:100%">
        <tr>
          <td style="text-align:left;vertical-align:top;padding:0px;">
            <div class="header_note">Please quote your identity card no. & test appointment particulars (Test Date, Test Time and Test Centre), your correspondence address and your contact telephone number in any correspondence.</div>
          </td>
          <td style="text-align:right;vertical-align:top;padding:0px;">
            <table style="border-spacing:0">
              <tr>
                <td  style="white-space:nowrap;padding:0px;"><span style="white-space:nowrap">Print Date: </span></td>
                <td class="issue_date" style="padding:0px;">&nbsp;&nbsp;<fmt:formatDate value="${appointValue.txnDate}" pattern="dd/MM/yyyy"/></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      
      <%-- Modified by jackie.hung on 2005-02-20 END --%>
      <%--modified by Justin wong for CR-2020-012 begin --%>
      <table style="border-spacing:0;width:100%">

        <tr>
          <td style="width:26%;padding:5px;border:0">&nbsp;</td>
          <td class="applicant_name" style="padding:5px;border:0">
            <c:choose>
              <c:when test="${!empty legalEntityValue.nameEng}">
                <%--add by ZhuZW for while Englishi name is long automatism newline 2006-06-27(begin A(1))--%>
                <c:out value="${legalEntityValue.nameEng}"/>
                <%--end A(1)--%>
              </c:when>
              <c:otherwise>
                <span style="white-space:nowrap"><span lang=ZH-TW style='font-size:16pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>
				<c:out value="${legalEntityValue.nameChi}"/>
				</span></span>
              </c:otherwise>
            </c:choose>
          </td>
          <td style="width:20%;padding:5px;border:0">
           <table >
                <tr>
                    <td style="padding:5px;border:0">
			            <c:choose>
			              <c:when test="${' ' == legalEntityValue.idType}">
			                <codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" selected="${legalEntityValue.idType}"><codetable:column codeColumn="<%=CodeTableConstant.IDENTITY_TYPE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out> -
			                <SCRIPT>
			                  var idNo = "<c:out value="${legalEntityValue.idNo}"/>";
			                  document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
			                </SCRIPT>
			              </c:when>
			              <c:otherwise>
			                <codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${legalEntityValue.idType}"><codetable:column codeColumn="<%=CodeTableConstant.IDENTITY_TYPE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out> - <c:out value="${legalEntityValue.idNo}"/>
			              </c:otherwise>
			            </c:choose>
			        </td>
			    </tr>
	            <tr>
	                <td style="FONT-SIZE: 12pt;padding:5px;border:0" >
			            <c:out value="${appointValue.deCodeDescEnglish}"/> - <c:out value="${appointValue.testTypeDescEnglish}"/>
			        </td>
	            </tr>
            </table>
          </td>
        </tr>
        <%-- 
        <tr>
          <td style="width: 26%;">&nbsp;</td>
          <%-- Amend by Joy Xu for CR-2020-012 on 06-10-2021 begin --%>
          <%-- <td class="applicant_addr"> --%>
            <%-- add by lig on 2005-1-21 begin --%>
            <%--<c:if test="${!appointValue.existMailAddress}">
              <%-- add by terry on 2006-8-17 begin --%>
              <%--<c:out value="${appointValue.addressLine1}"/><br>
              <c:out value="${appointValue.addressLine2}"/><br>
              <c:out value="${appointValue.addressLine3}"/>
              <%-- add by terry on 2006-8-17 end --%>
            <%--</c:if> --%>
            <%--<c:if test="${appointValue.existMailAddress}">
              <c:out value="${appointValue.mailAddressLine1}"/><br>
              <c:out value="${appointValue.mailAddressLine2}"/><br>
              <c:out value="${appointValue.mailAddressLine3}"/>
            </c:if>
          </td>
          <td class="test_desc">--%>
       
          <%--
          <td style="width: 54%;">&nbsp;</td>
          <td style="width: 20%;" class="test_desc">
           --%>
          <%-- Amend by Joy Xu for CR-2020-012 on 06-10-2021 end --%>
          <%--
            <c:out value="${appointValue.deCodeDescEnglish}"/> - <c:out value="${appointValue.testTypeDescEnglish}"/>
          </td>
        </tr>
         --%>
      </table>
      <hr class="hline" style="margin:0.5em auto">
      
      <table style="border-spacing:0;width:100%">
        <tr>
          <td style="padding:2px;border:0">A test appointment has been arranged for you, the details are as follows:</td>
        </tr>
      </table>
      
      <table class="collapse_border_table" style="border-spacing:0;width:100%">
        <tr>
          <td class="collapse_border_table" style="text-align:-webkit-center;height:45px;width:20%;padding:3px;">Test Date<br>(Day/Month/Year)</TD>
          <td class="collapse_border_table" style="text-align:-webkit-center;width:20%;padding:3px;"><c:out value="${appointValue.testDate}"/></TD>
          <td class="collapse_border_table" rowspan="3" style="text-align:-webkit-center;width:10%;padding:3px;"><span style="white-space:nowrap">Test Centre</span></TD>
          <td class="collapse_border_table" rowspan="3" style="text-align:-webkit-center;width:50%;padding:3px;">
            <table style="border-spacing:0">
              <tr>
                <td style="padding:0px;">
                  <c:if test="${!empty testCentreValue.flat}">
                    <codetable:out value = "<%=CodeTableConstant.FLAT_DESCRIPTOR_CODE%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${testCentreValue.flatDescCode}"/>
                  <c:out value="${testCentreValue.flat}"/>
                  </c:if>
                  <c:if test="${!empty testCentreValue.floor}">
                    <codetable:out value="<%=CodeTableConstant.FLOOR_DESCRIPTOR_CODE%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${testCentreValue.floorDescCode}"/>
                  <c:out value="${testCentreValue.floor}"/>
                  </c:if>
                  <c:if test="${!empty testCentreValue.block}">
                    <codetable:out value="<%=CodeTableConstant.BLOCK_DESCRIPTOR_CODE%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${testCentreValue.blockDescCode}"/>
                  <c:out value="${testCentreValue.block}"/>
                  </c:if>
                  <c:out value="${testCentreValue.buildingEng}"/>
                </td>
              </tr>
              <tr>
                <td style="padding:0px;">
                  <c:out value="${testCentreValue.streetNoEng}"/>
                  <c:out value="${testCentreValue.streetEng}"/>
                  <c:out value="${testCentreValue.estateEng}"/>
                  <c:out value="${testCentreValue.lotEng}"/>
                </td>
              </tr>
              <tr>
                <td style="padding:0px;">
                  <c:if test="${!empty testCentreValue.districtCode}">
                    <codetable:out value="<%=CodeTableConstant.DISTRICT_CODE%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${testCentreValue.districtCode}"/>
                  </c:if>
                  <c:if test="${!empty testCentreValue.areaCode}">
                    <codetable:out value="<%=CodeTableConstant.AREA_CODE%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${testCentreValue.areaCode}"/>
                  </c:if>
                </td>
              </tr>
              <tr>
                <td style="padding:0px;">&nbsp;</td>
              </tr>
              <tr>
                <td style="padding:0px;">
                  <c:if test="${!empty testCentreValue.interpretationEng}">
                    <c:out value="${testCentreValue.interpretationEng}"/>
                  </c:if>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="collapse_border_table" style="text-align:-webkit-center;height:45px;padding:3px;">Test Time</TD>
          <td class="collapse_border_table" style="text-align:-webkit-center;padding:3px;"><c:out value="${appointValue.testTime}"/></TD>
        </tr>
        <tr>
          <td class="collapse_border_table" style="text-align:-webkit-center;height:50px;padding:3px;"><span style="white-space:nowrap">Test Form No.</span><span style="white-space:nowrap">(Test Form Issue Date)</span></TD>
          <td class="collapse_border_table" style="text-align:-webkit-center;padding:3px;"><c:out value="${appointValue.testFormNo}"/><br>(<c:out value="${IssueDate}"/>)</TD>
        </tr>
      </table>
      
      <table style="border-spacing:0;width:100%">
        <tr>
          <td class="list_content" style="padding:3px;border:0">
            <p>You are advised to report your arrival to the Test Centre 15 minutes before test, bringing with you the following 
            <c:if test="${appointValue.testType == '2' && ((appointValue.deCode == 3) || (appointValue.deCode == 22)) }">items and</c:if> documents, which will be returned to you after the test.</p>
            <ol>
              <li>This letter</li>
              <li>Hong Kong Permanent Identity Card / Hong Kong Identity Card / an alternative identity document previously registered in the Transport Department</li>
              <c:choose>
                <c:when test="${(appointValue.deCode == 3) || (appointValue.deCode == 22) || (appointValue.deCode == 1) || (appointValue.deCode == 2)}">
                	<c:if test="${(appointValue.testType == '2') || (appointValue.testType == 'B') || (appointValue.testType == 'C')}">
                		<li>Your Learner's Driving Licence and valid Driving Licence (if applicable)</li>
                	</c:if>
                	<c:if test="${appointValue.testType == '1'}">
                		<li>Your valid Driving Licence (if applicable)</li>
                	</c:if>
                	<c:choose>
					<c:when test="${(appointValue.testType == '2') || (appointValue.testType == 'B') || (appointValue.testType == 'C')}">
						<li>Letter of approval for disabled persons (if applicable)</li>
						<li>A printed copy of a valid Third Party Risks Insurance Certificate in respect of your test vehicle (electronic versions are not accepted) (please refer to 'Test Vehicle' overleaf)</li>
						<c:if test="${ (appointValue.deCode == 3) || (appointValue.deCode == 22)}">
							<li>A helmet of approved specifications</li>
						</c:if>
            <li>A printed copy of Vehicle Licensing Notice with the latest validity period of the vehicle licence of the test vehicle (electronic versions are not accepted). Only applicable to those vehicle licences registered or renewed on or after 30 December 2024.</li>
					</c:when> 
					<c:otherwise>
						<li>Letter of approval for disabled persons (if applicable)</li>
						</c:otherwise>
					</c:choose>
                </c:when>            
                <c:otherwise>
                	<c:if test="${appointValue.deCode == 6 && appointValue.testType == '2'}">
                	 <li>Your valid Driving Licence (if applicable)</li>
                	</c:if>
                	<c:if test="${!(appointValue.deCode == 6 && appointValue.testType == '2')}">
                	 <li>Your Learner's Driving Licence and valid Driving Licence (if applicable)</li>
                	</c:if>					
					<c:choose>
						<c:when test="${!(appointValue.deCode == 6 && appointValue.testType == '2')}">
							<li>Letter of approval for disabled persons (if applicable)</li>
							<li>A printed copy of a valid Third Party Risks Insurance Certificate in respect of your test vehicle (electronic versions are not accepted) (please refer to 'Test Vehicle' overleaf)</li>
              <li>A printed copy of Vehicle Licensing Notice with the latest validity period of the vehicle licence of the test vehicle (electronic versions are not accepted). Only applicable to those vehicle licences registered or renewed on or after 30 December 2024.</li>
						</c:when>
						<c:otherwise>
						<li>Letter of approval for disabled persons (if applicable)</li>
						</c:otherwise>
					</c:choose>
                </c:otherwise>
              </c:choose>
            </ol>
            <p> 
			<c:if test="${(appointValue.deCode == 1) || (appointValue.deCode == 2) || (appointValue.deCode == 3 && appointValue.testType == '1') || (appointValue.deCode == 22 && appointValue.testType == '1')}">
			If candidate is a holder of valid Temporary Driving Licence, they must bring it along for the test. </c:if>
			<c:if test="${(appointValue.testType != '1') && !((appointValue.testType == '2') && (appointValue.deCode == 6)) }">
        <c:choose>
        <c:when test="${ !(appointValue.deCode == 3 || appointValue.deCode == 22) }">
        Candidate will not be tested if items (2), (5), (6) above is defaced.
        </c:when>
        <c:otherwise>
        Candidate will not be tested if items (2), (5), (7) above is defaced.
        </c:otherwise>
        </c:choose>
			</c:if>
			</p>

            <!--Chri on 2014-08-21 -->
			<c:if test="${appointValue.testType != '1' && !((appointValue.testType == '2') && (appointValue.deCode == 6))}">
				<c:if test="${ !(appointValue.deCode == 3 || appointValue.deCode == 22) }">
				<p>Candidates should remind the driving instructor who accompanies them to attend driving test (if any) to provide the Driving Examiner conducting the test with his / her private driving instructor’s licence (only applicable to candidates receiving driving training from private driving instructors).</p>
				</c:if>
			<p>Candidate will also not be tested if the vehicle presented is not of the class applied for.</p>
        <c:choose>
        <c:when test="${ !(appointValue.deCode == 3 || appointValue.deCode == 22) }">
        <p>If the validity date of the Vehicle Licensing Notice mentioned in item (6) is not yet come into effect on the day of the driving test, the old vehicle license plate with expiry date of the test vehicle must be presented so as to ensure that the vehicle licence is still valid on the day of the driving test.</p>
        </c:when>
        <c:otherwise>
        <p>If the validity date of the Vehicle Licensing Notice mentioned in item (7) is not yet come into effect on the day of the driving test, the old vehicle license plate with expiry date of the test vehicle must be presented so as to ensure that the vehicle licence is still valid on the day of the driving test.</p>
        </c:otherwise>
        </c:choose>
			</c:if>
            <p>Candidate who fails to produce any one or all of the above documents may NOT be allowed to take the test and his / her test form may be invalidated.  If he / she wants to take the driving test again, he / she will have to purchase a new test form.</p>
            <p>Before candidates are allowed to proceed with the road test, they are required to read at a distance of approximately 23 metres, with the aid of corrective lenses if worn, a motor vehicle registration number.  Candidates who fail the vision test may NOT be allowed to take the road test and their test form may be invalidated.  If they want to take the driving test again, they will have to purchase a new test form.</p>
          </td>
        </tr>
      </table>
      
      <table class="collapse_border_table" style="border-spacing:0;width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th></tr>
        <tr>
          <!-- updated by Louise on case SD11986123 start -->
          <!-- <td colspan="3" style="border-bottom:1px solid black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please approach the following office for enquries about all kinds of driving test arrangement:</td> -->
          <td colspan="3" style="border-bottom:1px solid black;padding:3px;">Please approach the following office for enquiries about all kinds of driving test arrangement:</td>
          <!-- updated by Louise on case SD11986123 end -->
        </tr>
        <tr>
          <td style="text-align:-webkit-left;width:35%;padding:3px;">Driving Test Appointment Office</td>
          <td style="text-align:-webkit-left;width:45%;padding:3px;"><c:out value="${parameterValue.appointmentOfficeAddressEng}"/></td>
          <td style="text-align:-webkit-right;width:20%;padding:3px;">Tel.: <c:out value="${parameterValue.appointmentOfficePhone1}"/></td>
        </tr>
      </table>
      
      <table style="border-spacing:0;width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th></tr>
        <tr>
          <td colspan="3" style="vertical-align:bottom;height:20px;padding:2px;border:0"><c:out value="${appointValue.retasReservationNo}"/>&nbsp;</td>
        </tr>
        <tr>
          <td style="padding:2px;border:0"><i style="font-size:8pt;">Please see overleaf</i></td>
          <td style="font-size:9pt;text-align:-webkit-center;width:20%;padding:2px;border:0">Driving Services Section <br>Transport Department</td>
            <td style="display: none;"></td>
        </tr>
      </table>
	<table  style="border-spacing:0;width:100%">
	<tr>
		<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
		<td style="padding:2px;border:0">&nbsp;</td>
		<%}%>
        </tr>
		<tr>
          <td style="FONT-SIZE: 7pt; border: 1px solid black;text-align:justify;padding:2px"><b><u>Note: </u></b>If you wish to learn to drive a motor vehicle on a road, you should be the holder of a learner's driving licence for that class of vehicles. A holder of a learner's driving licence must comply with the relevant conditions imposed under the learner's driving licence and the legal requirements. In accordance with Section 42 of the Road Traffic Ordinance (Cap. 374), no person shall drive a motor vehicle on a road unless he / she is the holder of a driving licence in respect of a vehicle of the class of vehicle which he / she is driving. Any person who contravenes this section commits an offence and is liable, in the case of a first conviction to a fine of $5,000 and to imprisonment for 3 months, and in the case of a second or subsequent conviction to a fine of $10,000 and to imprisonment for 6 months. </td>
		   </tr>
      </table>
<%-- Modified by jackie.hung 2005-02-20 START --%>
<%-- Fix Issue date position --%>
      
      <table style="FONT-SIZE: 7pt;border-spacing:0;width:100%">
        <tr>
          <td  style="text-align:-webkit-left;padding:0px;border:0"><c:out value="${legalEntityValue.nameEng}"/></td>
          <td style="text-align:-webkit-right;padding:0px;border:0">TF ISSUE DATE: <c:out value="${IssueDate}"/></td>
        </tr>
      
<%-- Modified by jackie.hung 2005-02-20 END --%>
      
        <tr>
          <td colspan="2" style="text-align:-webkit-center;padding:0px;border:0">
            <c:choose>
            <c:when test="${' ' == legalEntityValue.idType}">
              <codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" selected="${legalEntityValue.idType}"><codetable:column codeColumn="<%=CodeTableConstant.IDENTITY_TYPE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out> -
              <script>
                  var idNo = "<c:out value="${legalEntityValue.idNo}"/>";
                  document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
              </script>
            </c:when>
            <c:otherwise>
              <codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${legalEntityValue.idType}"><codetable:column codeColumn="<%=CodeTableConstant.IDENTITY_TYPE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out> - <c:out value="${legalEntityValue.idNo}"/>
            </c:otherwise>
            </c:choose>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${appointValue.txnNo}"/>&nbsp;&nbsp;<fmt:formatDate value="${appointValue.txnDate}" pattern="dd/MM/yyyy HH:mm:ss"/>&nbsp;&nbsp;<c:out value="${appointValue.userId}"/>&nbsp;&nbsp;<c:out value="${appointValue.testFormNo}"/>
          </td>
        </tr>
      
<%-- Modified by jackie.hung START --%>
<%-- Added &nbsp; --%>
      
        <tr>
          <td colspan="2" style="text-align:-webkit-center;padding:0px;border:0">
            CLS&nbsp;&nbsp;:&nbsp;&nbsp;
<%-- Modified by Eric for ER-2012-002(RETAS) Start
            <c:if test = "${appointValue.deCode < 10}">0</c:if><c:out value="${appointValue.deCode}"/>&nbsp;&nbsp;<c:out value="${appointValue.testType}"/>&nbsp;&nbsp;&nbsp;&nbsp;TEST&nbsp;&nbsp;CTR&nbsp;/&nbsp;DATE&nbsp;/&nbsp;TIME&nbsp;&nbsp;:&nbsp;&nbsp;<c:out value="${appointValue.testCenterCode}"/>&nbsp;/&nbsp;<c:out value="${appointValue.testDate}"/>&nbsp;/&nbsp;<c:out value="${appointValue.testTime}"/>
 --%>
            <c:if test = "${appointValue.deCode < 10}">0</c:if><c:out value="${appointValue.deCode}"/>&nbsp;&nbsp;<c:out value="${appointValue.testType}"/>&nbsp;&nbsp;&nbsp;&nbsp;TEST&nbsp;&nbsp;CTR&nbsp;/&nbsp;DATE&nbsp;/&nbsp;TIME&nbsp;/&nbsp;ALLO&nbsp;&nbsp;:&nbsp;&nbsp;<c:out value="${appointValue.testCenterCode}"/>&nbsp;/&nbsp;<c:out value="${appointValue.testDate}"/>&nbsp;/&nbsp;<c:out value="${appointValue.testTime}"/>&nbsp;/&nbsp;<c:out value="${appointValue.alloFlag}"/>
<%-- Modified by Eric for ER-2012-002(RETAS) End --%>
          </td>
        </tr>
      </table>
      
<%-- Appointment Letter Back Page from Template received on 2005-02-15 --%>
      
    </td>
  </tr>
</table>

<div class="note_page"><span style="visibility: hidden;">&nbsp;</span>
  <table class="A4" style="border-spacing:0;width:100%">
  <tr>
      <td style="padding:0px;border:0">
       <table style="border-spacing:0;width:100%">
          <!-- Modified by Horace Tam on 2023-09-21 for CR-2023-017 START-->
          <tr><td class="note_item" style="padding:0px;border:0"><b>Notes to Candidates:</b></td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><b><u>Written Test</u></b></td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Part A Test (Written Test): </span>&nbsp;&nbsp;Candidates are required to answer 20 questions based on the "Road Users' Code" (June 2020 Edition) and updates in road traffic legislations, driving rules and information within 20 minutes.  Candidates must give not less than 16 correct answers in order to pass the test.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Taxi Written Test: </span>&nbsp;&nbsp;Candidates are required to answer 20 questions from "Taxi Regulations", 20 questions from "Location and Route Questions", and 50 questions from "Road Users' Code" (June 2020 Edition) and updates in road traffic legislations, driving rules and information within 45 minutes.  Please refer to the "Guide to Taxi Written Test" for the details of the passing criteria.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Updated Scope of Written Test: </span>&nbsp;&nbsp;The latest updates in road traffic legislations, driving rules and information will be included in the scope of Part A Test (Written Test) and Taxi Written Test, and relevant updates will be uploaded on the website of the Transport Department (https://www.td.gov.hk) from time to time.  Candidates should visit the website of Transport Department for the updated scope and be conversant with the revised test materials before taking the test.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Preparation before Test: </span>&nbsp;&nbsp;Candidates should read the Examination Regulations and may practice at the kiosks located in the test centre before taking the test, to get familiar with the procedures of the computerized written test.  Failure to observe the Examination Regulations may result in disqualification from the test and invalidation of the test form.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Road Users' Code: </span>&nbsp;&nbsp;Applicants for Part A Test (Written Test) and Taxi Written Test may download the Road Users' Code for free from the Transport Department’s website by scanning the QR Code below. The Road Users’ Code is also available for sale at the Government Publications Centre (Phone no. 2537 1910).</td></tr>
          <tr><td style="text-align:left;vertical-align:top;padding:0px;border:0">
            <img style="border:0;width: 65px;height: 65px;" alt="" src="<print:BlankFormPrint imageName='qr_code_ruc_eng.png'/>">
          </td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><b><u>Driving Test for Various Vehicles</u></b></td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Test Vehicle: </span>&nbsp;&nbsp;Candidates must prepare a test vehicle that meet the requirements as specified in the relevant "Guides to Driving Test" when attending the road test at the test centre at the scheduled time, otherwise they may NOT be allowed to take the test and their test form may be invalidated.  If they want to take the driving test again, they will have to purchase a new test form.  A candidate who passes the test on a vehicle fitted with automatic transmission shall be restricted on his / her full driving licence to drive automatic vehicle.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Road Test Routes: </span>&nbsp;&nbsp;Although the Driving Examiner will not inform candidate of the entire test route before the road test (except Motor Cycle and Motor Tricycle), he will give instructions in the course of the test.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rainy Days or Slippery Roads: </span>&nbsp;&nbsp;All driving test (road test) candidates (except Motor Cycle and Motor Tricycle) must be present at the Driving Test Centre on the test appointment date and time, otherwise, they will be deemed to be absent from the test and their relevant test form will be invalidated.  The Driving Examiner has the right not to conduct a driving test after considering the road situation on rainy days or slippery roads as well as safety concerns.  Affected candidates would be notified by the Driving Test Appointment Office (DTAO) of the new appointment arranged if the test is cancelled.  If candidates do not receive the new appointment within 2 weeks after the original test date, please contact the DTAO at 2771 7723.  For Part C (Road Test) of Motor Cycle or Motor Tricycle, if a candidate is unable to bring along his / her test vehicle to the Driving Test Centre due to the weather conditions in a particular area, the candidate may first phone the arranged Driving Test Centre, confirming if the relevant Part C (Road Test) has been cancelled due to rainy days or slippery roads.  If cancelled, the candidates will be later approached and notified by the DTAO of the new appointment arranged.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">9.&nbsp;&nbsp;&nbsp;&nbsp;Other Fees:  </span>&nbsp;&nbsp;Upon defrayment of test form fee and Learners' Driving licence fee, no other payments are required to be made to any government officials.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><b><u>Others</u></b></td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">10.&nbsp;&nbsp;&nbsp;&nbsp;Late Candidates:  </span>&nbsp;&nbsp;Candidates are required to arrive at the test centre on time; otherwise they may NOT be allowed to take the test and their test form may be invalidated.  If they want to take the driving test again, they will have to purchase a new test form. If a road test candidate is unable to arrive at the test centre on time for reporting due to uncontrolled traffic condition, he/she may, based on his/her situation, apply to centre staff to attend the test on the same day by completion of “Application for a Late Driving Test” form.  Transport Department will consider exercise discretion to approve the application having taken into account the manpower situation.  In the event the application is not approved, the case will be treated as not attending the test.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">11.&nbsp;&nbsp;&nbsp;&nbsp;Disqualification:  </span>&nbsp;&nbsp;The test appointment given in this letter is based on the candidate's eligibility for taking the test as declared by the candidate in his / her application form.  If subsequent check reveals that the eligibility of the candidate is in question or has been cancelled, the appointment herein given shall become nullified and void.  The candidate has to bear all responsibilities in this connection and no refund shall be given.  In addition, candidates have to bring along the original copy of their identification document previously registered in the Transport Department when attending driving test, otherwise they may NOT be allowed to take the test and their test form may be invalidated.  If they want to take the driving test again, they will have to purchase a new test form.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">12.&nbsp;&nbsp;&nbsp;&nbsp;Application for Postponement / Temporary Cancellation of Driving Test / Change of Test Region (not applicable to repeater early test): </span>&nbsp;&nbsp;The test form shall be invalidated if a candidate does not attend the test at the prescribed time and venue unless the written application is received by the Commissioner for Transport at least <b>SEVEN</b> clear days before the test <b>(that is, the days of the scheduled test and the day when the application is received are excluded; there should be seven days between these two dates.  For postal application, the postmark date is taken as the day on which the application is received.  A signed written application with a copy of identification document and the original test appointment letter should be submitted.)</b> <u>Application by phone / e-mail / fax are NOT accepted.</u>  Once the application for postponement of test / change of test region is approved, the original test appointment will be cancelled and an end-of-list appointment will be allocated to the candidate.  Please refer to the Transport Department's website for more details.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">13.&nbsp;&nbsp;&nbsp;&nbsp;Absence from Driving Test on Medical Grounds: </span>&nbsp;&nbsp;Candidates have to submit application for postponement with the original medical sick leave certificate / medical certificate covering the test date and test session signed by a medical practitioner or Chinese medical practitioner registered in Hong Kong and stamped with hospital / clinic chop <b>within one month</b> of the test date to the Transport Department for re-scheduling test appointment.  Failure to do so will result in invalidation of the test form.  Once the application is approved, an end-of-list appointment will be allocated.  Please refer to the Transport Department's website for more details.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">14.&nbsp;&nbsp;&nbsp;&nbsp;Overdue Test Form: </span>&nbsp;&nbsp;Test forms are valid up to 18 months from the date of issue.  Owing to the candidate's application for postponement (except application for postponement on medical grounds), temporary cancellation or change of test region which results in the expiry of the relevant test form by the time of the next appointment, the test will not be conducted unless the candidates purchase a new test form at least 30 calendar days prior to the re-scheduled appointment. For application for postponement on medical grounds, if the new test appointment (which is the end-of-list appointment at the time if the application is being approved) falls beyond the validity of the test form, the application will be rejected.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">15.&nbsp;&nbsp;&nbsp;&nbsp;Bad Weather: </span>&nbsp;&nbsp;If either Tropical Cyclone Warning Signal no. 8 or above is hoisted, or an "Extreme Conditions" announcement or Black Rainstorm Warning Signal is issued, driving tests of all vehicle classes (including written test and road test) will be rescheduled.  If such signals are issued before service hours but lowered after 7:00 a.m., all driving tests scheduled before 1:00 p.m. will be cancelled.  If such signals are still hoisted at 11:30 a.m., all driving tests in the afternoon session will also be cancelled.  Candidates who are scheduled to take driving tests do not have to report to the test centre.  In addition, if the Pre-No. 8 Special Announcement is issued, the driving tests of which the expected completion time is within one hour from the Tropical Cyclone Warning Signal no. 8 hoisting time mentioned in the Special Announcement (except for written test) will be cancelled.  If the Black Rainstorm Warning Signal is issued during service hours (i.e. 8:30 a.m. - 5:00 p.m.), all driving tests will be suspended.  If the Black Rainstorm Warning Signal is lowered during service hours, the driving test service will resume, depending on the weather and traffic conditions.  For candidates whose driving tests have not been conducted due to the abovementioned bad weather conditions, they would be approached and notified by the DTAO of the new appointment arranged later.  In particular, for Part C (Road Test) of Motor Cycle and Motor Tricycle, once either Tropical Cyclone Warning Signal no. 8 or above is hoisted, or an "Extreme Conditions" announcement or Black / Red / Amber Rainstorm Warning Signal is issued, even if such signals are lowered later on the day, in case candidates are unable to report to the test centre due to the weather conditions, they would be later approached and notified by the DTAO of the new appointment arranged.  Candidates should pay attention to the announcements at the website of GovHK or on radio and television for the latest arrangements.  If candidates (whose driving test was cancelled) do not receive the new appointment within 2 weeks after the original test date, they should contact the DTAO at <c:out value="${parameterValue.appointmentOfficePhone1}"/>.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">16.&nbsp;&nbsp;&nbsp;&nbsp;Bribery: </span>&nbsp;&nbsp;Under the Prevention of Bribery Ordinance, it is an offence to offer an advantage to a government official with a view to influencing him in discharging his duties.  Any attempt to offer a bribe to a government official or any other person in connection with a driving test is prohibited and will render the test form invalidated and the candidate is liable, on conviction, to imprisonment.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">17.&nbsp;&nbsp;&nbsp;&nbsp;Driving Under Influence of Drink or Drugs: </span>&nbsp;&nbsp;Candidate who drives under the influence of drink or drugs would commit an offence, and government officials will postpone or terminate the test if considered appropriate. If a candidate who is under the influence of drink or drugs insists on taking the test, the Driving Examiner would report the matter to the police.</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">18.&nbsp;&nbsp;&nbsp;&nbsp;Collection Form for Driving Training Information: </span>&nbsp;&nbsp;To facilitate statistical compilation and analysis, candidates are invited to submit a form regarding driving training received by learner drivers to the Driving Test Centre Officer when reporting arrival at the Driving Test Centre on a voluntary basis.  Information provided in the form is solely used for internal statistical and analytical purposes and will not be disclosed to any third parties.  Related form can be downloaded from the Transport Department's website (https://www.td.gov.hk).</td></tr>
          <tr><td class="note_item" style="padding:0px;border:0"><span class="note_highlight">19.&nbsp;&nbsp;&nbsp;&nbsp;Enquiries and Complaints: </span>&nbsp;&nbsp;Candidates may dial <c:out value="${parameterValue.appointmentOfficePhone1}"/> to contact the Driving Test Appointment Office for enquiry of the postponement of driving test appointment or driving test arrangement.  Candidates may dial Tel. 2714 6164 (for road test) / 2150 7777 (for written test), or write to, or approach in person the Driving Services Section, Transport Department located at 19 Pui Ching Road, Kowloon (for road test) / Driving Test Appointment Office, Transport Department located at 2/F., Cheung Sha Wan Government Offices, 303 Cheung Sha Wan Road, Kowloon (for written test) in case of any enquiries on driving test results, suggestions or complaints.</td></tr>
          <!-- Modified by Horace Tam on 2023-09-21 for CR-2023-017 END-->
         </table>
      </td>
    </tr>
  </table>
</div>

