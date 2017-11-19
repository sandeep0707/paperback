


 <!-- Page Content -->
 
    <div class="container">
>              
  <ol class="breadcrumb">
    <li><a href="${contextRoot}/home">Home/</a></li>
    <li><a href="${contextRoot}/${catagory.id}">${catagory.name}/</a></li>
    <li class="active">Books</li>  
          
  </ol>
      <!-- Page Heading -->
      <h1 class="my-4">${catagory.name}<br></h1>
      <h5>  <small>${catagory.description }</small></h5> 
     
         <hr>
<div class="row">
  <div class="col-xs-10 col-sm-8">
          <!-- Preview Image -->
          <img class="img-fluid rounded" src="${catagory.imageURL }" alt="">
          
</div>
  <div class="clearfix visible-xs-block"></div>
  <div class="col-xs-6 col-sm-4"> <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>
          <!-- popular books -->
           <div class="card my-4">
            <h5 class="card-header">suggestions</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Web Design</a>
                    </li>
                    <li>
                      <a href="#">HTML</a>
                    </li>
                   
                  </ul>
                </div>
                 <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Web Design</a>
                    </li>
                    <li>
                      <a href="#">HTML</a>
                    </li>
                   
                  </ul>
                </div>
                
              </div>
            </div>
          </div>
          
          
          </div>
          
</div>
          <hr>
          
          <h4><strong>${catagory.name}</strong> books</h4>

      <!-- row -->
       <div class="row">
           
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://images.springer.com/sgw/books/medium/978-1-4842-0269-2.jpg" alt="">
						<div class="card-body">
							<h4 class="card-title">
								</a>
							</h4>
							<h5>&#x20b9; </h5>
							<p class="card-text"></p>
							<strong>author: <a href="#" ></a></strong>
						</div>
						<div class="card-footer">
							<div class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</div> &#128065;
						</div>
					</div>
				</div>
			
			
			</div>

      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

    </div>
    <!-- /.container -->
   
    