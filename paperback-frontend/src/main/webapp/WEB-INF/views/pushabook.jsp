<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
       <style>
       article {
    margin-left: 170px;
    padding: 1em;
    
}
       </style>
        <article>
        <c:if test="${not empty message}">	
		<div class="row">			
			<div class="col-xs-12 col-md-offset-2 col-md-8">			
				<div class="alert alert-info fade in">${message}</div>				
			</div>
		</div>
	</c:if>
	 <sf:form  modelAttribute="product"   action="${contextRoot}/push/ " method="POST" >
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-8">
                    <h1 class="page-header">Push a Book</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Enter your book details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>Title of the book</label>
                                            <sf:input type="text" path="name" class="form-control"
									placeholder="book title"  />
                                           
                                        </div>
                                        <div class="form-group">
                                            <label>Author of the book</label>
                                       <sf:input type="text" path="author" class="form-control"
									placeholder="Name of the author"  /> </div>
                                        <div class="form-group">
                                            <label>published by</label>
                                            <p class="form-control-static">xyz</p>
                                        </div>
                                        <div class="form-group">
                                            <label>Text area</label>
                                            <sf:textarea class="form-control" placeholder="say something about the book..."  path="description" rows="3"/>
                                        </div>
                                        <div class="form-group">
                                            <label>choose book cover</label>
                                            <input type="file" path="imageUrl"  name="imageURL">
                                        </div>
                                        <div class="form-group">
                                            <label>choose file</label>
                                            <input type="file" path=""  name="imageURL">
                                        </div>
                                       
                                        <div class="form-group">
                                            <label>i would like to</label>
                                            <select class="form-control">
                                                <option>donate</option>
                                                <option>sell</option>
            
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Book catagory</label>
                                            <sf:select class="form-control" path="catagoryId"      
                                              items="${catagories}"
                                               itemLabel="name"
                                               itemValue="id"
                                            
                                            />
                                               
                                        </div>
                                       
                                    
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1> supplementary</h1>
                                    <div role="form">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="enter tages">
                                        </div>
                                        <div class="form-group input-group">
                                            <sf:input type="text" path="unitPrice" class="form-control" placeholder="enter price"/>
                                            <span class="input-group-addon">.00</span>
                                        </div>
                                       
                                        
                                        <div class="form-group input-group">
                                            <input type="text" class="form-control" placeholder="enter a line about the book">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-user"></i>
                                                </button>
                                            </span>
                                        </div>
                                        <h1>Enter your card details</h1>
                                        </div>
                                    <div role="form">
                                        <fieldset disabled>
                                            <div class="form-group">
                                                <label for="disabledSelect">enter card number</label>
                                                <input class="form-control" id="disabledInput" type="text" placeholder="card number" disabled>
                                            </div>
                                            <div class="form-group">
                                                <label for="disabledSelect">Enter name on the card</label>
                                                <select id="disabledSelect" class="form-control">
                                                    <option>name on the card</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="disabledSelect">cvv</label>
                                                <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">i agree with terms&conditions
                                                </label>
                                            </div>
                                            <button type="submit" class="btn btn-primary">submit</button>
                                        </fieldset>
                                    </div>
                           
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                             <!-- hidden fields -->
                             <sf:hidden path="id"/>
                             <sf:hidden path="code"/>
                             <sf:hidden path="publisherId"/>
                              <sf:hidden path="views"/>
                              <sf:hidden path="active"/>
                              <sf:hidden path="purchases"/>
                             
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                         <button type="submit" class="btn btn-primary">commit</button>
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
        <!-- /#page-wrapper -->