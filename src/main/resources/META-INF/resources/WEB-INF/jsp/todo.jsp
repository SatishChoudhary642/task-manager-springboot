<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">
  <h1>Enter Todo Details</h1>

  <form:form method="post" modelAttribute="todo">
    <fieldset class="mb-3">
      <label>Description</label>
      <form:input type="text" path="description" required="required" class="form-control" />
      <form:errors path="description" cssClass="text-warning" />
    </fieldset>

    <fieldset class="mb-3">
      <label>Target Date</label>
      <form:input type="text" path="targetDate" required="required" class="form-control" />
      <form:errors path="targetDate" cssClass="text-warning" />
    </fieldset>

    <form:input type="hidden" path="id" />
    <form:input type="hidden" path="done" />

    <input type="submit" class="btn btn-success" />
  </form:form>
</div>

<%@ include file="common/footer.jspf" %>

<script type="text/javascript">
  $(document).ready(function() { // Ensure document is ready
      $('#targetDate').datepicker({
          format: 'yyyy-mm-dd',
          startDate: '-3d'
      });
  });
</script>