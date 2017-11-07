<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<meta charset="UTF-8">
<title>ゴールデン街マップ</title>
	<!-- Bootstrapのcss読み込み -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
		<!-- original.css読み込み -->
	<link href="${pageContext.request.contextPath}/css/original.css" rel="stylesheet">
	<!-- jQuery読込みがBootstrapよりも後にあると、時々正しく動作しない時があるらしい。 -->
	 <!-- jQuery読み込み -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 <!-- BootstrapのJS読み込み -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>