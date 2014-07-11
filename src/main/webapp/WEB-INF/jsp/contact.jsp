<%@ include file="header.jsp" %>


<%@ page import="com.unlimitedrealm.domain.Contact" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="container main-container headerOffset">

    <!-- Main component call to action -->
  <c:if test="${success}">
    <div class="alert alert-success">Thank you for contacting us; we will get back to you soon.</div>
  </c:if>

    <div class="container">
        <div class="row">

            <div class=" col-lg-8">

                <div class="panel panel-default ">
                    <div class="panel-heading">
                        <h4 class="panel-title"> Get to know about us </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <form:form action="${baseUrl}/contacts.htm" method="post" modelAttribute="contact"
                                       class="form-horizontal" id="form">

                                <fieldset>


                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Name</label>

                                        <div class="col-md-4">
                                            <form:input path="name" type="text" class="form-control input-md"/>
                                        </div>
                                        <div class="col-md-4">
                                            <form:errors path="name" type="text" class="error"/>
                                        </div>
                                    </div>

                                    <!-- Password input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Email </label>

                                        <div class="col-md-4">
                                            <form:input path="email" type="text" class="form-control input-md"/>
                                        </div>
                                        <div class="col-md-4">
                                            <form:errors path="email" type="text" class="error"/>
                                        </div>
                                    </div>

                                    <!-- Search input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textinput">Phone </label>

                                        <div class="col-md-4">
                                            <form:input path="phone" type="text" class="form-control input-md"/>
                                        </div>
                                        <div class="col-md-4">
                                            <form:errors path="phone" type="text" class="error"/>
                                        </div>
                                    </div>


                                    <!-- Prepended text-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="selectbasic">Country </label>

                                        <div class="col-md-4">
                                            <form:select path="country" class="form-control" name="selectbasic">
                                                <%@ include file="country.jsp" %>
                                            </form:select>
                                        </div>
                                        <div class="col-md-4">
                                            <form:errors path="country" type="text" class="error"/>
                                        </div>
                                    </div>

                                    <!-- Textarea -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="textarea">Message</label>

                                        <div class="col-md-4">
                                            <form:textarea path="message" type="text" class="form-control"/>
                                        </div>
                                        <div class="col-md-4">
                                            <form:errors path="message" type="text" class="error"/>
                                        </div>
                                    </div>

                                    <!-- Button -->
                                    <div class="form-group">
                                        <div class="col-md-4">
                                            <button id="singlebutton" name="singlebutton" class="btn btn-primary"
                                                    onclick="document.getElementById('form').submit()">SEND
                                            </button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form:form>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>
<!-- /main container -->

<div class="gap"></div>
<%@ include file="footer.jsp" %>