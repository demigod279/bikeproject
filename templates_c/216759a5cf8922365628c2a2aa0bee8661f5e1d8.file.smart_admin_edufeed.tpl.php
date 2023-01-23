<?php /* Smarty version Smarty-3.1.21-dev, created on 2016-06-05 10:56:43
         compiled from ".\templates\smart_admin_edufeed.tpl" */ ?>
<?php /*%%SmartyHeaderCode:32327575467db03fd17-31125783%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '216759a5cf8922365628c2a2aa0bee8661f5e1d8' => 
    array (
      0 => '.\\templates\\smart_admin_edufeed.tpl',
      1 => 1461964200,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '32327575467db03fd17-31125783',
  'function' => 
  array (
  ),
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
    'NumberOfClassLessons' => 0,
    'NumberOfParents' => 0,
    'NumberOfStudents' => 0,
    'NumberOfSchools' => 0,
    'NumberOfEvents' => 0,
    'NewsFeeds' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_575467db211158_95715223',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_575467db211158_95715223')) {function content_575467db211158_95715223($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:\\web\\mylearni\\libs\\plugins\\function.html_options.php';
?><?php  $_config = new Smarty_Internal_Config("test.conf", $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("setup", 'local'); ?>

<?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('title'=>'Innovakids'), 0);?>




<div id="wrapper">
   
  <div class="content">

 
    <div class="container">
        
        <div class="row">
                   
            
          <div class="col-md-3 col-sm-6">
   
              
            <div class="portlet">
                <h4 class="portlet-title">
                    <u>Class Search</u>
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
              
              <a href="smart_account_classlessons.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Class Active Lessons

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfClassLessons']->value;?>
</span>
            </a> 
               
              <a href="account-parents.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Active Parents

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfParents']->value;?>
</span>
            </a> 
             
              <a href="account-students.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Students

             <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfStudents']->value;?>
</span>
            </a> 
               <a href="account-school.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Schools

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfSchools']->value;?>
</span>
            </a> 
              <a href="account-schoolschedule.php" class="list-group-item">
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
                    
                    <a href="index.php" class="btn btn-secondary">Home</a>&nbsp;&nbsp;
                    <a href="account-classadd.php" class="btn btn-secondary">Add New Class</a>&nbsp;&nbsp;
                    <a href="account-classes-Advanced.php" class="btn btn-secondary">Advanced View</a>&nbsp;&nbsp;
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-help" href="#faq-general-1">                      <label for="UserName"  id="UserName" style="font-size:12px"> Advanced Search</label></a>
                </h3>
                    <!-- End Column Header -->
                    
                    <!-- Advanced Search -->
 
                    <!-- End Advanced Search -->

                    <!-- Search Table -->    
                <div class="portlet-body">

                <?php echo $_smarty_tpl->tpl_vars['NewsFeeds']->value;?>



                </div>
                    <!-- End Search Table -->    

            </div>

          </div>
                <!-- End Right Column -->
    
    
    
    
    
  </div>
</div>
</div>                


<!-- Plugin JS -->




<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
