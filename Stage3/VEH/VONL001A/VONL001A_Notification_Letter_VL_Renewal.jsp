<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page import="hk.gov.valid.util.SessionConstant"%>
<%@ page import="hk.gov.valid.hkpf.util.CodeTableDescription"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="hk.gov.valid.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="hk.gov.valid.cbm.model.*" %>

<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>


<%
MainVlApplyPostalPageValue mainVal = (MainVlApplyPostalPageValue)session.getAttribute(SessionConstant.MAIN_VL_APPLY_POSTAL_PAGE_VALUE) ;
LegalEntityValue legalEntityVal = mainVal.getLegalEntityVal();
String nameEng = mainVal.getNameEng();
String nameChi = legalEntityVal.getNameChi();
String titlecode = mainVal.getTitleCode();
String regMark = mainVal.getRegMark();
String titleDescEng =  CodeTableDescription.getCodeTableDescription(CodeTableConstant.TITLE_CODE,titlecode, CodeTableConstant.ENGLISH);
String titleDescChi =  CodeTableDescription.getCodeTableDescription(CodeTableConstant.TITLE_CODE,titlecode, CodeTableConstant.CHINESE);
String[] threeLineAddrEng = legalEntityVal.getThreeLineAddrEng();
String nameAndTitleChi = "";
String nameAndTitleEng = "";
if(nameChi==null || nameChi.trim().equals("")){
	nameAndTitleChi = titleDescEng + " " + nameEng;
}else{
	nameAndTitleChi = nameChi + " " + titleDescChi;
}

if(nameEng==null || nameEng.trim().equals("")){
	nameAndTitleEng = nameChi + " " + titleDescChi;
}else{
	nameAndTitleEng = titleDescEng + " " + nameEng;
}
Date printDate = new Date(ValidIVSystem.currentOnlineTimeMillis());
String printDateStr = (new SimpleDateFormat("dd/MM/yyyy")).format(printDate);
String printDateYear = (new SimpleDateFormat("yyyy")).format(printDate);
String printDateMonth = (new SimpleDateFormat("MM")).format(printDate);
String printDateDay = (new SimpleDateFormat("dd")).format(printDate);


%>

<table style="width: 620px; border-spacing: 0px; margin: 0 auto;">
	<tr>
		<td style="text-align: left;">
			<table style="width: 100%; border-spacing: 1px;">
				<tr>
					<td style="padding: 2px;"><img src="<print:BlankFormPrint imageName='logo.gif'/>" alt=""> </td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="text-align: center;">
			<table style="width: 100%; border-spacing: 1px;">
				<tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th></tr>
				<tr style="transform: translateY(-0.4em);">
					<td style="width: 11%; padding: 2px;text-align: left;">Our Ref.:</td>
					<td style="padding: 2px;text-align: left;" colspan="2"> </td>
				</tr>
				<tr style="transform: translateY(-0.4em);">
					<td style="padding: 2px;text-align: left;">Tel No.:</td>
					<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${issuePrintingCtlValue.telNo1}"/> </td>
				</tr>
				<tr style="transform: translateY(-0.4em);">
					<td style="padding: 2px;text-align: left;">Date:</td>
					<td style="padding: 2px;text-align: left;" colspan="2"><%=printDateStr %> </td>
				</tr>
				<tr>
					<td style="padding: 2px;" colspan="3">&nbsp;</td>
				</tr>
				<tr style="transform: translateY(-0.4em);">
					<td style="padding: 2px;text-align: left;">To：</td>
					<td style="padding: 2px;text-align: left;" colspan="2">	<%= nameAndTitleEng%></td>
				</tr>

				<tr style="transform: translateY(-0.4em);">
					<td style="padding: 2px;">&nbsp;</td>
					<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${legalEntityVal.threeLineAddrEng[0]}" escapeXml="false"/></td>
				</tr>
				<tr style="transform: translateY(-0.4em);">
					<td style="padding: 2px;">&nbsp;</td>
					<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${legalEntityVal.threeLineAddrEng[1]}" escapeXml="false"/></td>
				</tr>
				<tr style="transform: translateY(-0.4em);">
					<td style="padding: 2px;">&nbsp;</td>
					<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${legalEntityVal.threeLineAddrEng[2]}" escapeXml="false"/></td>
				</tr>


				<tr>
					<td style="padding: 2px;" colspan="3">&nbsp;</td>
				</tr>
				<tr>
					<td style="padding: 2px;" colspan="3">&nbsp;</td>
				</tr>
				<tr>
					<td style="padding: 2px;">&nbsp;</td>
					<td style="padding: 2px; vertical-align: top;text-align: left;" colspan="2">

						<p style="margin-top:-0.4em; ">
							<%
							if(null == nameEng || "".equals(nameEng) )
							{
								if(null != nameChi && !"".equals(nameChi))
								{
									%>
									<%
									String browserVersion = (String)session.getAttribute(SessionConstant.IE_VERSION);

									if (SessionConstant.IE9.equals(browserVersion)) {
										// IE9
										%>
										<span style="font-family:MingLiU_HKSCS;">
											<%= nameAndTitleChi%>;
										</span>
										<%
									} else {
										%>
										<%= nameAndTitleChi%>
										<%
									}
									%>

									<%
								}
							}
							else
							{
								%>
								<%= nameAndTitleEng%>
								<%
							}
							%>
						</p>

						<p style="text-align:center;">
							<div style="text-align:center;text-decoration:underline;font-weight:bold;">Application for Renewal of Vehicle Licence</div>
							<div style="text-align:center;">(Vehicle Registration Mark Number: <%=regMark %>)</div>
						</p>

						<p style="text-indent:1cm;text-align:justify;">
							The Transport Department has received your application for renewal of vehicle licence on <span><u><fmt:formatDate value="${postRegObj.receiveDate}" pattern="dd/MM/yyyy" /></u></span>. Due to the following reason, your application cannot be processed:-

							<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
							<table style="width: 100%; border-spacing: 0px;">
								<%}else{%>
								<table style="width: 100%; border-spacing: 0px; text-indent: 0cm;">
									<%}%>
									<tr><td style="padding: 2px;" colspan="2">&nbsp;</td></tr>
									<c:forEach var="rejectVal" items="${rejRsnValList}" >
										<c:forEach var="rejectValAll" items="${postVlRegRejectCodeValList}" >

											<c:if test="${(rejectValAll.rejectCode ne 'R32') && (rejectValAll.rejectCode eq rejectVal.rejectCode)}" >

												<tr style="page-break-inside:avoid;transform: translateY(-0.6em);">
													<td style="vertical-align: top; padding: 2px;" ><input type="checkbox" name="rejectName" id="<c:out value="${rejectValAll.rejectCode}"/>_che" value="<c:out value="${rejectValAll.rejectCode}"/>" /></td>
													<td style="padding-top=4px; padding: 2px;"  >
														<c:out value="${rejectValAll.engDesc}"/>
													</td>
												</tr>
											</c:if>
										</c:forEach>
									</c:forEach>
								</table>
							</p>



							<script>
							var rejectTag = document.getElementsByName("rejectName");
							for(var i=0;i<rejectTag.length;i++){
								var loopBol = false;
								<c:forEach var="rejectRemarkVal" items="${rejRsnValList}">
								if(!loopBol && '<c:out value="${rejectRemarkVal.rejectCode}"/>'==rejectTag[i].value && '<c:out value="${rejectRemarkVal.rejectCode}"/>' != null && '<c:out value="${rejectRemarkVal.rejectCode}"/>' !='' ){
									rejectTag[i].checked = true;
									loopBol = true;
									if('R27'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
										var descTdObj;
										if(IEVersionGlobal=='11'){
											descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
										}else{
											descTdObj = rejectTag[i].parentNode.nextSibling;
										}
										var resubmitDay_R27 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(0, 2);
										var resubmitMon_R27 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(2, 4);
										var resubmitYear_R27 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(4, 8);
										descTdObj.innerHTML = descTdObj.innerHTML.replace("param", "<span><u>"+resubmitDay_R27+"/"+resubmitMon_R27+"/"+resubmitYear_R27+"</u></span>");
									}else if('R29'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
										var descTdObj;
										if(IEVersionGlobal=='11'){
											descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
										}else{
											descTdObj = rejectTag[i].parentNode.nextSibling;
										}
										var resubmitDay_R29 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(0, 2);
										var resubmitMon_R29 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(2, 4);
										var resubmitYear_R29 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(4, 8);
										descTdObj.innerHTML = descTdObj.innerHTML.replace("param", "<span><u>"+resubmitDay_R29+"/"+resubmitMon_R29+"/"+resubmitYear_R29+"</u></span>");
									}else{
										var descTdObj;
										if(IEVersionGlobal=='11'){
											descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
										}else{
											descTdObj = rejectTag[i].parentNode.nextSibling;
										}
										descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '<span><u><c:out value="${rejectRemarkVal.rejectVal}"/></u></span>');
									}
								}
								</c:forEach>
								if(!rejectTag[i].checked){
									if('R27'==rejectTag[i].value){
										var descTdObj;
										if(IEVersionGlobal=='11'){
											descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
										}else{
											descTdObj = rejectTag[i].parentNode.nextSibling;
										}
										descTdObj.innerHTML = descTdObj.innerHTML.replace("param","______________");
									}else if('R29'==rejectTag[i].value){
										var descTdObj;
										if(IEVersionGlobal=='11'){
											descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
										}else{
											descTdObj = rejectTag[i].parentNode.nextSibling;
										}
										descTdObj.innerHTML = descTdObj.innerHTML.replace("param","______________");
									}else{
										var descTdObj;
										if(IEVersionGlobal=='11'){
											descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
										}else{
											descTdObj = rejectTag[i].parentNode.nextSibling;
										}
										descTdObj.innerHTML = descTdObj.innerHTML.replace("param", "______________");
									}
								}
							}
							</script>
							<DIV id="page1" style="page-break-before:auto;">&nbsp;</DIV>
									<p style="text-indent:1cm;text-align:justify;transform: translateY(0.3em);">
								The application and relevant documents listed below are herewith returned to you.  Please submit your application together with the required supporting documents and the appropriate fee(s) by crossed cheque/cashier order to the Transport Department for follow-up action.
								<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
								<table style="width: 100%; border-spacing: 0px;">
									<%}else{%>
									<table style="width: 100%; border-spacing: 0px; text-indent: 0cm;">
										<%}%>
										<tr><td style="padding: 2px;" colspan="2">&nbsp;</td></tr>
										<c:forEach var="rtnValOnly" items="${rtnDocValList}">
											<c:forEach var="rtnVal" items="${postVlRegRtnDocCodeValList}">
												<c:if test="${rtnValOnly.returnCode eq rtnVal.returnCode}" >
													<tr>
														<td style="vertical-align: top; width: 3%; padding: 2px;"><input type="checkbox" id="<c:out value="${rtnVal.returnCode}"/>_che" name="rtnName" value="<c:out value="${rtnVal.returnCode}"/>" /></td>
														<td style="padding-top=4px; padding: 2px;">
															<c:out value="${rtnVal.engDesc}"/>
														</td>
													</tr>
												</c:if>
											</c:forEach>
										</c:forEach>
									</table>
								</p>
								<script >
								var rtnTag = document.getElementsByName("rtnName");
								for(var i=0;i<rtnTag.length;i++){
									var loopBol = false;
									<c:forEach var="rtndocVal" items="${rtnDocValList}">
									if(!loopBol && '<c:out value="${rtndocVal.returnCode}"/>'==rtnTag[i].value && '<c:out value="${rtndocVal.returnCode}"/>' != null && '<c:out value="${rtndocVal.returnCode}"/>' !='' ){
										rtnTag[i].checked = true;
										loopBol = true;
										if('V08'=='<c:out value="${rtndocVal.returnCode}"/>'){
											var descTdObj;
											if(IEVersionGlobal=='11'){
												descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
											}else{
												descTdObj = rtnTag[i].parentNode.nextSibling;
											}
											descTdObj.innerHTML = descTdObj.innerHTML.replace("param1",'<span><u><c:out value="${rtndocVal.rtnVal1}"/></u></span>').replace('param2','<span><u><c:out value="${rtndocVal.rtnVal2}"/></u></span>');
										}else{
											var descTdObj;
											if(IEVersionGlobal=='11'){
												descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
											}else{
												descTdObj = rtnTag[i].parentNode.nextSibling;
											}
											descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '<span><u><c:out value="${rtndocVal.rtnVal1}"/></u></span>');
										}
									}
									</c:forEach>
									if(!rtnTag[i].checked){
										if('V08'==rtnTag[i].value){
											var descTdObj;
											if(IEVersionGlobal=='11'){
												descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
											}else{
												descTdObj = rtnTag[i].parentNode.nextSibling;
											}
											descTdObj.innerHTML = descTdObj.innerHTML.replace("param1",'______________').replace('param2','______________');
										}else{
											var descTdObj;
											if(IEVersionGlobal=='11'){
												descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
											}else{
												descTdObj = rtnTag[i].parentNode.nextSibling;
											}
											descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '______________');
										}
									}
								}
								</script>

								<DIV id="page1" style="page-break-before:auto;">&nbsp;</DIV>
								<p style="text-indent:1cm;text-align:justify;transform: translateY(0.4em);">
									Please also note the following:-
									<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
									<table style="width: 100%; border-spacing: 0px;">
										<%}else{%>
										<table style="width: 100%; border-spacing: 0px; text-indent: 0cm;">
											<%}%>
											<tr><td style="padding: 2px;" colspan="2">&nbsp;</td></tr>
											<c:forEach var="rtnDocPtValOnly" items="${rtnDocPtValList}">
												<c:forEach var="rtnValPt" items="${postVlRegNtPtValList}">
													<c:if test="${rtnDocPtValOnly.returnCode eq rtnValPt.returnCode}" >
														<tr>
															<td style="vertical-align: top; width: 3%; padding: 2px;"><input type="checkbox" id="<c:out value="${rtnValPt.returnCode}"/>_che" name="rtnNamePt" value="<c:out value="${rtnValPt.returnCode}"/>" /></td>
															<td style="padding-top=4px; padding: 2px;">
																<c:out value="${rtnValPt.engDesc}"/>
															</td>
														</tr>
													</c:if>
												</c:forEach>
											</c:forEach>
										</table>
									</p>
									<script>
									var rtnTagPt = document.getElementsByName("rtnNamePt");
									for(var i=0;i<rtnTagPt.length;i++){
										var loopBol = false;
										<c:forEach var="rtndocValPt" items="${rtnDocPtValList}">
										if(!loopBol && '<c:out value="${rtndocValPt.returnCode}"/>'==rtnTagPt[i].value && '<c:out value="${rtndocValPt.returnCode}"/>' != null && '<c:out value="${rtndocValPt.returnCode}"/>' !='' ){
											rtnTagPt[i].checked = true;
											loopBol = true;
											var descTdObj;
											if(IEVersionGlobal=='11'){
												descTdObj = rtnTagPt[i].parentNode.nextSibling.nextSibling;
											}else{
												descTdObj = rtnTagPt[i].parentNode.nextSibling;
											}
											descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '<span><u><c:out value="${rtndocValPt.rtnVal1}"/></u></span>');
										}
										</c:forEach>
										if(!rtnTagPt[i].checked){
											var descTdObj;
											if(IEVersionGlobal=='11'){
												descTdObj = rtnTagPt[i].parentNode.nextSibling.nextSibling;
											}else{
												descTdObj = rtnTagPt[i].parentNode.nextSibling;
											}
											descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '______________');
										}
									}
									</script>

									<table style="width: 100%; border-spacing: 0px; text-align: right;transform: translateY(0.3em);">
										<tr>
											<td style="text-align: right;">
												<br><br><br><br>
													Transport Department &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</td>
											</tr>
											<tr>
												<td style="text-align: right;">
													(This is a computer print-out. Signature is not required.)<br>
												</td>
											</tr>
										</table>

									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>

				<DIV id="page2" style="page-break-before:always;">&nbsp;</DIV>
				<!-- chinese version begin -->
				<table style="width: 620px; border-spacing: 0px; margin: 0 auto;">
					<tr>
						<td style="text-align: left;">
							<table style="width: 100%; border-spacing: 1px;">
								<tr>
									<td style="padding: 2px;"><img src="<print:BlankFormPrint imageName='logo.gif'/>" alt=""> </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
						<table style="width: 100%; border-spacing: 1px;">
							<tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th></tr>
							<tr style="transform: translateY(-1em);">
								<td style="width: 14%; padding: 2px;text-align: left;">本署檔號：</td>
								<td style="padding: 2px;text-align: left;" colspan="2"></td>
							</tr>
								<tr style="transform: translateY(-1em);">
									<td style="padding: 2px;text-align: left;">電話：</td>
									<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${issuePrintingCtlValue.telNo1}"/></td>
								</tr>
								<tr style="transform: translateY(-1em);">
									<td style="padding: 2px;text-align: left;">日期：</td>
									<td style="padding: 2px;text-align: left;" colspan="2"><%=printDateYear %>年<%=printDateMonth %>月<%=printDateDay %>日</td>
								</tr>
								<tr>
									<td style="padding: 2px;" colspan="3">&nbsp;</td>
								</tr>
								<tr style="transform: translateY(-1em);">
									<td style="padding: 2px;text-align: left;"> 致：</td>
									<td style="padding: 2px;text-align: left;" colspan="2">	<%= nameAndTitleChi%></td>
								</tr>
								<tr style="transform: translateY(-1em);">
									<td style="padding: 2px;">&nbsp;</td>
									<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${legalEntityVal.threeLineAddrChi[0]}" escapeXml="false"/></td>
								</tr>
								<tr style="transform: translateY(-1em);">
									<td style="padding: 2px;">&nbsp;</td>
									<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${legalEntityVal.threeLineAddrChi[1]}" escapeXml="false"/></td>
								</tr>
								<tr style="transform: translateY(-1em);">
									<td style="padding: 2px;">&nbsp;</td>
									<td style="padding: 2px;text-align: left;" colspan="2"><c:out value="${legalEntityVal.threeLineAddrChi[2]}" escapeXml="false"/></td>
								</tr>
								<tr>
									<td style="padding: 2px;" colspan="3">&nbsp;</td>
								</tr>
								<tr>
									<td style="padding: 2px;" colspan="3">&nbsp;</td>
								</tr>
								<tr>
									<td style="padding: 2px;">&nbsp;</td>
									<td style="padding: 2px; vertical-align: top;text-align: left;" colspan="2">

										<p style="transform: translateY(-2em);">
											<%
											if (null == nameChi || "".equals(nameChi))
											{
												if (null != nameEng && !"".equals(nameEng))
												{
													%>
													<%= nameAndTitleEng%>
													<%
												}
											}
											else
											{
												%>

												<%= nameAndTitleChi%>

												<%
											}
											%>
										</p>

										<p style="text-align:center;">
											<div style="text-align:center;text-decoration:underline;font-weight:bold;transform: translateY(-2em);">續領車輛牌照</div>
											<div style="text-align:center;transform: translateY(-2em);">(車輛登記號碼編號：<%=regMark %>)</div>
										</p>

										<p style="text-indent:1cm;text-align:justify;transform: translateY(-2.5em);">
											本署已於<span><u><fmt:formatDate value="${postRegObj.receiveDate}" pattern="yyyy" />年<fmt:formatDate value="${postRegObj.receiveDate}" pattern="MM" />月<fmt:formatDate value="${postRegObj.receiveDate}" pattern="dd" />日</u></span>收到你的續領車輛牌照申請。基於以下原因，本署不能處理你的申請：
											<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
											<table style="width: 100%; border-spacing: 0px;">
												<%}else{%>
												<table style="width: 100%; border-spacing: 0px; text-indent: 0cm;">
													<%}%>
													<tr><td style="padding: 2px;" colspan="2">&nbsp;</td></tr>
													<c:forEach var="rejectVal" items="${rejRsnValList}" >
														<c:forEach var="rejectValAll" items="${postVlRegRejectCodeValList}" >
															<c:if test="${(rejectValAll.rejectCode ne 'R32') && (rejectValAll.rejectCode eq rejectVal.rejectCode)}" >
																<tr style="transform: translateY(-4em);>
																	<td style="vertical-align: top; padding: 2px;" ><input type="checkbox" name="rejectName" id="<c:out value="${rejectValAll.rejectCode}"/>_che" value="<c:out value="${rejectValAll.rejectCode}"/>" /></td>
																	<td style="padding-top=4px; padding: 2px;"  >
																		<c:out value="${rejectValAll.chiDesc}"/>
																	</td>
																</tr>
															</c:if>
														</c:forEach>
													</c:forEach>
												</table>
											</p>

											<script>
											var rejectTag = document.getElementsByName("rejectName");
											for(var i=0;i<rejectTag.length;i++){
												var loopBol = false;
												<c:forEach var="rejectRemarkVal" items="${rejRsnValList}">
												if(!loopBol && '<c:out value="${rejectRemarkVal.rejectCode}"/>'==rejectTag[i].value && '<c:out value="${rejectRemarkVal.rejectCode}"/>' != null && '<c:out value="${rejectRemarkVal.rejectCode}"/>' !='' ){
													rejectTag[i].checked = true;
													loopBol = true;
													if('R27'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var resubmitDay_R27 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(0, 2);
														var resubmitMon_R27 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(2, 4);
														var resubmitYear_R27 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(4, 8);
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param", "<span><u>"+resubmitYear_R27 +"年"+resubmitMon_R27+"月"+resubmitDay_R27+"日</u></span>");
													}else if('R29'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var resubmitDay_R29 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(0, 2);
														var resubmitMon_R29 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(2, 4);
														var resubmitYear_R29 = '<c:out value="${rejectRemarkVal.rejectVal}"/>'.substring(4, 8);
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param", "<span><u>"+resubmitYear_R29 +"年"+resubmitMon_R29+"月"+resubmitDay_R29+"日</u></span>");
													}else if('R16'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var paramChiValue = '';
														if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Vehicle Registration Document"){
															paramChiValue = "車輛登記文件(即牌簿)";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Vehicle Licence"){
															paramChiValue = "車輛牌照(即行車證)";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Vehicle Registration Document and Vehicle Licence"){
															paramChiValue = "車輛登記文件(牌簿)及牌照(行車證)";
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param",'<span><u>'+paramChiValue+'</u></span>');
													}else if('R17'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var paramChiValue = '';
														if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Hong Kong Identity Card"){
															paramChiValue = "香港智能身份證";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Passport"){
															paramChiValue = "護照";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Certificate of Incorporation"){
															paramChiValue = "公司註冊證書(CI)";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="a valid Business Registration Document(BR)"){
															paramChiValue = "有效商業登記證 (BR)";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="PRC Permit"){
															paramChiValue = "通行證";
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param",'<span><u>'+paramChiValue+'</u></span>');
													}else if('R21'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var paramChiValue = '';
														if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Your signature"){
															paramChiValue = "你的簽署";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="The company's chop and signature of the company's authorised persons"){
															paramChiValue = "蓋上公司/機構印章及公司指定的授權人士簽署";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="The company's chop"){
															paramChiValue = "蓋上公司/機構印章";
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param",'<span><u>'+paramChiValue+'</u></span>');
													}else if('R22'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var paramChiValue = '';
														if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Your signature"){
															paramChiValue = "你的簽署";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="The company's chop and signature of the company's authorised persons"){
															paramChiValue = "蓋上公司/機構印章及公司指定的授權人士簽署";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="The company's chop"){
															paramChiValue = "蓋上公司/機構印章";
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param",'<span><u>'+paramChiValue+'</u></span>');
													}else if('R24'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var paramChiValue = '';
														if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Residential Address"){
															paramChiValue = "住址";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Company's Address"){
															paramChiValue = "公司地址";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Correspondence Address"){
															paramChiValue = "通訊地址";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Residential Address and Correspondence Address"){
															paramChiValue = "住址及通訊地址";
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param",'<span><u>'+paramChiValue+'</u></span>');
													}else if('R23'=='<c:out value="${rejectRemarkVal.rejectCode}"/>'){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														var paramChiValue = '';
														if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="Your signature"){
															paramChiValue = "你的簽署";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="The company's chop and signature of the company's authorised persons"){
															paramChiValue = "蓋上公司/機構印章及公司指定的授權人士簽署";
														}else if("<c:out value="${rejectRemarkVal.rejectVal}"/>"=="The company's chop"){
															paramChiValue = "蓋上公司/機構印章";
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param",'<span><u>'+paramChiValue+'</u></span>');
													}else{
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '<span><u><c:out value="${rejectRemarkVal.rejectVal}"/></u></span>');
													}
												}
												</c:forEach>
												if(!rejectTag[i].checked){
													if('R32'==rejectTag[i].value){
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param","______________");
													}else{
														var descTdObj;
														if(IEVersionGlobal=='11'){
															descTdObj = rejectTag[i].parentNode.nextSibling.nextSibling;
														}else{
															descTdObj = rejectTag[i].parentNode.nextSibling;
														}
														descTdObj.innerHTML = descTdObj.innerHTML.replace("param", "________________________________");
													}
												}
											}
											</script>

											<p style="text-indent:1cm;text-align:justify;margin-top: -3em;">
												本署現將以下申請表格及相關文件退回給你，請你在準備以上文件後，儘快連同申請表、所有相關文件及支票/銀行本票寄回本署，以供本署處理你的申請。
												<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
												<table style="width: 100%; border-spacing: 0px;">
													<%}else{%>
													<table style="width: 100%; border-spacing: 0px; text-indent: 0cm;">
														<%}%>
														<tr><td style="padding: 2px;" colspan="2">&nbsp;</td></tr>
														<c:forEach var="rtnValOnly" items="${rtnDocValList}">
															<c:forEach var="rtnVal" items="${postVlRegRtnDocCodeValList}">
																<c:if test="${rtnValOnly.returnCode eq rtnVal.returnCode}" >
																	<tr>
																		<td style="vertical-align: top; width: 3%; padding: 2px;"><input type="checkbox" id="<c:out value="${rtnVal.returnCode}"/>_che" name="rtnName" value="<c:out value="${rtnVal.returnCode}"/>" /></td>
																		<td style="padding-top=4px; padding: 2px;">
																			<c:out value="${rtnVal.chiDesc}"/>
																		</td>
																	</tr>
																</c:if>
															</c:forEach>
														</c:forEach>
													</table>
												</p>
												<script>
												var rtnTag = document.getElementsByName("rtnName");
												for(var i=0;i<rtnTag.length;i++){
													var loopBol = false;
													<c:forEach var="rtndocVal" items="${rtnDocValList}">
													if(!loopBol && '<c:out value="${rtndocVal.returnCode}"/>'==rtnTag[i].value && '<c:out value="${rtndocVal.returnCode}"/>' != null && '<c:out value="${rtndocVal.returnCode}"/>' !='' ){
														rtnTag[i].checked = true;
														loopBol = true;
														if('V08'=='<c:out value="${rtndocVal.returnCode}"/>'){
															var descTdObj;
															if(IEVersionGlobal=='11'){
																descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
															}else{
																descTdObj = rtnTag[i].parentNode.nextSibling;
															}
															descTdObj.innerHTML = descTdObj.innerHTML.replace("param1",'<span><u><c:out value="${rtndocVal.rtnVal1}"/></u></span>').replace('param2','<span><u><c:out value="${rtndocVal.rtnVal2}"/></u></span>');
														}else{
															var descTdObj;
															if(IEVersionGlobal=='11'){
																descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
															}else{
																descTdObj = rtnTag[i].parentNode.nextSibling;
															}
															descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '<span><u><c:out value="${rtndocVal.rtnVal1}"/></u></span>');
														}
													}
													</c:forEach>
													if(!rtnTag[i].checked){
														if('V08'==rtnTag[i].value){
															var descTdObj;
															if(IEVersionGlobal=='11'){
																descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
															}else{
																descTdObj = rtnTag[i].parentNode.nextSibling;
															}
															descTdObj.innerHTML = descTdObj.innerHTML.replace("param1",'______________').replace('param2','______________');
														}else{
															var descTdObj;
															if(IEVersionGlobal=='11'){
																descTdObj = rtnTag[i].parentNode.nextSibling.nextSibling;
															}else{
																descTdObj = rtnTag[i].parentNode.nextSibling;
															}
															descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '______________');
														}
													}
												}
												</script>

												<p style="text-indent:1cm;text-align:justify;margin-top: -0.5em;">
													請注意：
													<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
													<table style="width: 100%; border-spacing: 0px;">
														<%}else{%>
														<table style="width: 100%; border-spacing: 0px; text-indent: 0cm;">
															<%}%>
															<tr><td style="padding: 2px;" colspan="2">&nbsp;</td></tr>
															<c:forEach var="rtnDocPtValOnly" items="${rtnDocPtValList}">
																<c:forEach var="rtnValPt" items="${postVlRegNtPtValList}">
																	<c:if test="${rtnDocPtValOnly.returnCode eq rtnValPt.returnCode}" >
																		<tr>
																			<td style="vertical-align: top; width: 3%; padding: 2px;"><input type="checkbox" id="<c:out value="${rtnValPt.returnCode}"/>_che" name="rtnNamePt" value="<c:out value="${rtnValPt.returnCode}"/>" /></td>
																			<td style="padding-top=4px; padding: 2px;">
																				<c:out value="${rtnValPt.chiDesc}"/>
																			</td>
																		</tr>
																	</c:if>
																</c:forEach>
															</c:forEach>
														</table>
													</p>
													<script>
													var rtnTagPt = document.getElementsByName("rtnNamePt");
													for(var i=0;i<rtnTagPt.length;i++){
														var loopBol = false;
														<c:forEach var="rtndocValPt" items="${rtnDocPtValList}">
														if(!loopBol && '<c:out value="${rtndocValPt.returnCode}"/>'==rtnTagPt[i].value && '<c:out value="${rtndocValPt.returnCode}"/>' != null && '<c:out value="${rtndocValPt.returnCode}"/>' !='' ){
															rtnTagPt[i].checked = true;
															loopBol = true;
															var descTdObj;
															if(IEVersionGlobal=='11'){
																descTdObj = rtnTagPt[i].parentNode.nextSibling.nextSibling;
															}else{
																descTdObj = rtnTagPt[i].parentNode.nextSibling;
															}
															descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '<span><u><c:out value="${rtndocValPt.rtnVal1}"/></u></span>');
														}
														</c:forEach>
														if(!rtnTagPt[i].checked){
															var descTdObj;
															if(IEVersionGlobal=='11'){
																descTdObj = rtnTagPt[i].parentNode.nextSibling.nextSibling;
															}else{
																descTdObj = rtnTagPt[i].parentNode.nextSibling;
															}
															descTdObj.innerHTML = descTdObj.innerHTML.replace("param", '______________');
														}
													}
													</script>

													<table style="width: 100%; border-spacing: 0px; text-align: right;margin-top: -0.5em;">
														<tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th></tr>
														<tr>
															<td style="text-align: right;">
																<br><br><br><br>
																	運輸署 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																</td>
																<td style="display: none"></td><td style="display: none"></td>
															</tr>
															<tr>
																<td colspan="3">&nbsp;</td>
															</tr>
															<tr>
																<td style="text-align: right;">
																	(此乃電腦列印文件，無須簽署)<br>
																</td>
																<td style="display: none"></td><td style="display: none"></td>
															</tr>
														</table>

													</td>
												</tr>
											</table>

										</td>
									</tr>
								</table>
