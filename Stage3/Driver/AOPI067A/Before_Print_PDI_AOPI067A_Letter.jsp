<!DOCTYPE html>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="tdcustom"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.SessionConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page import="hk.gov.valid.driver.util.DriverConstant"%>

<html lang="en">

<head>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="0">
<meta name="margin-right" content="0">
<meta name="copies" content="1">
<meta name="papersize" content="A4">
<meta name="orientation" content="0">
<meta name="duplex" content="2">
<title>Document</title>

<style>
<style type="text/css">
<!--
.justify{
	text-align:justify;
	text-align-last:justify;
	}
.justifyCn{
	text-align:justify;
	text-justify:distribute-all-lines;
	}
p, div {
	line-height: 25px;
	font-size: 12pt;
}
.STYLE1 {
	font-family: "Times New Roman";
	font-size: 10pt;
}
.STYLE2 {
	font-family: "MingLiU_HKSCS";
	font-size: 11pt;
}

.addressEng {
	font-family: "Times New Roman";
	font-size: 9pt;
}

.addressChi {
	font-family:  MingLiU_HKSCS;
	font-size: 9pt;
}

.STYLE3 {
	font-family: MingLiU_HKSCS;
	font-size: 10pt;
}
.STYLE4 {
	font-family: "Times New Roman";
	font-size: 10pt;
}
.STYLE9 {
	font-family: MingLiU_HKSCS;
	font-size: 8pt;
}
.STYLE10 {
	font-family: "Times New Roman";
	font-size: 8pt;
}

div.page
	{page-break-before:always}


-->
</style>
</head>

<c:set var="PRINT_PDI_LETTER_VALUE"><%=RequestConstant.PDI_PRINT_VALUE%></c:set>
<c:set var="pdiPrintValue" value="${requestScope[PRINT_PDI_LETTER_VALUE]}" scope="request"/>
<c:set var="issuePrintingCtlValue" value="${pdiPrintValue.issuePrintingCtlValue}" />
<body lang=ZH-CN style='text-justify-trim:punctuation'>
	<table style="margin:0 auto;height:100%;width:550px">
 <tr style="vertical-align:top">
 <td  style="text-align:center;border:0"><table class="MsoTableGrid cellpadding-0" style='border-collapse:collapse;margin:0 auto;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
     <tr>
				<td style="vertical-align:top;width:50%;border:0;padding:0px">
						   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
					<img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" /> 
                </td>
        <td style="vertical-align:top;width:20%;border:0;padding:0px">
				<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   			<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
                </td>
				<td style="text-align:right;vertical-align:bottom;width:30%;border:0;padding:0px">  
					<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p> 
	   				<table style="border-spacing:0;width:150px"><tr><td style="border:1px solid;padding:0px"> 	
								<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	   						  
					   <p  style="text-align:center">
							<span lang=EN-US style='font-family:Arial;font-size:30pt'>G<c:out value="${pdiPrintValue.pdiGroup}"/></span>
					   </p>
					   <p style="text-align:center">				
					   	<c:if test="${pdiPrintValue.pdiGroup=='1'}">
								<span class="STYLE2">(第一組別)</span>
							</c:if>
							<c:if test="${pdiPrintValue.pdiGroup=='2'}">
								<span class="STYLE2">(第二組別)</span>
							</c:if>
					   	<c:if test="${pdiPrintValue.pdiGroup=='3'}">
								<span class="STYLE2">(第三組別)</span>
							</c:if>
					   </p>	
				  </td></tr></table>
				</td>
				<td style="display: none;" colspan="11"></td>
			</tr>
		<tr>
				<td style="width:50%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p> </td>
				<td style="width:20%;border:0;padding:0px"><table style="border-spacing:0;width:150px"><tr><td style="border:0;padding:0px">
				   <p style='line-height:5pt;vertical-align:bottom'><span class="STYLE10" style='line-height:8pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
           			</p>
            		</td></tr></table>
				</td>
				<td style="width:30%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p> </td>
				<td style="display: none;" colspan="11"></td>
			</tr>
			
			<tr>
				<td style="vertical-align:top;width:50%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
		   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
                </td>
				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
				   <table style="border-spacing:0;width:150px"><tr><td style="text-align:right;border:0;padding:0px">
				  <p><span style='font-family:Arial;font-size:12pt' >申請編號&nbsp;</span> </p>
            </td></tr></table>
				</td>
				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
				   <table style="border-spacing:0;width:150px"><tr><td style="text-align:right;border:1px solid;padding:0px">
				   		<p  style="text-align:center"><span class="STYLE4"><b><c:out value="${pdiPrintValue.pdiApplNo}"/></b></span> 
            	</p>
            </td></tr></table>
				</td>
			<td style="display: none;" colspan="11"></td>
			</tr>
			
     <tr>
   	  <td  colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'  >
	  	 <p style="text-align:justify">
			<c:choose>				
				<c:when test="${!empty pdiPrintValue.nameChi}">
					<span class="addressChi"><c:out value="${pdiPrintValue.nameChi}"/></span>				</c:when>
				<c:otherwise>
						<span class="addressEng"><c:out value="${pdiPrintValue.nameEng}"/></span>				</c:otherwise>
			</c:choose>
		</p>	  </td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style="text-align:justify">
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
		 			<span class="addressChi"><c:out value="${pdiPrintValue.addressChi1}"/></span>				</c:when>
			<c:otherwise>
				<span class="addressEng"><c:out value="${pdiPrintValue.addressEng1}"/></span>			</c:otherwise>
			</c:choose>
		</p>	  </td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style="text-align:justify">
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
		 			<span class="addressChi"><c:out value="${pdiPrintValue.addressChi2}"/></span>				</c:when>
			<c:otherwise>
				<span class="addressEng"><c:out value="${pdiPrintValue.addressEng2}"/></span>			</c:otherwise>
			</c:choose>
		</p>	  </td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style="text-align:justify">
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
		 			<span class="addressChi"><c:out value="${pdiPrintValue.addressChi3}"/></span>				</c:when>
			<c:otherwise>
				<span class="addressEng"><c:out value="${pdiPrintValue.addressEng3}"/></span>			</c:otherwise>
			</c:choose>
		</p>	  </td>
   </tr>
     <tr>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:left;layout-grid-mode:char;text-align:left'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>
     <tr>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:left;layout-grid-mode:char;text-align:left'> <span class="STYLE2" >申請人：</span> </p></td>
     </tr>
	 <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  <p style="text-align:center">
		<span class="STYLE2"><u><b>申請第<c:if test="${pdiPrintValue.pdiGroup=='1'}"><span class="STYLE2">一</span></c:if><c:if test="${pdiPrintValue.pdiGroup=='2'}"><span class="STYLE2">二</span></c:if><c:if test="${pdiPrintValue.pdiGroup=='3'}"><span class="STYLE2">三</span></c:if>組別私人駕駛教師考試</b></u></span>	  </p>   </td>
  </tr> 
  <tr>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:left;layout-grid-mode:char;text-align:left'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>
  <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p style="text-indent: 2em; text-align: justify; text-justify:inter-character;">
	   		<span class="STYLE2">本署已於早前致函通知你上述申請的抽籤序號，以決定處理有關申請的先後次序。本署已按你的抽籤序號處理你的申請，惟經核實你所申報的資料後，確定你未能符合申請資格，理由如下：</span>	   </p>     </td>
   </tr>
   <c:if test="${pdiPrintValue.pdiGroup=='1'}">
   <%--
   <tr>
   	<td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  	   <tr>
  	   <td width="5%" align="justify">&nbsp;</td>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p style="text-align: justify; text-justify: inter-ideograph;"><c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;</p></td>
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE2">你未能在緊接申請的日期之前一直持有車輛類別1和2（即私家車及輕型貨車）的有效正式駕駛執照最少三年。</span>
       </p>
     </td>
	 </tr>
	 </table>	 </td>
   </tr>
   --%>
   <tr>
   	<td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  	   <tr>
  	   <td style="text-align:justify;width:5%;border:0;padding:0px">&nbsp;</td>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;"><c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;</p></td>
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;"><span class="STYLE2">你未能在緊接申請的日期之前一直持有私家車及輕型貨車（車輛類別1和2）的有效正式駕駛執照最少六年。</span>
       </p>
     </td>
	 </tr>
	 </table>	 </td>
   </tr>
   </c:if> 
   <c:if test="${pdiPrintValue.pdiGroup=='2'}">
   <%-- Modified by Mickey Yip for ER-2022-011 START --%>
   <%--
   <tr>
   <td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  		 <tr>
   	   <td width="5%" align="justify">&nbsp;</td>
	   <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	   <p style="text-align: justify; text-justify: inter-ideograph;">
       <c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;
	   </p>
       </td>
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE2">你未能在緊接申請的日期之前一直持有車輛類別4、5、9和10 （即私家/公共小型巴士及私家/公共巴士）的有效正式駕駛執照最少三年。</span>
       </p>
     </td>
	 </tr>
	 </table>	 </td>
   </tr>
   --%>
   <tr>
   <td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  		 <tr>
   	   <td style="text-align:justify;width:5%;border:0;padding:0px">&nbsp;</td>
	   <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:-0.3cm; padding-bottom:0cm;border:0;padding:0px'>
	   <p style="text-align: justify; text-justify:inter-character;">
       <c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;
	   </p>
       </td>
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;"><span class="STYLE2">你未能在緊接申請的日期之前一直持有公共小巴、私家小巴、公共巴士及私家巴士（車輛類別4、5、9和10）的有效正式駕駛執照最少三年；及／或在緊接申請的日期之前一直持有私家車及輕型貨車（車輛類別1和2）的有效正式駕駛執照最少六年。</span>
       </p>
     </td>
	 </tr>
	 </table>	 </td>
   </tr>
   <%-- Modified by Mickey Yip for ER-2022-011 END --%>
   </c:if> 
   <c:if test="${pdiPrintValue.pdiGroup=='3'}">
   <%--
   <tr>
   <td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  		 <tr>
   		<td width="5%" align="justify">&nbsp;</td>
   		
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
     <p style="text-align: justify; text-justify: inter-ideograph;">
       <c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;
     </p>
     </td>
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
     <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE2">你未能在緊接申請的日期之前一直持有車輛類別18、19和20（即中型貨車、重型貨車及掛接車輛）的有效正式駕駛執照最少三年。</span>
     </p>
     </td>
	   </tr>
	   </table>	   </td>
   </tr>
   --%>
   <tr>
   <td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  		 <tr>
   		<td style="text-align:justify;width:5%;border:0;padding:0px">&nbsp;</td>
   		
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:-0.3cm; padding-bottom:0cm;border:0;padding:0px'>
     <p style="text-align: justify; text-justify:inter-character;">
       <c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;
     </p>
     </td>
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
     <p style="text-align: justify; text-justify:inter-character;"><span class="STYLE2">你未能在緊接申請的日期之前一直持有中型貨車、重型貨車及掛接式車輛（車輛類別18、19和20）的有效正式駕駛執照最少三年；及／或在緊接申請的日期之前一直持有私家車及輕型貨車（車輛類別1和2）的有效正式駕駛執照最少六年。</span>
     </p>
     </td>
	   </tr>
	   </table>	   </td>
   </tr>
   </c:if> 

	<%-- Modified by Mickey Yip for ER-2022-011 START --%>
	<%--
   <tr>
   <td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  		 <tr>
   		<td width="5%" align="justify">&nbsp;</td>
   		

	 <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p style="text-align: justify; text-justify: inter-ideograph;">	   
       <c:if test="${pdiPrintValue.haveMajorOffence}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if><c:if test="${!pdiPrintValue.haveMajorOffence}"><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:if>
       &nbsp;</p>
     </td>
	  

	   
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.7cm; padding-bottom:0cm'>
       <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE2">你在緊接這申請前五年內，曾就《道路交通條例》(第&nbsp;374&nbsp;章)第&nbsp;36、36A、39、39A、39B、39C、39J、39K、39L、39O（1）&nbsp;或&nbsp;39S&nbsp;條所訂罪行被定罪。</span>
       </p>
     </td>
   		</tr></table></td>
   	</tr>
   	--%>
   	<tr>
   <td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  		 <tr>
   		<td style="text-align:justify;width:5%;border:0;padding:0px">&nbsp;</td>
   		

	 <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;">	   
       <c:if test="${pdiPrintValue.haveMajorOffenceFor5Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if><c:if test="${!pdiPrintValue.haveMajorOffenceFor5Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:if>
       &nbsp;</p>
     </td>
	  

	   
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;"><span class="STYLE2">你在緊接這申請前過去五年內，曾就《道路交通條例》（第374章）第36、36A、37、39、39A、39B、39C、39J、39K、39L、39O（1）或39S條所訂罪行被定罪。</span>
       </p>
     </td>
   		</tr></table></td>
   	</tr>
   	<tr>
   <td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
  		 <tr>
   		<td style="text-align:justify;width:5%;border:0;padding:0px">&nbsp;</td>
   		

	 <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;">	   
       <c:if test="${pdiPrintValue.haveMajorOffenceFor2Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if><c:if test="${!pdiPrintValue.haveMajorOffenceFor2Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:if>
       &nbsp;</p>
     </td>
	  

	   
	   
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.3cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;"><span class="STYLE2">你在緊接這申請前過去兩年內，曾就《道路交通條例》（第374章）第38條所訂的罪行被定罪。</span>
       </p>
     </td>
   		</tr></table></td>
   	</tr>
   	<%-- Modified by Mickey Yip for ER-2022-011 END --%>
   	<%-- Modified by Mickey Yip for ER-2022-011 START --%>
   <%--<tr>
       <td colspan=14 valign=top style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'><p class=MsoNormal align=left style='text-align:left;layout-grid-mode:char'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>--%>
     
   <tr>
   <td colspan="14" style='padding-left:0pt; padding-right:0pt; padding-top:0.2cm; padding-bottom:0cm;border:0;padding:0px'>
   		<table style="table-layout:fixed;width:100%;"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th></tr>
  		 <tr>
   		<td style="text-align:justify;width:5%;border:0;padding:0px">&nbsp;</td>
	    <td class="STYLE2" style="border:0;padding:0px">
	    <c:if test="${empty pdiPrintValue.rejectReasonCH}">
	    <img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/>
	    </c:if>
	    <c:if test="${!empty pdiPrintValue.rejectReasonCH}">
	    <img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	    </c:if>
	    </td>
	   <td class="STYLE2" style="width:10%;border:0;padding:0px">其他：</td>
     <%--<td width="81%" colspan=14 style='border-bottom: 1px solid black;'>--%>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0.2cm; padding-bottom:0cm;width:81%;border:0;padding:0px'>
	   <p class="STYLE2">
			<c:if test="${empty pdiPrintValue.rejectReasonCHLine2}">&nbsp;<c:out value="${pdiPrintValue.rejectReasonCHLine1}" /></c:if>
			<c:if test="${!empty pdiPrintValue.rejectReasonCHLine2}"><div class="justifyCn STYLE2">&nbsp;<c:out value="${pdiPrintValue.rejectReasonCHLine1}" /></div></c:if>
	   </p>     
	   </td>
	</tr></table></td>
   </tr>
   
   <%--<tr>
   <td colspan="14">
   		<table style="table-layout:fixed;width:100%;"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th></tr>
  		 <tr>
   		<td width="5%" align="justify">&nbsp;</td>
	    <td width="4%" align="justify" valign="top"></td>
     	<td colspan=15 valign=top  style='border-bottom: 1px solid black;'>
       <p class="STYLE2" style="text-align: justify; text-justify: inter-ideograph;">
	   <c:out value="${pdiPrintValue.rejectReasonCHLine2}" />&nbsp;
	   </p>     
	   </td>
	</tr></table></td>
   </tr>--%>
   <%-- Modified by Mickey Yip for ER-2022-011 END --%>
   
	 <tr>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:left;layout-grid-mode:char;text-align:left'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p style="text-indent: 2em; text-align: justify; text-justify:inter-character;">
	   		<span class="STYLE2">因你未能符合申請資格，本署將不再繼續處理你第一組別私人駕駛教師考試的申請。如你對上述申請結果有任何異議，可由本通知信發出日期起計的&nbsp;7&nbsp;天內，以書面形式向九龍何文田培正道19號運輸署駕駛事務組提出覆核，並附上有關理據。</span>	   </p>     </td>
   </tr>
   <tr>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:left;layout-grid-mode:char;text-align:left'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p style="text-indent: 2em; text-align: justify;">
	   		<span class="STYLE2">如有查詢，請致電
             <c:out value="${issuePrintingCtlValue.telNo1}"/>
                 <c:if test="${!empty issuePrintingCtlValue.telNo2}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo2}"/></c:if>
				 <c:if test="${!empty issuePrintingCtlValue.telNo3}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo3}"/></c:if>
             與本署聯絡。</span>	   </p>     </td>
   </tr>
   <%-- 
   <tr>
       <td colspan=14 valign=top style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'><p class=MsoNormal align=left style='text-align:left;layout-grid-mode:char'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>
	--%>
   <tr>
   <%--
   <tr>
       <td colspan=10 valign=top style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'><p class=MsoNormal align=left style='text-align:left;layout-grid-mode:char'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>
    --%>
     <td colspan=14  style="vertical-align:top;border:0;padding:0px">
	 	<table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
		<tr>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:justify">
	   			<span class="STYLE2"></span>	   		   </p>			</td>
			<td style="width:50%;border:0;padding:0px">
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p style="text-align:center">
	   			<span class="STYLE2">運輸署署長</span>	   		   </p>			</td>
			<td colspan="12" style="display: none;"></td>
		</tr>
		<tr>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:justify">
	   			<span class="STYLE2"></span>	   		   </p>			</td>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:center">
	   			&nbsp;<span class="STYLE2">(<c:out value="${issuePrintingCtlValue.commissorNameChi}"/>&nbsp;代行)<sup>1</sup></span>	   		   </p>			</td>
			<td colspan="12" style="display: none;"></td>
		</tr>
		 <tr>
       <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:left;layout-grid-mode:char;text-align:left'> <span class="STYLE2" style=''>&nbsp;</span> </p></td>
     </tr>
		<tr>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:justify">
	   			<span class="STYLE2"><fmt:formatDate value="${pdiPrintValue.printDate}" pattern="yyyy" />&nbsp;年&nbsp;<fmt:formatDate value="${pdiPrintValue.printDate}" pattern="M" />&nbsp;月&nbsp;<fmt:formatDate value="${pdiPrintValue.printDate}" pattern="d" />&nbsp;日</span>	   		   </p>			</td>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:center">
	   			<span class="STYLE2">&nbsp;</span>	   		   </p>			</td>
			<td colspan="12" style="display: none;"></td>
		</tr>
		</table>     </td>
   </tr>	
   </table>
   
    </td>
   </tr>
   <tfoot >
  <tr style="vertical-align:bottom">
  <td style="text-align:center;width:100%;border:0">
  <table class="MsoTableGrid cellpadding-0" style='border-collapse:collapse;margin:0 auto;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
  	    <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p class=MsoNormal style='text-align:left;text-decoration: underline;text-align:left'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>
   </tr>
  	
	 <tr>
		<td style="border:0;padding:0px">
			<p style="text-align:justify">
	   			<span class="STYLE3"><sup>1</sup> 這是電腦列印的信件，無需簽署。</span>
	   		</p>	
		</td>
		 <td colspan="13" style="display: none;"></td>
	</tr>
  </table>
  </td></tr>
  </tfoot>	
</table>

<div class="page">
<fmt:setLocale value="en_US"/>
	<table style="margin:0 auto;height:100%;width:545px">
 <tr style="vertical-align:top">
 <td  style="text-align:center;border:0">
 <table class="MsoTableGrid cellpadding-0" style='border-collapse:collapse;margin:0 auto;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr>
   <tr>
				<td style="vertical-align:top;width:50%;border:0;padding:0px">
						   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
					<img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" /> 
                </td>
        <td style="vertical-align:top;width:20%;border:0;padding:0px">
				<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   			<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
                </td>
				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">	
						   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p> 
						<table style="border-spacing:0;width:150px"><tr><td style="border:1px solid;padding:0px"> 	
								<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>			
						   <p  style="text-align:center">
							<span lang=EN-US style='font-family:Arial;font-size:30pt'>G<c:out value="${pdiPrintValue.pdiGroup}"/></span>
						   </p>
						   <p style="text-align:center">				
							<span class="STYLE1">(Group <c:out value="${pdiPrintValue.pdiGroup}"/>)</span>
						   </p>
				   	</td></tr></table>
				</td>
	   <td colspan="12" style="display: none;"></td>
			</tr>
		<tr>
				<td style="width:50%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p> </td>
				<td style="width:20%;border:0;padding:0px"><table style="border-spacing:0;width:150px"><tr><td style="border:0;padding:0px">
				   <p style='line-height:5pt;vertical-align:bottom'><span class="STYLE10" style='line-height:8pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
           			</p>
            		</td></tr></table>
				</td>
				<td style="width:30%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p> </td>
			<td colspan="12" style="display: none;"></td>
			</tr>
			
			<tr>
				<td style="vertical-align:top;width:50%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
		   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
                </td>

				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
				  <table style="border-spacing:0;width:150px"><tr><td style="text-align:right;border:0;padding:0px">
				   		<p><span class="STYLE1">Application No.&nbsp;</span> 
            	</p>
            </td></tr></table>
				</td>

				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
				  <table style="border-spacing:0;width:150px"><tr><td style="text-align:right;border:1px solid;padding:0px">
				   		<p  style="text-align:center"><span class="STYLE4"><b><c:out value="${pdiPrintValue.pdiApplNo}"/></b></span> 
            	</p>
            </td></tr></table>
				</td>
				<td colspan="12" style="display: none;"></td>
				
			</tr>
     <tr>
   	  <td  colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px' >
	  	 <p style="text-align:justify">
			<c:choose>				
				<c:when test="${!empty pdiPrintValue.nameEng}">
					<span class="addressEng"><c:out value="${pdiPrintValue.nameEng}"/></span>
				</c:when>
				<c:otherwise>
						<span class="addressChi"><c:out value="${pdiPrintValue.nameChi}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td>
		 <td style="display: none;"></td>
   </tr>
   <tr>
	  <td colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style="text-align:justify">
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
		 			<span class="addressEng"><c:out value="${pdiPrintValue.addressEng1}"/></span>
				</c:when>
				<c:otherwise>
					<span class="addressChi"><c:out value="${pdiPrintValue.addressChi1}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style="text-align:justify">
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
		 			<span class="addressEng"><c:out value="${pdiPrintValue.addressEng2}"/></span>
				</c:when>
				<c:otherwise>
					<span class="addressChi"><c:out value="${pdiPrintValue.addressChi2}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:30pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style="text-align:justify">
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
		 			<span class="addressEng"><c:out value="${pdiPrintValue.addressEng3}"/></span>
				</c:when>
				<c:otherwise>
					<span class="addressChi"><c:out value="${pdiPrintValue.addressChi3}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:right"><span class="STYLE1"><fmt:formatDate value="${pdiPrintValue.printDate}" pattern="d MMMM yyyy" /></span></p>
    </td>
	   <td style="display: none;"></td>
   </tr>
    <tr>
          <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
             <p style="text-align:justify"><span class="STYLE1">Dear Applicant,</span></p>
     </td>
		<td style="display: none;"></td>
   </tr>
 <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	 <td style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:center;layout-grid-mode:char;text-align:center'> <span class="STYLE1" style='text-decoration: underline;'><b>Application for Private Driving Instructors' Test (Group 
             <c:out value="${pdiPrintValue.pdiGroup}"/>)</b></span> </p></td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	 <p style="text-indent: 2em; text-align: justify;line-height: 20px"><span class="STYLE1">This Department informed you in writing earlier regarding the balloted order number for determining the priority of handling the applications.  After processing your application according to your balloted order number and verification of your submitted information, it is considered that you are not qualified for the application for the following reason(s):</span> </p>
	 </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	   <td style="display: none;"></td>
   </tr>
   <c:if test="${pdiPrintValue.pdiGroup=='1'}">
   <%-- Modified by Mickey Yip for ER-2022-011 START --%>
   <%--
   <tr>
      	<td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
		<td width="5%">&nbsp;</td>
		     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0.5cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>

   	   
     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE1">you have not held a valid full driving licence to drive vehicle classes 1 and 2 (private car and light goods vehicle) for a period of at least 3 years immediately preceding the date of application.</span></p>     </td>
	 </table>	 </td>
   </tr>
   --%>
   <tr>
      	<td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
			<tr>
		<td style="width:5%;border:0;padding:0px">&nbsp;</td>
		     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0.5cm;border:0;padding:0px'>
        		<p style="text-align: justify; text-justify:inter-character;line-height: 20px">
        		<c:choose>
	   				<c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   				<c:otherwise><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   			</c:choose>&nbsp;&nbsp;</p>     </td>

   	   
     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;border:0;padding:0px'>
        <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><span class="STYLE1">You have not held a valid full driving licence to drive private car and light goods vehicle (vehicle classes 1 and 2) for a period of at least 6 years immediately preceding the date of application.</span></p>     </td>
			</tr>
	 </table>	 </td>
	   <td style="display: none;"></td>
   </tr>
   
   <%-- Modified by Mickey Yip for ER-2022-011 END --%>
	</c:if>
   		<c:if test="${pdiPrintValue.pdiGroup=='2'}">
	   <%-- Modified by Mickey Yip for ER-2022-011 START --%>
	   <%--
   <tr>
      	<td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
		<td width="5%">&nbsp;</td>
		     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0.5cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>

   	   
     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE1">you have not held a valid  full driving licence to drive vehicle classes 4, 5, 9 and 10 (private / public  light bus / private and public bus) and has held such driving licence for a  period of at least 3 years immediately preceding the date of application.</span></p>     </td>
	 </table>	 </td>
   </tr>
	  
	  
	   --%>
	   <tr>
	      	<td colspan="14" style="border:0;padding:0px">
	   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
				<tr>
			<td style="width:5%;border:0;padding:0px">&nbsp;</td>
			     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0.5cm;border:0;padding:0px'>
			        <p style="text-align: justify; text-justify:inter-character;line-height: 20px">
			        <c:choose>
					   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
					   <c:otherwise><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
		   			</c:choose>&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>
	
	   	   
	     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;border:0;padding:0px'>
	        <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><span class="STYLE1">You have not held a valid full driving licence to drive public light bus, private light bus, public bus and private bus (vehicle classes 4, 5, 9 and 10) for a period of at least 3 years immediately preceding the date of application; and/or have not held a valid full driving licence to drive private car and light goods vehicle (vehicle classes 1 and 2) for a period of at least 6 years immediately preceding the date of application.</span></p>     </td>
				</tr>
		 </table>	 </td>
		   <td style="display: none;"></td>
	   </tr>
	   <%-- Modified by Mickey Yip for ER-2022-011 END --%>
	   </c:if>
	   
	   <c:if test="${pdiPrintValue.pdiGroup=='3'}">
	   <%-- Modified by Mickey Yip for ER-2022-011 START --%>
	   <%--
   <tr>
      	<td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
		<td width="5%">&nbsp;</td>
		     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0.5cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><c:choose>
	   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
	   <c:otherwise><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
	   </c:choose>&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>

   	   
     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE1">you have not held a valid full  driving licence to drive vehicle classes 18, 19 and 20 (medium goods vehicle, heavy  goods vehicle and articulated vehicle) and has held such driving licence for a  period of at least 3 years immediately preceding the date of application.</span></p>     </td>
	 </table>	 </td>
   </tr>
		 
		 
		 
		--%> 
		<tr>
	      	<td colspan="14" style="border:0;padding:0px">
	   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
				<tr>
			<td style="width:5%;border:0;padding:0px">&nbsp;</td>
			     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0.5cm;border:0;padding:0px'>
			        <p style="text-align: justify; text-justify:inter-character;line-height: 20px">
			        <c:choose>
					   <c:when test="${!pdiPrintValue.haveFDEflag || pdiPrintValue.haveDQFlag}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/></c:when>
					   <c:otherwise><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:otherwise>
				   </c:choose>&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>
	
	   	   
	     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;border:0;padding:0px'>
	        <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><span class="STYLE1">You have not held a valid full driving licence to drive medium goods vehicle, heavy goods vehicle and articulated vehicle (vehicle classes 18, 19 and 20) for a period of at least 3 years immediately preceding the date of application;and/or have not held a valid full driving licence to drive private car and light goods vehicle (vehicle classes 1 and 2) for a period of at least 6 years immediately preceding the date of application.</span></p>     </td>
				</tr>
		 </table>	 </td>
			<td style="display: none;"></td>
	   </tr>
		<%-- Modified by Mickey Yip for ER-2022-011 END --%> 
		</c:if>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	   <td style="display: none;"></td>
   </tr>
	<%-- Modified by Mickey Yip for ER-2022-011 START --%> 
	<%--
   <tr>
      	<td colspan="14">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
		<td width="5%">&nbsp;</td>
		     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0.5cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><c:if test="${pdiPrintValue.haveMajorOffence}"><img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if><c:if test="${!pdiPrintValue.haveMajorOffence}"><img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>

   	   
     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
        <p style="text-align: justify; text-justify: inter-ideograph;"><span class="STYLE1">you have been convicted of an offence under section 36, 36A, 39, 39A, 39B, 39C, 39J, 39K, 39L, 39O (1) or 39S of the Road Traffic Ordinance (Cap.374) during the 5 years immediately preceding the application.</span></p>     </td>
	 </table>	 </td>
   </tr>
   --%> 
   <tr>
      	<td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
			<tr>
		<td style="width:5%;border:0;padding:0px">&nbsp;</td>
		     <td colspan=14  style="border:0;padding:0px">
        <p style="text-align: justify; text-justify:inter-character;line-height: 22px"><c:if test="${pdiPrintValue.haveMajorOffenceFor5Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if><c:if test="${!pdiPrintValue.haveMajorOffenceFor5Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:if>&nbsp;&nbsp;</p>     </td>

   	   
     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;border:0;padding:0px'>
        <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><span class="STYLE1">You have been convicted of an offence under section 36, 36A, 37, 39, 39A, 39B, 39C, 39J, 39K, 39L, 39O (1) or 39S of the Road Traffic Ordinance (Cap.374) during the 5 years immediately preceding this application.</span></p>     </td>
			</tr>
	 </table>	 </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
      	<td colspan="14" style="border:0;padding:0px">
   		<table><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th><th>Col19</th><th>Col20</th><th>Col21</th><th>Col22</th><th>Col23</th><th>Col24</th><th>Col25</th><th>Col26</th><th>Col27</th><th>Col28</th><th>Col29</th></tr>
			<tr>
		<td style="width:5%;border:0;padding:0px">&nbsp;</td>
		     <td colspan=14  style="border:0;padding:0px">
        <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><c:if test="${pdiPrintValue.haveMajorOffenceFor2Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if><c:if test="${!pdiPrintValue.haveMajorOffenceFor2Years}"><img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/></c:if>&nbsp;&nbsp;</p>     </td>

   	   
     <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;border:0;padding:0px'>
        <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><span class="STYLE1">You have been convicted of an offence under section 38 of the Road Traffic Ordinance (Cap. 374) during the 2 years immediately preceding the date of this application.</span></p>     </td>
			</tr>
	 </table>	 </td>
	   <td style="display: none;"></td>
   </tr>
	<%-- Modified by Mickey Yip for ER-2022-011 END --%> 
   
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	   <td style="display: none;"></td>
   </tr>
   
   <%-- Modified by Mickey Yip for ER-2022-011 START --%> 
   <%-- 
   <tr>
   <td colspan="14">
   		<table style="table-layout:fixed;width:100%;"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th></tr>
  		 <tr>
   		<td width="5%" align="justify">&nbsp;</td>
	   
	   <td class="STYLE1"><c:if test="${empty pdiPrintValue.rejectReasonEN}">
	   <img width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/>
	   </c:if><c:if test="${!empty pdiPrintValue.rejectReasonEN}">
	   <img width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if></td>
	   
		<td class="STYLE1" width="10%">others:</td>
		<td width="81%" colspan=14 valign=top style='border-bottom: 1px solid black;'>
	   <p class="STYLE1">
			<c:if test="${empty pdiPrintValue.rejectReasonENLine2}">&nbsp;<c:out value="${pdiPrintValue.rejectReasonENLine1}" /></c:if>
			<c:if test="${!empty pdiPrintValue.rejectReasonENLine2}"><div class="justify STYLE1">&nbsp;<c:out value="${pdiPrintValue.rejectReasonENLine1}" /></div></c:if>
	   </p>     
	   </td>
	</tr></table></td>
   </tr>

   <tr>
   <td colspan="14">
   		<table style="table-layout:fixed;width:100%;"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th></tr>
  		 <tr>
   		<td width="5%" align="justify">&nbsp;</td>
	    <td width="4%" align="justify" valign="top"></td>
     	<td colspan=15 valign=top  style='border-bottom: 1px solid black;'>
       <p class="STYLE1" style="text-align: justify;">
	   <c:out value="${pdiPrintValue.rejectReasonENLine2}" />&nbsp;
	   </p>     
	   </td>
	</tr></table></td>
   </tr>
   --%> 
   <tr>
   <td colspan="14" style="border:0;padding:0px">
   		<table style="float:right;width:95%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
   		<tr>
	   
	   <td colspan=14 style="border:0;padding:0px">
	   <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><c:if test="${empty pdiPrintValue.rejectReasonEN}">
	   <img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='unselected.PNG'/>"/>
	   </c:if><c:if test="${!empty pdiPrintValue.rejectReasonEN}">
	   <img style="border:0" alt="" width=15 height=15 src="<print:BlankFormPrint imageName='selected.PNG'/>"/>
	   </c:if>
	   
		<span class="STYLE1">Others:</span>
	   <span class="STYLE1">
			<c:if test="${empty pdiPrintValue.rejectReasonENLine2}"><c:out value="${pdiPrintValue.rejectReasonENLine1}" /></c:if>
			<c:if test="${!empty pdiPrintValue.rejectReasonENLine2}"><c:out value="${pdiPrintValue.rejectReasonENLine1}" /></c:if>
	   </span></p>   
	   </td></tr>
	</table></td>
	   <td style="display: none;"></td>
   </tr>
   

   <tr>
   <td colspan="14" style="border:0;padding:0px">
   		<table style="table-layout:fixed;width:100%;"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th></tr>
  		 <tr>
   		<td style="text-align:justify;width:5%;border:0;padding:0px">&nbsp;</td>
	    <td style="text-align:justify;vertical-align:top;width:4%;border:0;padding:0px"></td>
     	<td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;border:0;padding:0px'>
       <p style="text-align: justify; text-justify:inter-character;line-height: 20px"><span class="STYLE1">
	   <c:out value="${pdiPrintValue.rejectReasonENLine2}" />&nbsp;</span>
	   </p>     
	   </td>
	</tr></table></td>
	   <td style="display: none;"></td>
   </tr>
   <%-- Modified by Mickey Yip for ER-2022-011 END --%> 

   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	   <td style="display: none;"></td>
   </tr>
   
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
     <p style="text-indent: 2em; text-align: justify;line-height: 20px"><span class="STYLE1">Since you are not qualified for the application, your application for Private Driving Instructor’s Test (<c:if test="${pdiPrintValue.pdiGroup=='1'}">Group 1</c:if><c:if test="${pdiPrintValue.pdiGroup=='2'}">Group 2</c:if><c:if test="${pdiPrintValue.pdiGroup=='3'}">Group 3</c:if>) will not be further processed by this Department. If you disagree with the application result above, you may write to the Driving Services Section, Transport Department at 19 Pui Ching Road, Homantin, Kowloon within 7 calendar days from the issue date of this letter, with justifications, for a review.</span></p>
	 </td>
	   <td style="display: none;"></td>
	 </tr>
	 <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
		 <td style="display: none;"></td>
   </tr>
	 <tr>
	 <td colspan=14 style="border:0;padding:0px">
         <p style="text-indent: 2em; text-align: justify;"><span class="STYLE1">For enquiry, please contact this Department at <c:out value="${issuePrintingCtlValue.telNo1}"/> 
		 <c:if test="${!empty issuePrintingCtlValue.telNo2}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo2}"/></c:if>
		 <c:if test="${!empty issuePrintingCtlValue.telNo3}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo3}"/></c:if>
		 .</span></p></td>
		 <td style="display: none;"></td>
   </tr>
   <tr><td colspan=14 style="border:0;padding:0px">&nbsp;</td><td style="display: none;"></td></tr>
   <%-- <tr><td colspan=14>&nbsp;</td></tr>--%>
   <tr>
     <td style="width:43%;border:0;padding:0px">&nbsp;</td>
     
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p style="text-align:center"><span class="STYLE1">Yours faithfully,</span></p> </td>
   </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
	   <td style="display: none;"></td>
   </tr>
   <tr>
     <td style="width:43%;border:0;padding:0px">&nbsp;</td>
     
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'><span class="STYLE1">(<c:out value="${issuePrintingCtlValue.commissorNameEng}"/>)<sup>2</sup></span></p></td>
   </tr>
   <tr>
     <td style="width:43%;border:0;padding:0px">&nbsp;</td>
     
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'><span class="STYLE1">for Commissioner for Transport</span></p></td>
   </tr>
   
   
   
 </table></td>
  </tr>

    <tfoot >
  <tr style="vertical-align:bottom">
  <td  style="text-align:left;border:0">
  <table class="MsoTableGrid cellpadding-0" style='border-collapse:collapse;float:left;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
    
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p  style='text-align:left;text-decoration: underline;'>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>     </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:15pt'>
	   <span class="STYLE4">&nbsp;<sup> 2</sup>This is a computer-generated letter which requires no signature.</span>    </p></td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:8pt'>
	   <span class="STYLE4">&nbsp;  </span></p></td>
   </tr>
      
  </table>  </td></tr>
  </tfoot>
</table>
</div>
	

</body>
</html>
