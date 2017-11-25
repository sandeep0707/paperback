<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>paperback/${title}</title>
   <link rel="icon" href="${images}/logo.jpg">

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
	
</script>
 <style>
       article {
    margin-left: 170px;
    padding: 1em;
    
}
       </style>
</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <a class="navbar-brand" href="${contextRoot}/home">paperback</a>
	            </div>
	           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li id="about">
                        <a href="${contextRoot}/about">About</a>
                    </li>

                    <li id="contact">
                        <a href="${contextRoot}/contact">Contact</a>
                    </li>
                  
                    <li id="listProducts">
                    
                        <a href="${contextRoot}/join/login">login</a>
                    </li>
					
                </ul>
			    
			    <ul class="nav navbar-nav navbar-right">
			    
			    </ul>                
                
            </div>
			</div>
		</nav>		
             
		<!-- Page Content -->

	
    	<div class="col-sm-8">
      
      
        <article>
	<!-- form area -->
	 <sf:form modelAttribute="user" method="post"  action="${contextRoot}/join/user " >
	 
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-10">
                    <h1 class="page-header">new user ? Register here </h1>
                     <c:if test="${not empty message}">	
		<div class="row">			
			<div class="col-xs-12 col-md-offset-2 col-md-8">			
				<div class="alert alert-warning fade in">${message} </div>				
			</div>
		</div>
	</c:if>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Enter your  details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>first name</label>
                                            <sf:input type="text" path="firstName" class="form-control"
									placeholder="first name" />
			                     <sf:errors path="firstName" cssClass="help-block" element="em"/> 

                                           
                                        </div>
                                        <div class="form-group">
                                            <label>email address</label>
                                            <sf:input type="email" path="email" class="form-control"
									placeholder="abc@def.com"/>
                                   <sf:errors path="email" cssClass="help-block" element="em"/> 
                                           
                                        </div><div class="form-group">
                                            <label>password</label>
                                            <sf:input type="password" path="password" class="form-control"
									placeholder="xxxxxx"  />
                                 <sf:errors path="password" cssClass="help-block" element="em"/> 
                                           
                                        </div>
                             
                            </div>
                             <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>last name</label>
                                            <sf:input type="text" path="lastName" class="form-control"
									placeholder="last name" />
                              <sf:errors path="lastName" cssClass="help-block" element="em"/> 
                                           
                                        </div>
                                        <div class="form-group">
                                            <label>contact number</label>
                                            <sf:input type="number" path="contactNumber" class="form-control"
									placeholder="123456-----" />
                                  <sf:errors path="contactNumber" cssClass="help-block" element="em"/> 
                                           
                                        </div><div class="form-group">
                                            <label>conform password</label>
                                            <input type="text" path="name" class="form-control"
									placeholder="conform your password"  >
                                           
                                        </div>
                             
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        
                         <button type="submit" class="btn btn-primary"> join </button>
                         
                                        <button type="reset" class="btn btn-danger">Reset </button>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        </sf:form>
        </article>
        <!-- /form area  -->
    
        <!-- /#page-wrapper -->
    	
    	
    	</div>
    	</div>
   
        
          <c:if test="${empty error}">
		<!-- Footer comes here -->
		<%@include file="./support/footer.jsp"%>
           </c:if>
		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<script src="${js}/jquery.validate.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>

	

</body>

