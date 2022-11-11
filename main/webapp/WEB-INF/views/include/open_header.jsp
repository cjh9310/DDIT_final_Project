<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<%-- <c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="memberList" value="${memberMap.memberList }" />
<c:set var="boardList" value="${boardMap.boardList }" />
<c:set var="noticeList" value="${noticeMap.noticeList }" />
<c:set var="pdsList" value="${pdsMap.pdsList }" /> --%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>
            Log4Job - 대전광역시 취업정보시스템
        </title>
        <meta name="description" content="Basic Tables">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
        <!-- Call App Mode on ios devices -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Remove Tap Highlight on Windows Phone IE -->
        <meta name="msapplication-tap-highlight" content="no">
        <!-- base css -->
        <link id="vendorsbundle" rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/vendors.bundle.css">
        <link id="appbundle" rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/app.bundle.css">
        <link id="mytheme" rel="stylesheet" media="screen, print" href="#">
        <link id="myskin" rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/skins/skin-master.css">
        <!-- Place favicon.ico in the root directory -->
        <link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath()%>/resources/template/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath()%>/resources/template/img/favicon/favicon-32x32.png">
        <link rel="mask-icon" href="<%=request.getContextPath()%>/resources/template/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/miscellaneous/reactions/reactions.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/miscellaneous/fullcalendar/fullcalendar.bundle.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/miscellaneous/jqvmap/jqvmap.bundle.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/datagrid/datatables/datatables.bundle.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/formplugins/cropperjs/cropper.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/fa-solid.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/fa-brands.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/theme-demo.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/statistics/chartjs/chartjs.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/notifications/sweetalert2/sweetalert2.bundle.css">
        <link rel="stylesheet" media="screen, print" href="<%=request.getContextPath()%>/resources/template/css/formplugins/select2/select2.bundle.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/daejeon/css/main.css"/>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/daejeon/css/main_respond.css"/>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
	<decorator:head />   
    </head>
    <!-- BEGIN Body -->
    <body class="mod-bg-1 mod-nav-link" style=”overflow-x:auto;overflow-y:hidden”>
    	<script>
            /**
             *	This script should be placed right after the body tag for fast execution 
             *	Note: the script is written in pure javascript and does not depend on thirdparty library
             **/
            'use strict';

            var classHolder = document.getElementsByTagName("BODY")[0],
                /** 
                 * Load from localstorage
                 **/
                themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
                {},
                themeURL = themeSettings.themeURL || '',
                themeOptions = themeSettings.themeOptions || '';
            /** 
             * Load theme options
             **/
            if (themeSettings.themeOptions)
            {
                classHolder.className = themeSettings.themeOptions;
                console.log("%c✔ Theme settings loaded", "color: #148f32");
            }
            else
            {
                console.log("%c✔ Heads up! Theme settings is empty or does not exist, loading default settings...", "color: #ed1c24");
            }
            if (themeSettings.themeURL && !document.getElementById('mytheme'))
            {
                var cssfile = document.createElement('link');
                cssfile.id = 'mytheme';
                cssfile.rel = 'stylesheet';
                cssfile.href = themeURL;
                document.getElementsByTagName('head')[0].appendChild(cssfile);

            }
            else if (themeSettings.themeURL && document.getElementById('mytheme'))
            {
                document.getElementById('mytheme').href = themeSettings.themeURL;
            }
            /** 
             * Save to localstorage 
             **/
            var saveSettings = function()
            {
                themeSettings.themeOptions = String(classHolder.className).split(/[^\w-]+/).filter(function(item)
                {
                    return /^(nav|header|footer|mod|display)-/i.test(item);
                }).join(' ');
                if (document.getElementById('mytheme'))
                {
                    themeSettings.themeURL = document.getElementById('mytheme').getAttribute("href");
                };
                localStorage.setItem('themeSettings', JSON.stringify(themeSettings));
            }
            /** 
             * Reset settings
             **/
            var resetSettings = function()
            {
                localStorage.setItem("themeSettings", "");
            }

        </script>



