<%@ include file="header.jsp" %>


<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Contact" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container main-container headerOffset"> 
  
  <!-- Main component call to action -->
  <div class="row">
    <div class="breadcrumbDiv col-lg-12">
      <ul class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li class="active">Form Elements </li>
      </ul>
    </div>
  </div>
   <div class="container">
  <div class="row">
 
      <div class=" col-lg-8">

        <div class="panel panel-default ">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse"  href="#collapse1" class="collapseWill"> Input <span class="pull-left"> <i class="fa fa-caret-right"></i></span> </a> </h4>
          </div>
          <div id="collapse1" class="panel-collapse collapse in">
            <div class="panel-body">
                  <form:form action="${baseUrl}/contacts.htm" method="post" modelAttribute="contact" class="form-horizontal"   id="form">


                  <fieldset>
                  

                  
                  <!-- Text input-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Name</label>
                    <div class="col-md-4">
                        <form:input path="name" type="text"  class="form-control input-md" />
                        </div>
                  </div>
                  
                  <!-- Password input-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Email </label>
                    <div class="col-md-4">
                        <form:input path="email" type="text"  class="form-control input-md" />
                        </div>
                  </div>
                  
                  <!-- Search input-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Phone </label>
                    <div class="col-md-4">
                        <form:input path="phone" type="text"  class="form-control input-md" />
                    </div>
                  </div>
                  
                  <!-- Prepended text-->
                  <div class="form-group">
                    <label class="col-md-4 control-label"  for="selectbasic">Country </label>
                    <div class="col-md-4">
                        <form:select path="country" class="form-control">
                            <%@ include file="country.jsp" %>
                        </form:select>
                    </div>
                  </div>

                  <!-- Textarea -->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="textarea">Message</label>
                    <div class="col-md-4">
                        <form:textarea path="message" type="text"  class="form-control" />
                    </div>
                  </div>

                      <!-- Button -->
                      <div class="form-group">
                          <div class="col-md-4">
                              <button id="singlebutton" name="singlebutton" class="btn btn-primary">SUBMIT</button>
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

<div class="gap"> </div>
<%@ include file="footer.jsp" %>