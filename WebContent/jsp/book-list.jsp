<%@include file="parts/header.jsp"%>

<div>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
		<a class="navbar-brand" href="#"><img src="img/library.png"
			width="50" height="50" alt="logo" /> </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Add
						Librarian</a></li>
				<li class="nav-item"><a class="nav-link" href="#">View
						Librarian</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
			</ul>
		</div>
	</nav>
</div>
<table class="table table-striped container">
	<thead>
		<tr>
			<th scope="col">#</th>
			<th scope="col">Title</th>
			<th scope="col">Author</th>
			<th scope="col">Action</th>
		</tr>
	</thead>
	<c:forEach items="${books}" var="book">
		<tbody>

			<tr>
				<th scope="row">"${book.getId()}"</th>
				<td>"${book.getTitle()}"</td>
				<td>"${book.getAuthor()}"</td>
				<td><a href="./UpdateBook?id=${book.getId()}">Edit</a> <a
					href="./DeleteBook?id=${book.getId()}">Delete</a></td>
			</tr>



		</tbody>
	</c:forEach>

</table>
<%@include file="parts/footer.jsp"%>
