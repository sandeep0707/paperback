
<div class="container">

	<div class="row">

		<div class="col-lg-3">
       <div class="card my-4">
				<h5 class="card-header">Search</h5>
				<div class="card-body">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button class="btn btn-secondary" type="button">Go!</button>
						</span>
					</div>
				</div>
			</div>
			
			
			<h3 class="my-4">catagories</h3>
			<div style="height: 100px; width: 200px; background: ">
               <div id="c1" style="overflow: auto; max-height: 100px; background:">
			<div class="list-group">
			<c:forEach items="${catagories}" var="catagory">
			
			<a href="${contextRoot}/${catagory.id}/catagory" class="list-group-item">${catagory.name}</a> 
			</c:forEach>
				
					
			</div>
			</div>
			</div>
						<h3 class="my-4">Publish a book</h3><br>
						<span
							class="input-group-btn">
						<a href="${contextRoot}/push/book">	<button class="btn btn-secondary" type="button">commit and push</button>
						</a>
						</span>
			
		</div>

		<!-- /.col-lg-3 -->

		<div class="col-lg-9">

			<div class="row carousel-holder">

				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							<li data-target="#carousel-example-generic" data-slide-to="4"></li>
							<li data-target="#carousel-example-generic" data-slide-to="5"></li>
							
							
							
						</ol>
						<div class="carousel-inner">
							
							<div class="item active">
								<img class="slide-image" src="${images}/slide1.jpg"
									alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/slide2.jpg"
									alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/slide3.jpg"
									alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/slide4.jpg"
									alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/slide5.jpg"
									alt="">
							</div><div class="item">
								<img class="slide-image" src="${images}/slide6.png"
									alt="">
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>

			</div>            <font face="Sonsie One"><h3>popular books</h3></font>
            <div class="row">
           <c:forEach items="${products}" var="product">
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="${contextRoot}/${product.code}/${product.id}/view"><img class="card-img-top"
							src="http://images.springer.com/sgw/books/medium/978-1-4842-0269-2.jpg" alt="">
						<div class="card-body">
							<h4 class="card-title">
								${product.name} </a>
							</h4>
							<h5>&#x20b9; ${product.unitPrice}</h5>
							<p class="card-text">${product.description}</p>
							<strong>author: <a href="#" >${product.author}</a></strong>
						</div>
						<div class="card-footer">
							<div class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</div> &#128065;  ${product.views}
						</div>
					</div>
				</div>
			
			</c:forEach>
			

			</div>
			<!-- /.row -->

		</div>
		<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->

</div>
<!-- /.container -->