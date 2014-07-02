<%@ include file="header.jsp" %>

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
              <form class="form-horizontal">
                <fieldset>
                  
                  <!-- Form Name -->
                  <legend>Inputform</legend>
                  
                  <!-- Text input-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">Text Input</label>
                    <div class="col-md-4">
                      <input id="textinput" name="textinput" placeholder="placeholder" class="form-control input-md" type="text">
                      <span class="help-block">help</span> </div>
                  </div>
                  
                  <!-- Password input-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="passwordinput">Password Input</label>
                    <div class="col-md-4">
                      <input id="passwordinput" name="passwordinput" placeholder="placeholder" class="form-control input-md" type="password">
                      <span class="help-block">help</span> </div>
                  </div>
                  
                  <!-- Search input-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="searchinput">Search Input</label>
                    <div class="col-md-4">
                      <input id="searchinput" name="searchinput" placeholder="placeholder" class="form-control input-md" type="search">
                      <p class="help-block">help text</p>
                    </div>
                  </div>
                  
                  <!-- Prepended text-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="prependedtext">Prepended Text</label>
                    <div class="col-md-4">
                      <div class="input-group"> <span class="input-group-addon">prepend</span>
                        <input id="prependedtext" name="prependedtext" class="form-control" placeholder="placeholder" type="text">
                      </div>
                      <p class="help-block">help text</p>
                    </div>
                  </div>
                  
                  <!-- Appended Input-->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="appendedtext">Appended Text</label>
                    <div class="col-md-4">
                      <div class="input-group">
                        <input id="appendedtext" name="appendedtext" class="form-control" placeholder="placeholder" type="text">
                        <span class="input-group-addon">append</span> </div>
                      <p class="help-block">help text</p>
                    </div>
                  </div>
                  <!-- Prepended checkbox -->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="prependedcheckbox">Prepended Checkbox</label>
                    <div class="col-md-4">
                      <div class="input-group"> <span class="input-group-addon">
                        <input type="checkbox">
                        </span>
                        <input id="prependedcheckbox" name="prependedcheckbox" class="form-control" placeholder="placeholder" type="text">
                      </div>
                      <p class="help-block">help text</p>
                    </div>
                  </div>
                  
                  <!-- Appended checkbox -->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="appendedcheckbox">Appended Checkbox</label>
                    <div class="col-md-4">
                      <div class="input-group">
                        <input id="appendedcheckbox" name="appendedcheckbox" class="form-control" placeholder="placeholder" type="text">
                        <span class="input-group-addon">
                        <input type="checkbox">
                        </span> </div>
                      <p class="help-block">help text</p>
                    </div>
                  </div>
                  
                  <!-- Button Drop Down -->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="buttondropdown">Button Drop Down</label>
                    <div class="col-md-4">
                      <div class="input-group">
                        <input id="buttondropdown" name="buttondropdown" class="form-control" placeholder="placeholder" type="text">
                        <div class="input-group-btn">
                          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> Action <span class="caret"></span> </button>
                          <ul class="dropdown-menu pull-right">
                            <li><a href="#">Option one</a></li>
                            <li><a href="#">Option two</a></li>
                            <li><a href="#">Option three</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Textarea -->
                  <div class="form-group">
                    <label class="col-md-4 control-label" for="textarea">Text Area</label>
                    <div class="col-md-4">
                      <textarea class="form-control" id="textarea" name="textarea">default text</textarea>
                    </div>
                  </div>
                </fieldset>
              </form>
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