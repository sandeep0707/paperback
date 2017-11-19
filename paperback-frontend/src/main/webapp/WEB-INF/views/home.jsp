
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
			
			<a href="${contextRoot}/${catagory.id}" class="list-group-item">${catagory.name}</a> 
			</c:forEach>
				
					
			</div>
			</div>
			</div>
						<h3 class="my-4">Publish a book</h3><br>
						<span
							class="input-group-btn">
							<button class="btn btn-secondary" type="button">commit and push</button>
						</span>
			
		</div>

		<!-- /.col-lg-3 -->

		<div class="col-lg-9">

			<div id="carouselExampleIndicators" class="carousel slide my-4"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>


				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img class="d-block img-fluid" src="${images}/slide1.jpg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="${images}/slide2.jpg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="${images}/slide3.jpg"
							alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="${images}/slide4.jpg"
							alt="fourth slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="${images}/slide5.jpg"
							alt="fourth slide">
					</div>
					<div class="carousel-item">
						<img class="d-block img-fluid" src="${images}/slide6.png"
							alt="fourth slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
            <font face="Sonsie One"><h3>popular books</h3></font>
            <div class="row">
           <c:forEach items="${products}" var="product">
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="#"><img class="card-img-top"
							src="http://images.springer.com/sgw/books/medium/978-1-4842-0269-2.jpg" alt="">
						<div class="card-body">
							<h4 class="card-title">
								${product.name}</a>
							</h4>
							<h5>&#x20b9; ${product.unitPrice}</h5>
							<p class="card-text">${product.description}</p>
							<strong>author: <a href="#" >${product.author}</a></strong>
						</div>
						<div class="card-footer">
							<div class="text-muted">&#9733; &#9733; &#9733; &#9733;
								&#9734;</div> &#128065;
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