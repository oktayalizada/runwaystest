<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>

<html class="no-js">
<head>

    <meta charset="UTF-8">
    <title>Runways</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
    <link href="//cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.min.css"/>" rel="stylesheet">
</head>
<body class="  ">
<div class="bg-dark dk" id="wrap">
    <div id="top">

        <!-- .navbar -->

        <header class="head">

            <div class="main-bar">
                <h3>
                    <i class="fa fa-pencil"></i>&nbsp;Main Page</h3>
            </div><!-- /.main-bar -->
        </header><!-- /.head -->
    </div><!-- /#top -->
    <div id="left">
        <div class="media user-media bg-dark dker">
            <div class="user-media-toggleHover">
                <span class="fa fa-user"></span>
            </div>

        </div>
        <ul id="menu" class="bg-blue dker">
            <li class="nav-header">Menu</li>
            <li class="nav-divider"></li>


            <li class="">
                <c:url value="/index" var="url"/>
                <a class="portfolio-box" href="<c:out value='${url}'/>">
                    <i class="fa fa-dashboard"></i><span class="link-title">&nbsp;Main Page</span>
                </a>
            </li>


            <li class="">
                <c:url value="/query" var="url"/>
                <a class="portfolio-box" href="<c:out value='${url}'/>">
                    <i class="fa fa-dashboard"></i><span class="link-title">&nbsp;Query</span>
                </a>
            </li>

            <li class="">
                <c:url value="/report" var="url"/>
                <a class="portfolio-box" href="<c:out value='${url}'/>">
                    <i class="fa fa-dashboard"></i><span class="link-title">&nbsp;Reports</span>
                </a>
            </li>

        </ul><!-- /#menu -->



    </div><!-- /#left -->
    <div id="content">
        <div class="outer" style="height:5000px">
            <div class="inner bg-light lter">

                <!--BEGIN INPUT TEXT FIELDS-->
                <div class="row">
                    <div class="col-lg-10">
                        <div class="box dark">
                            <header>
                                <div class="icons">
                                    <i class="fa fa-edit"></i>
                                </div>
                                <h5>Choose Type of Operation</h5>
                            </header>
                            <div id="div-1" class="body">
                                <p>

                                    <a target="_blank" href="/query">
                                        <img src="<c:url value='/resources/img/query.png'/>"
                                             width="200px" height="200px" style="border:1px solid #021a40">
                                    </a>
                                    <a target="_blank" href="/report">

                                        <img src="<c:url value='/resources/img/report.png'/>"
                                             width="200px" height="200px" style="border:1px solid #021a40">
                                    </a>
                                </p>
                                <input type="hidden"
                                       name="${_csrf.parameterName}"
                                       value="${_csrf.token}"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<script src="<c:url value="/resources/js/media/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/media/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/resources/js/media/dataTables.tableTools.js"/>"></script>
<script src="<c:url value="/resources/js/media/dataTables.bootstrap.js"/>"></script>


<script src="//cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
<script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.flash.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>

<script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
<script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>

<script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.print.min.js"></script>

<script>

</script>
<script>
    $(document).ready(function () {
        var table = $('#example').DataTable({
            dom: 'lBfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ],
            "order": []
        });


    });
</script>
</body>
</html>