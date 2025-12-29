<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
    <head>
        <title>Welcome Page</title>
    </head>
    <body>
        <div>Welcome ${name}</div>
        <hr>
        <h1>Your todos: </h1>
        <table>
            <thead>
                <tr>
                    <th>id</th>
                    <th>Description</th>
                    <th>target Date</th>
                    <th>Is Done?</th>
                </tr>
            </thead>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.done}</td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>