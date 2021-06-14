<%@page import="_04_bean.TesterBean"%>
<%@page import="_04_bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanPro</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		// 1) getParameter를 사용하는 방법
		String pdCd   = request.getParameter("pdCd");
		String pdNm   = request.getParameter("pdNm");
		String deptCd = request.getParameter("deptCd");
		String deptNm = request.getParameter("deptNm");
		String mgrNm  = request.getParameter("mgrNm");
		
		ProductBean bean1 = new ProductBean();
		bean1.setPdCd(pdCd);
		bean1.setPdNm(pdNm);
		bean1.setDeptCd(deptCd);
		bean1.setDeptNm(deptNm);
		bean1.setMgrNm(mgrNm);
	%>
	
	<!-- 2) Bean을 사용하는 방법 1 -->
	<jsp:useBean id="bean2" class="_04_bean.ProductBean">
		<jsp:setProperty name="bean2" property="pdCd" value="${param.pdCd}"/> <!-- name 그룹 / property 변수명 / value 값    *끝에 /꼭 적기! -->
		<jsp:setProperty name="bean2" property="pdNm" value="${param.pdNm}"/>
		<jsp:setProperty name="bean2" property="deptCd" value="${param.deptCd}"/>
		<jsp:setProperty name="bean2" property="deptNm" value="${param.deptNm}"/>
		<jsp:setProperty name="bean2" property="mgrNm" value="${param.mgrNm}"/>
	</jsp:useBean>
	
	
	<!-- 3) Bean을 사용하는 방법 2 *-->
	<jsp:useBean id="bean3" class="_04_bean.ProductBean">
		<jsp:setProperty name="bean3" property="*"/>
	</jsp:useBean>
	
	<!-- 간단한 테스트1 -->
	bean1: <%=bean1.getPdNm() %> <br>
	bean2: <%=bean2.getPdNm() %> , <jsp:getProperty property="pdNm" name="bean2"/> <br>
	bean2: <%=bean3.getPdNm() %> , <jsp:getProperty property="pdNm" name="bean3"/> <br>
	
	<!-- 간단한 테스트2 -->
	<%
		TesterBean obj = new TesterBean();
		obj.showData(bean1);
		obj.showData(bean2);
		obj.showData(bean3);
	%>
</body>
</html>