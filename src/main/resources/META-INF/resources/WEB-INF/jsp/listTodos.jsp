<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
  <head>
    <title>List Todos Page</title>
    <link
      href="webjars/bootstrap/5.3.3/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container">
      <h1>Your todos:</h1>
      <table class="table">
        <thead>
          <tr>
            <th>Description</th>
            <th>target Date</th>
            <th>Is Done?</th>
            <th></th>
            <th></th>
          </tr>
        </thead>
        <c:forEach items="${todos}" var="todo">
          <tr>
            <td>${todo.description}</td>
            <td>${todo.targetDate}</td>
            <td>${todo.done}</td>
            <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
            <td><a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
          </tr>
        </c:forEach>
      </table>
      <a href="add-todo" class="btn btn-success">Add Todo</a>
    </div>
    <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
  </body>
</html>
