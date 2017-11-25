<div class="container">
  <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button-primary" data-toggle="dropdown">categories
    <span class="caret"></span></button>
    <ul class="dropdown-menu dropdown-menu-right">
    <c:forEach items="${catagories}" var="catagory">
			
		<li>	<a href="${contextRoot}/${catagory.id}/catagory" >${catagory.name}</a> </li>
			</c:forEach>
      <li class="divider"></li>
      <li><a href="#">more</a></li>
    </ul>
  </div>
</div>