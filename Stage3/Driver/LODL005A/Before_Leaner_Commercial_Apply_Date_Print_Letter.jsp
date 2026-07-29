<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="LCAD_PAGE_VALUE"><%=RequestConstant.ACKNOW_PAGE_VALUE_LCAD%></c:set>
<c:set var="lcadPageValue" value="${requestScope[LCAD_PAGE_VALUE]}" scope="request"/>
<c:set var="legalEntityValue" value="${lcadPageValue.legalEntityValue}" scope="request"/>
<c:set var="entitlementValues" value="${lcadPageValue.entitlementsValues}" scope="request"/>
<c:set var="deSuspensionValues" value="${lcadPageValue.deSuspensionValues}" scope="request"/>
<c:set var="acknowMajorConvictions" value="${lcadPageValue.acknowMajorConvictions}" scope="request"/>
<c:set var="applyDate" value="${lcadPageValue.applyDate}" scope="request"/>

<html lang="en">
<head>
    <title>Document</title>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="margin-top" content="2">
<meta name="margin-bottom" content="2">
<meta name="margin-left" content="2">
<meta name="margin-right" content="2">
<meta name="copies" content="1">
<meta name="papersize" content="A4">
<meta name="orientation" content="0">
<meta name="duplex" content="2">

<style>
<!--
.ENGLISH_FORMAT1 {
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
	font-size: 12pt;
}
.ENGLISH_FORMAT2 {
	font-family: "Times New Roman", Times, serif;
	font-size: 12pt;
}
.CHINESE_FORMAT1 {
	font-family: "MingLiU_HKSCS";
	font-weight: bold;
	font-size: 12pt;
}
.CHINESE_FORMAT2 {
	font-family: "MingLiU_HKSCS";
	font-size: 12pt;
}
-->
</style>
</head>
<body>

<DIV  class="ONE">&nbsp;</DIV>
<table       style="width:565px;margin:0 auto;border-spacing:0px">

<tr>
	<td>
		<table      style="width:100%;margin:0 auto;border-spacing:1px">
		<tr><td style="padding:2px"><p>&nbsp;</p>
		<p><img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" > </p>
		    <p>&nbsp;</p>
			<table     style="width:100%;border-spacing:0px">
              <tr>
                <td  style="vertical-align:top;padding:2px"><p>File Ref.: <c:out value="${requestScope.printLogTxnNo}"/></p></td>
              </tr>
			  <tr>
			  	<td  style="vertical-align:top;padding:2px"><p  style="text-align:right"><fmt:formatDate value="${lcadPageValue.currentDate}" pattern="dd/MM/yyyy"/></p></td>
			  </tr>
			</table>
			<p>Dear <codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${legalEntityValue.titleCode}"></codetable:out> <c:out value="${legalEntityValue.nameEng}"/>, </p>
		    <p  style="text-align:center"><span class="ENGLISH_FORMAT1"><u>Eligible Date for Applying for Learner's Driving Licence<br>
		      for
		      Commercial Vehicle Class(es) (*)</u></span><br>
		      <span class="ENGLISH_FORMAT2">(Driving  Licence No.:
			  		<c:choose>
			  		  <c:when test="${legalEntityValue.idType =='' ||legalEntityValue.idType ==' '}">
			  		    <SCRIPT>
								var idNo = "<c:out value="${legalEntityValue.idNo}"/>";
								document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
							</SCRIPT>
		  		      </c:when>
			  		  <c:otherwise>
			  		    <c:out value="${legalEntityValue.idNo}"/>
		  		      </c:otherwise>
	  		          </c:choose>
	  		  &nbsp;
	  		  <c:out value="${legalEntityValue.idType}"/>
  		    )</span></p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ENGLISH_FORMAT2">According to our record, you are the holder of a full driving licence to drive the following class(es) of motor vehicle –</span></p>
		    <table    style="border-spacing:0px">
              <tr>
                <td   style="width:113px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Class(es)</p></td>
                <td   style="width:187px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Valid From </p></td>
                <td   style="width:251px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Valid To</p></td>
              </tr>
			  <c:forEach var="entitlementValue" items="${entitlementValues}">
              <tr>
                <td   style="width:113px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center">
				<c:choose>
					<c:when test="${entitlementValue.autoTransmission=='A'}">
						<c:choose>
							<c:when test="${entitlementValue.deCode < 10}">
								<c:out value="0${entitlementValue.deCode}A"/>
							</c:when>
							<c:otherwise>
								<c:out value="${entitlementValue.deCode}A"/>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${entitlementValue.deCode < 10}">
								<c:out value="0${entitlementValue.deCode}"/>
							</c:when>
							<c:otherwise>
								<c:out value="${entitlementValue.deCode}"/>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
				</p></td>
                <td   style="width:187px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${entitlementValue.startDate}" pattern="dd/MM/yyyy"/></p></td>
                <td   style="width:251px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${entitlementValue.uptoDate}" pattern="dd/MM/yyyy"/></p></td>
              </tr>
			  </c:forEach>
            </table>

        <c:if test="${!empty deSuspensionValues}">
			    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ENGLISH_FORMAT2">You have following disqualification record(s) –</span> </p>
			    <table    style="border-spacing:0px">
	              <tr>
	                <td   style="width:80px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">&nbsp;</p></td>
	                <td   style="width:144px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Start Date </p></td>
	                <td   style="width:132px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center">End Date</p></td>
	                <td   style="width:204px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Classes Disqualified</p></td>
	              </tr>
							  <c:forEach var="deSuspensionValue" items="${deSuspensionValues}">
							  	<c:set var="count1" value="${count1 + 1}"/>
				              <tr>
				                <td   style="width:80px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><c:out value='${count1}'/></p></td>
				                <td   style="width:144px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${deSuspensionValue.suspensionDate}" pattern="dd/MM/yyyy"/></td>
				                <td   style="width:132px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${deSuspensionValue.uptoDate}" pattern="dd/MM/yyyy"/></p></td>
				                <td   style="width:204px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><c:out value='${deSuspensionValue.suspendedDeInd}'/></p></td>
				              </tr>
							  </c:forEach>
	        </table>
        </c:if>

        <c:if test="${!empty acknowMajorConvictions}">
				    <p class="ENGLISH_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have following record of conviction(s) of serious offence under the Road Traffic Ordinance, Cap. 374: </p>
				    <table    style="border-spacing:0px">
		              <tr>
		                <td   style="width:114px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Offence Date </p></td>
		                <td   style="width:315px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Offence </p></td>
		                <td   style="width:122px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">Conviction Date </p></td>
		              </tr>
								  <c:forEach var="acknowMajorConviction" items="${acknowMajorConvictions}">
					              <tr>
					                <td   style="width:114px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${acknowMajorConviction.offenceDate}" pattern="dd/MM/yyyy"/></p></td>
					                <td   style="width:315px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><c:out value='${acknowMajorConviction.offenceDesc}'/></p></td>
					                <td   style="width:122px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${acknowMajorConviction.convictionDate}" pattern="dd/MM/yyyy"/></p></td>
					              </tr>
								  </c:forEach>
		        </table>
        </c:if>

		    <p class="ENGLISH_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Based on the above record(s), you will be eligible for applying for learner's driving licence for commercial vehicle class(es) from the following date.</p>
		    <table    style="border-spacing:0px">
              <tr>
                <td   style="width:560px;vertical-align:top;padding:2px;border:1px solid"><p  class="ENGLISH_FORMAT2" style="text-align:center">
                  <fmt:formatDate value="${applyDate}" pattern="dd/MM/yyyy"/></p></td>
              </tr>
            </table>
            </td>
		</tr>
        </table>
	</td>
</tr>
</table>

<c:choose>
	<c:when test="${empty acknowMajorConvictions  && empty deSuspensionValues}">
	</c:when>
	<c:otherwise>
		<DIV  style="PAGE-BREAK-BEFORE: always;" class="page1">&nbsp;</DIV>
	</c:otherwise>
</c:choose>

<table       style="width:565px;margin:0 auto;border-spacing:0px">

<tr>
	<td>
		<table      style="width:100%;margin:0 auto;border-spacing:1px">
		<tr>
			<td style="padding:2px">
					<p>&nbsp;</p>
					<p  class="ENGLISH_FORMAT2" style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The above information is  based on the current data kept in our computer record updated till the day  before the issue of this letter and is therefore for reference only.  The above information is subject to change if  there is any update affecting your driving licence record including  disqualification, expiry of driving licence and conviction of offences specified  in the Twelfth Schedule of the Road Traffic (Driving Licences) Regulations,  Cap. 374B or in the Road Traffic (Driving-offence Points) Ordinance, Cap. 375.</p>

		      <table     style="width:100%;border-spacing:0px">
              <tr>
                <td   style="width:60%;vertical-align:top;padding:2px"></td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p  class="ENGLISH_FORMAT2" style="text-align:center">Yours  faithfully,</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px">&nbsp;</td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p>&nbsp;</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px">&nbsp;</td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p>&nbsp;</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px"></td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p  class="ENGLISH_FORMAT2" style="text-align:center">(                                       )</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px"></td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p  class="ENGLISH_FORMAT2" style="text-align:center">for Commissioner for Transport</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px">&nbsp;</td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p>&nbsp;</p></td>
			  </tr>
			 </table>

		      <div  class="ENGLISH_FORMAT2" style="text-align:justify">Note (*): Commercial  Vehicle Class(es) refer to Private Light Bus (code 04), Public Light Bus (code  05), Taxi (code 06), Private Bus (code 09), Public Bus (code 10), Public  Bus-Franchised (code 17), Medium Goods Vehicle (code 18), Heavy Goods Vehicle  (code 19), Articulated Vehicle (code 20) and Special Purpose Vehicle (code 21).</div></td>
		</tr>
        </table>
	</td>
</tr>
</table>

<c:if test="${empty acknowMajorConvictions  && empty deSuspensionValues}">
	<DIV  style="PAGE-BREAK-BEFORE: always;" class="page_add_1">&nbsp;</DIV>
</c:if>

<DIV  style="PAGE-BREAK-BEFORE: always;" class="page2">&nbsp;</DIV>

<table       style="width:565px;margin:0 auto;border-spacing:0px">

<tr>
	<td>
		<table      style="width:100%;margin:0 auto;border-spacing:1px">
		<tr><td style="padding:2px"><p>&nbsp;</p>
		<p><img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" > </p>
		    <p>&nbsp;</p>
			<table     style="width:100%;border-spacing:0px">
              <tr>
                <td  style="vertical-align:top;padding:2px"><p class="CHINESE_FORMAT2">本署檔號：
                  <c:out value="${requestScope.printLogTxnNo}"/></p></td>
              </tr>

			</table>
			<p class="CHINESE_FORMAT2">   <c:choose>
                        <c:when test="${legalEntityValue.nameChi =='' ||legalEntityValue.nameChi ==null}">
                            <codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${legalEntityValue.titleCode}"></codetable:out> <c:out value="${legalEntityValue.nameEng}"/>
                        </c:when>
						<c:otherwise>
							<span class="chi_name_value"><c:out value="${legalEntityValue.nameChi}"/></span> <codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" language="<%=CodeTableConstant.CHINESE%>" selected="${legalEntityValue.titleCode}"></codetable:out>
						</c:otherwise>
                    </c:choose> ： </p>
		    <p  style="text-align:center"><strong class="CHINESE_FORMAT1"><u>可申請商用車輛類別(*)學習駕駛執照的日期</u></strong><br>
		      <span class="CHINESE_FORMAT2">(駕駛執照號碼：
			  		<c:choose>
			  		  <c:when test="${legalEntityValue.idType =='' ||legalEntityValue.idType ==' '}">
			  		    <SCRIPT>
								var idNo = "<c:out value="${legalEntityValue.idNo}"/>";
								document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
							</SCRIPT>
		  		      </c:when>
			  		  <c:otherwise>
			  		    <c:out value="${legalEntityValue.idNo}"/>
		  		      </c:otherwise>
	  		          </c:choose>
	  		  &nbsp;
	  		  <c:out value="${legalEntityValue.idType}"/>
  		    )</span></p>
			<p class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根據本署記錄，你持有下列車輛類別的正式駕駛執照：</p>
		    <table    style="border-spacing:0px">
              <tr>
                <td   style="width:113px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">駕駛車類</p></td>
                <td   style="width:187px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">開始日期</p></td>
                <td   style="width:251px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">屆滿日期</p></td>
              </tr>
			  <c:forEach var="entitlementValue" items="${entitlementValues}">
              <tr>
                <td   style="width:113px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center">
				<c:choose>
					<c:when test="${entitlementValue.autoTransmission=='A'}">
						<c:choose>
							<c:when test="${entitlementValue.deCode < 10}">
								<c:out value="0${entitlementValue.deCode}A"/>
							</c:when>
							<c:otherwise>
								<c:out value="${entitlementValue.deCode}A"/>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${entitlementValue.deCode < 10}">
								<c:out value="0${entitlementValue.deCode}"/>
							</c:when>
							<c:otherwise>
								<c:out value="${entitlementValue.deCode}"/>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
				</p></td>
                <td   style="width:187px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${entitlementValue.startDate}" pattern="dd/MM/yyyy"/></p></td>
                <td   style="width:251px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${entitlementValue.uptoDate}" pattern="dd/MM/yyyy"/></p></td>
              </tr>
			  </c:forEach>
            </table>

			<c:if test="${!empty deSuspensionValues}">
				<p class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你有以下被取消駕駛資格的記錄： </p>
				<table    style="border-spacing:0px">
				  <tr>
					<td   style="width:80px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">&nbsp;</p></td>
					<td   style="width:144px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">開始日期</p></td>
					<td   style="width:132px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">終止日期</p></td>
					<td   style="width:204px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">被取消駕駛資格的車類</p></td>
				  </tr>
				  <c:forEach var="deSuspensionValue" items="${deSuspensionValues}">
					<c:set var="count2" value="${count2 + 1}"/>
				  <tr>
					<td   style="width:80px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><c:out value='${count2}'/></p></td>
					<td   style="width:144px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${deSuspensionValue.suspensionDate}" pattern="dd/MM/yyyy"/></td>
					<td   style="width:132px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${deSuspensionValue.uptoDate}" pattern="dd/MM/yyyy"/></p></td>
					<td   style="width:204px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><c:out value='${deSuspensionValue.suspendedDeInd}'/></p></td>
				  </tr>
				  </c:forEach>
				</table>
			</c:if>

			<c:if test="${!empty acknowMajorConvictions}">
				<p class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你有以下觸犯嚴重道路交通條例罪行的記錄： </p>
				<table    style="border-spacing:0px">
				  <tr>
					<td   style="width:114px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">違例日期</p></td>
					<td   style="width:315px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">違例事項</p></td>
					<td   style="width:122px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center">定罪日期</p></td>
				  </tr>
				  <c:forEach var="acknowMajorConviction" items="${acknowMajorConvictions}">
				  <tr>
					<td   style="width:114px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${acknowMajorConviction.offenceDate}" pattern="dd/MM/yyyy"/></p></td>
					<td   style="width:315px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><c:out value='${acknowMajorConviction.chiOffenceDesc}'/></p></td>
					<td   style="width:122px;vertical-align:top;padding:2px;border:1px solid"><p  style="text-align:center"><fmt:formatDate value="${acknowMajorConviction.convictionDate}" pattern="dd/MM/yyyy"/></p></td>
				  </tr>
				  </c:forEach>
				</table>
			</c:if>

		    <p class="CHINESE_FORMAT2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;就上述記錄，你可於下列日期開始提出有關商用車輛類別學習駕駛執照的申請。</p>
		    <table    style="border-spacing:0px">
              <tr>
                <td   style="width:560px;vertical-align:top;padding:2px;border:1px solid"><p  class="CHINESE_FORMAT2" style="text-align:center"><fmt:formatDate value="${applyDate}" pattern="dd/MM/yyyy"/></p></td>
              </tr>
            </table>
            </td>
		</tr>
        </table>
	</td>
</tr>
</table>

<c:choose>
	<c:when test="${empty acknowMajorConvictions  && empty deSuspensionValues}">
	</c:when>
	<c:otherwise>
		<DIV  style="PAGE-BREAK-BEFORE: always;" class="page3">&nbsp;</DIV>
	</c:otherwise>
</c:choose>

<table       style="width:565px;margin:0 auto;border-spacing:0px">

<tr>
	<td>
		<table      style="width:100%;margin:0 auto;border-spacing:1px">
		<tr>
			<td style="padding:2px">
					<p>&nbsp;</p>
					<table     style="width:100%;border-spacing:0px">
              <tr>
                <td   style="width:100%;vertical-align:top;padding:2px">
                	<p  class="CHINESE_FORMAT2" style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以上資料是根據本署電腦系統內現時資料提供，並只更新至本函件發出的前一天，因此只可供參考之用。如你的駕駛執照記錄在上述更新期限後有任何改變，包括駕駛執照被取消、駕駛執照過期及觸犯香港法例第374B章《道路交通（駕駛執照）規例》附表12或香港法例第375章《道路交通（違例駕駛記分）條例》內所述的罪行而被定罪，上述相關資料需作出相應更改。</p>
                </td>
			  			</tr>
			  	</table>
		      <p>&nbsp;</p>
		      <table     style="width:100%;border-spacing:0px">
              <tr>
                <td   style="width:60%;vertical-align:top;padding:2px"></td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p  class="CHINESE_FORMAT2" style="text-align:center">運輸署署長</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px">&nbsp;</td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p>&nbsp; </p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px"></td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p  style="text-align:center">(                                      <span class="CHINESE_FORMAT2">代行</span>)</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px">&nbsp;</td>
				<td   style="width:40%;vertical-align:top;padding:2px"><p  style="text-align:center">&nbsp;</p></td>
			  </tr>
			  <tr>
                <td   style="width:60%;vertical-align:top;padding:2px"><p  class="CHINESE_FORMAT2" style="text-align:left"><fmt:formatDate value="${lcadPageValue.currentDate}" pattern="yyyy"/> 年
															<fmt:formatDate value="${lcadPageValue.currentDate}" pattern="MM"/> 月
															<fmt:formatDate value="${lcadPageValue.currentDate}" pattern="dd"/> 日</p></td>
				<td   style="width:40%;vertical-align:top;padding:2px"></td>
			 </table>
		      <p>&nbsp;</p>
		   <table     style="width:560px;border-spacing:0px">
          <tr>
            <td   style="width:556px;vertical-align:top;padding:2px">
            	<div  class="CHINESE_FORMAT2" style="text-align:justify">註（&nbsp;*&nbsp;）：商用車輛類別為私家小巴（代號04）、公共小巴（代號05）、的士（代號06）、私家巴士（代號09）、公共巴士（代號10）、專利公共巴士（代號17）、中型貨車（代號18）、重型貨車（代號19）、掛接式車輛（代號20）及特別用途車輛（代號21）。</div>
            </td>
	  			</tr>
			 </table>

		      </td>
		</tr>
        </table>


<c:if test="${empty acknowMajorConvictions  && empty deSuspensionValues}">
	<DIV  style="PAGE-BREAK-BEFORE: always;" class="page_add_2">&nbsp;</DIV>
</c:if>


	</td>
</tr>
</table>


</body>
</html>