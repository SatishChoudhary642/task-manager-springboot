<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
  <head>
    <title>Add/Update Todo</title>
    <link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" />
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet" />
  </head>
  <body>
    <div class="container">
      <h1>Enter Todo Details</h1>
      
      <form:form method="post" modelAttribute="todo">
        
        <fieldset class="mb-3">
            <label>Description</label>
            <form:input type="text" path="description" required="required" class="form-control"/>
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>

        <fieldset class="mb-3">
            <label>Target Date</label>
            <form:input type="text" path="targetDate" required="required" class="form-control is-date"/>
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>

        <form:input type="hidden" path="id"/>
        <form:input type="hidden" path="done"/>
        
        <input type="submit" class="btn btn-success"/>
      </form:form>
    </div>

    <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
    <script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    
    <script type="text/javascript">
        $('#targetDate').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            todayHighlight: true
        });
    </script>
  </body>
</html>