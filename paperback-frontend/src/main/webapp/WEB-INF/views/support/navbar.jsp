<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>	
	<script>
		window.userRole = '${userModel.role}';
	</script>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <div class="navbar-header">
          
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button> 
                
                <a class="navbar-brand" href="${contextRoot}/home">paperback</a><img  alt="" src="${images}/logo.jpg" width="37px">
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               
			    
			    <ul class="nav navbar-nav navbar-right">
			    
			    <li>
			    <form class="navbar-form navbar-right">
      <div class="form-group">
        <input type="search" class="form-control" placeholder="Search">
        
      </div>
      </form>
      </li>
			     <li id="about">
                        <a href="${contextRoot}/about">About</a>
                    </li>
                     <li id="contact">
                        <a href="${contextRoot}/contact">Contact</a>
                    </li>
                    <security:authorize access="isAnonymous()">
			      <li id="login">
                        <a href="${contextRoot}/join/login">login</a>
                    </li>
                    <li id="">
                        <a href="${contextRoot}/join/register">new user?</a>
                    </li>
                  </security:authorize>
                  
                  <security:authorize access="isAuthenticated()">
						<li class="dropdown" id="userModel">
						  <a class="btn btn-default dropdown-toggle" href="javascript:void(0)" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    ${userModel.fullName}
						    <span class="caret"></span>
						  </a>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
		                    
		                    <li>
		                    <a href="${contextRoot}/profile">profile</a>
		                    </li>
		                     <li>
		                    <a href="${contextRoot}/profile">settings</a>
		                    </li>
							<li id="logout">
		                        <a href="${contextRoot}/logout">Logout</a>
		                    </li>
		                     
		                                        			    	
						  </ul>		
						</li>    
						</security:authorize>	
			    </ul>                
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

