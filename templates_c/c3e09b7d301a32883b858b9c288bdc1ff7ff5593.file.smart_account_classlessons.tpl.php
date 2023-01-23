<?php /* Smarty version Smarty-3.1.21-dev, created on 2016-06-09 15:40:26
         compiled from ".\templates\smart_account_classlessons.tpl" */ ?>
<?php /*%%SmartyHeaderCode:164005759ef2339e712-54287435%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c3e09b7d301a32883b858b9c288bdc1ff7ff5593' => 
    array (
      0 => '.\\templates\\smart_account_classlessons.tpl',
      1 => 1465512011,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '164005759ef2339e712-54287435',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5759ef23588b63_49119438',
  'variables' => 
  array (
    'UserName' => 0,
    'year_values' => 0,
    'year_selected' => 0,
    'year_output' => 0,
    'term_values' => 0,
    'term_selected' => 0,
    'term_output' => 0,
    'school_values' => 0,
    'school_selected' => 0,
    'school_output' => 0,
    'NumberOfClasses' => 0,
    'NumberOfActiveLessons' => 0,
    'NumberOfParents' => 0,
    'NumberOfStudents' => 0,
    'NumberOfSchools' => 0,
    'NumberOfEvents' => 0,
    'myDatagridTable' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5759ef23588b63_49119438')) {function content_5759ef23588b63_49119438($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:\\web\\mylearni\\libs\\plugins\\function.html_options.php';
?><?php  $_config = new Smarty_Internal_Config("test.conf", $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("setup", 'local'); ?>

<?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('title'=>'Innovakids'), 0);?>




<div id="wrapper">
   
  <div class="content">

 
    <div class="container">
        
        <div class="row">
                   
            
          <div class="col-md-3 col-sm-6">
   
              
            <div class="portlet">
                <h4 class="portlet-title">
                    <u>Class Lesson Manager</u>
                </h4> 
                
              <!-- Info Panel  -->
              <h4 class="portlet-title">
                  
                    <label for="UserName"  id="UserName" style="font-size:12px;color:black;font-weight:normal">User: <?php echo $_smarty_tpl->tpl_vars['UserName']->value;?>
</label>                     <br />
                    
                    <label for="Year" id="Year"  style="font-size:12px;color:black;font-weight:normal">School Year:</label><br />
                    <select id="class-classlevel-select" name="class-classlevel-select" class="class-classlevel form-control parsley-validated" data-required="true"  onchange="javascript:YearChangeEvent(this);">
                          <?php echo smarty_function_html_options(array('values'=>$_smarty_tpl->tpl_vars['year_values']->value,'selected'=>$_smarty_tpl->tpl_vars['year_selected']->value,'output'=>$_smarty_tpl->tpl_vars['year_output']->value),$_smarty_tpl);?>

                    </select>
                  <br />
                   <label for="Term" id="Term"  style="font-size:12px;color:black;font-weight:normal">Term:</label><br />
                    <select name=Term Width="200" class="class-teacher form-control parsley-validated" data-required="true"  onchange="javascript:TermChangeEvent(this);">
                          <?php echo smarty_function_html_options(array('values'=>$_smarty_tpl->tpl_vars['term_values']->value,'selected'=>$_smarty_tpl->tpl_vars['term_selected']->value,'output'=>$_smarty_tpl->tpl_vars['term_output']->value),$_smarty_tpl);?>

                    </select>
                  <br />
                  <label for="School" id="School" style="font-size:12px;color:black;font-weight:normal">Select School:</label><br />
                    <select name=School  Width="200"  name="class-teacher-select" class="class-teacher form-control parsley-validated" data-required="true" onchange="javascript:SchoolNoChangeEvent(this);">
                          <?php echo smarty_function_html_options(array('values'=>$_smarty_tpl->tpl_vars['school_values']->value,'selected'=>$_smarty_tpl->tpl_vars['school_selected']->value,'output'=>$_smarty_tpl->tpl_vars['school_output']->value),$_smarty_tpl);?>

                    </select>
              
              </h4> 
                        
             
              <div class="list-group">  
               
              <a href="smart_admin_classes.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Classes
              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfClasses']->value;?>
</span>
              </a>
               <a href="account-classevents.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Class Events
              <i class="fa fa-chevron-right list-group-chevron"></i>
              </a>      
              
              <a href="smart_account_activelessons.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Active Lessons

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfActiveLessons']->value;?>
</span>
            </a> 
               
              <a href="smart_admin_parents.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Active Parents

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfParents']->value;?>
</span>
            </a> 
             
              <a href="smart_admin_students.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Students

             <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfStudents']->value;?>
</span>
            </a> 
               <a href="smart_admin_schools.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Schools

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfSchools']->value;?>
</span>
            </a> 
              <a href="smart_admin_schoolschedule.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;School Schedule

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfEvents']->value;?>
</span>
            </a> 
            </div> 
        </div>
    </div>
    
    
    
                        <!-- Right Column -->
          <div class="col-md-9 col-sm-9">
              
            <div class="portlet">

                    <!-- Column Header -->
               <h3 class="portlet-title">
                    
                    <a href="index.php" class="fa fa-bars" style="font-size:16px" >Home</a>&nbsp;&nbsp;
                    <a href="account-classadd.php" class="fa fa-bars" style="font-size:16px" >Add New Class</a>&nbsp;&nbsp;
                    <a href="account-classes-Advanced.php" class="fa fa-bars" style="font-size:16px" >Advanced View</a>&nbsp;&nbsp;
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-help" href="#faq-general-1">                      <label for="UserName"  id="UserName" style="font-size:12px"> Advanced Search</label></a>
                </h3>
                    <!-- End Column Header -->
                    
                    <!-- Advanced Search -->
                <div class="panel">

                   

                    <div id="faq-general-1" class="panel-collapse collapse">

                        <div class="panel-body">

                            <p class="advanced-search"> 

                                <div class="advanced-search row">

                                    <!-- div for centering 
                                    <div class="col-md-1">
                                    </div>
                                    -->
                                    <!-- Column 1 -->
                                    <div class="col-md-4 col-sm-6">
                                        
                                        <div class="row">
                                            
                                            <div class="advanced-search col-md-6 col-sm-12">   

                                                <label id="class-classno-label"  style="font-size:12px">Class #:</label><br />
                                                <input type="text" style="width: 100%;" id="class-classno" placeholder="Class #" tabindex="2"  >

                                                <br />

                                                <label id="class-room-label"  style="font-size:12px">Room:</label><br />
                                                <input type="text"  id="class-room" style="width: 100%;" placeholder="Room" tabindex="2"  >

                                                <br/>

                                            </div>
                                            
                                            <div class="advanced-search col-md-6 col-sm-12">  

                                                <label id="class-period-label"  style="font-size:12px">Period:</label><br />
                                                <input type="text"  id="class-period" style="width: 100%;" placeholder="Period" tabindex="2"  >
                                                <br />

                                                <label id="class-code-label"  style="font-size:12px">Code:</label><br />
                                                <input type="text"  id="class-code" style="width: 100%;" placeholder="Code" tabindex="2"  >

                                            </div>
                                            
                                        </div>
                                        
                                        <div class="row">
                                            <div class="advanced-search col-sm-12">
                                                <label id="class-dayfrequency-label"  style="font-size:12px">Day Freq:</label><br />
                                                <input type="text"  id="class-dayfrequency" style="width: 100%;" placeholder="Day Frequency" tabindex="2"  >

                                                <br />
                                                
                                                <label id="class-description-label"  style="font-size:12px">Class Desc.:</label><br />
                                                <input type="text-box"  id="class-description" placeholder="Class Desc." style="width: 100%;" tabindex="2"  >
                                                
                                            </div>
                                        
                                        </div>

                                    </div>
                                    <!-- Column 2 -->
                                    <div class="advanced-search col-md-4 col-sm-6">   

                                         <label id="class-status-label"  style="font-size:12px">Status:</label><br />
                                        <select id="class-status-select" name="class-status-select" class="class-status form-control parsley-validated" data-required="true">
                                            <option value="null" selected></option>
                                            <option value="open">Open</option>
                                            <option value="closed">Closed</option>
                                            <option value="full">Full</option>
                                            <option value="waitlisted">Waitlisted</option>
                                            <option value="cancelled">Cancelled</option>                                            
                                        </select>

                                        <label id="class-classlevel-label"  style="font-size:12px">Level:</label><br />
                                        <select id="class-classlevel-select" name="class-classlevel-select" class="class-classlevel form-control parsley-validated" data-required="true">
                                        </select>   

                                        <label id="class-teacher-label"  style="font-size:12px">Teacher:</label><br />
                                        <select id="class-teacher-select" name="class-teacher-select" class="class-teacher form-control parsley-validated" data-required="true">
                                        </select>

                                    </div>
                                    
                                    <!-- Column 3-->
                                    <div class="advanced-search col-md-4 col-sm-6">  

                                        <label id="class-subject-label"  style="font-size:12px">Subject:</label><br />
                                        <select id="class-subject-select" name="class-subject-select" class="class-subject form-control parsley-validated" data-required="true">
                                        </select>

                                        <label id="class-classtype-label"  style="font-size:12px">Class Type:</label><br />
                                        <select id="class-classtype-select" name="class-classtype-select" class="class-classtype form-control parsley-validated" data-required="true">
                                        </select>

                                       
                                    </div>

                                </div>

                                <!-- Search Button  (Not sure how to center this without center tags)-->
                                <center><a href="smart_account_activelessons.php" class="btn btn-secondary" style="margin-top: 10px">Search</a></center>

                            </p>
                        
                        </div>
                    
                    </div>
                
                </div> 
                    <!-- End Advanced Search -->

                    <!-- Search Table -->    
                <div class="portlet-body">

                    
              							
							 <?php echo $_smarty_tpl->tpl_vars['myDatagridTable']->value;?>

						

                </div>
                    <!-- End Search Table -->    

            </div>

          </div>
                <!-- End Right Column -->
    
    
    
    
    
  </div>
</div>
</div>                





<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
