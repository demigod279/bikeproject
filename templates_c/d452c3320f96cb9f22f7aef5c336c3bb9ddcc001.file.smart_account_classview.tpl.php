<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-12-15 15:12:39
         compiled from ".\templates\smart_account_classview.tpl" */ ?>
<?php /*%%SmartyHeaderCode:194556709e672d12b0-61763907%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd452c3320f96cb9f22f7aef5c336c3bb9ddcc001' => 
    array (
      0 => '.\\templates\\smart_account_classview.tpl',
      1 => 1450115100,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '194556709e672d12b0-61763907',
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
    'ClassImage' => 0,
    'classno' => 0,
    'subject' => 0,
    'code' => 0,
    'class' => 0,
    'teacher' => 0,
    'room' => 0,
    'begtime' => 0,
    'endtime' => 0,
    'classtype' => 0,
    'period' => 0,
    'currentenrollment' => 0,
    'location' => 0,
    'fee' => 0,
    'classdescription' => 0,
    'classnotes' => 0,
    'DiscussionFeeds' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_56709e673bc167_64952619',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_56709e673bc167_64952619')) {function content_56709e673bc167_64952619($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:\\web\\mylearni\\libs\\plugins\\function.html_options.php';
?><?php  $_config = new Smarty_Internal_Config("test.conf", $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("setup", 'local'); ?>

<?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('title'=>'Innovakids'), 0);?>


<?php echo '<script'; ?>
 type="text/javascript">
    
    function Loading()
          {
               
                CommonLoading();
              
                 var strschoolno = getCookie('schoolno');     
                 var strclassno = getCookie('classno'); 
                 alert(strschoolno);
                 alert(strclassno);
              
                //GetClassClassNo();
              
                //LoadSubject();
                //LoadClassType();
                //LoadTeacher();
                //LoadClassLevel();
          }
    
    
   <?php echo '</script'; ?>
> 
       
          
   
        

<div id="wrapper">
   
  <div class="content">

 
    <div class="container">
        
        <div class="row">
                   
            
          <div class="col-md-3 col-sm-6">
   
              
            <div class="portlet">
                <h4 class="portlet-title">
                    <u>Class View</u>
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
                 <h4 class="portlet-title">
                    <u>Subject News</u>
                </h4> 
             <div class="list-group">      
                  <?php echo $_smarty_tpl->tpl_vars['NewsFeeds']->value;?>

               </div>  
                
        </div>
    </div>
    
    
    
                    <!-- Right Column -->
                     <!-- Basic Details -->
    
                  <a href="smart_admin_classes.php" class="btn btn-secondary"><< Back</a>&nbsp;&nbsp;
                   
                <a href="index.php" class="btn btn-secondary">Home</a>
                &nbsp;&nbsp;
                <a href="smart_account_classedit.php" class="btn btn-secondary">Edit Class</a>
                &nbsp;&nbsp;
               </h4>    

               <label for="class-codetitle"  id="class-codetitle" style="font-size:18px"></label>

             
              <hr>
              
               <table  style="width:700px">  
                    <tr>
                      <td style="width:40%"> 
                 
                                <?php echo $_smarty_tpl->tpl_vars['ClassImage']->value;?>
   
                                      
                                
                                
                       </td>
                             <td style="width:60%">  
                    <ul class="icons-list">
                        <li> Class #: <label  id="class-teacher" ><?php echo $_smarty_tpl->tpl_vars['classno']->value;?>
</label></li>
                        <li> Subject: <label  id="class-subject" ><?php echo $_smarty_tpl->tpl_vars['subject']->value;?>
</label></li>
                        <li> Class Code: <label  id="class-teacher" ><?php echo $_smarty_tpl->tpl_vars['code']->value;?>
</label></li>
                        <li> Ext. Code: <label  id="class-extendedcode" ></label></li>
                        <li>   Title: <label  id="class-teacher" ><?php echo $_smarty_tpl->tpl_vars['class']->value;?>
</label></li>
                        <li> Teacher: <label  id="class-teacher" ><?php echo $_smarty_tpl->tpl_vars['teacher']->value;?>
</label></li>
                        <li> Room: <label  id="class-room" ><?php echo $_smarty_tpl->tpl_vars['room']->value;?>
</label></li>
                         </td>
                      </tr>             
     </table>                                 
                                 
                                 
                                 
    <table  style="width:700px">
        </ul>
                        <tr>
                            <td style="width:50%">                  
                         <ul class="icons-list">
                        <li><i class="icon-li fa fa-clock-o"></i> Beg Time: <label id="class-begtime" ><?php echo $_smarty_tpl->tpl_vars['begtime']->value;?>
</label></li>
                        <li><i class="icon-li fa fa-clock-o"></i> End Time: <label id="class-endtime" ><?php echo $_smarty_tpl->tpl_vars['endtime']->value;?>
</label></li>
                        <li><i class="icon-li fa fa-calendar"></i> Enroll By: <label id="class-enrollmentdate" ></label></li>
                        <li><i class="icon-li fa fa-calendar"></i> Start Date: <label id="class-startdate" ></label></li> 
                        <li><i class="icon-li fa fa-calendar"></i> End Date: <label id="class-enddate" ></label></li> 
                          <li><i class="icon-li fa fa-calendar"></i> Department: <label id="class-department" ></label></li> 
 <li><i class="icon-li fa fa-info"></i><input type="checkbox" name="class-active" id="class-active" disabled="disabled" >  Active</li> 
                         <li><i class="icon-li fa fa-calendar"></i> Year: <label id="class-classyears" ></label></li>
                         <li><i class="icon-li fa fa-calendar"></i> Term: <label id="class-semester" ></label></li>
                        <li><i class="icon-li fa fa-calendar"></i> Level #: <label id="class-levelno" ></label></li>
                          <li><i class="icon-li fa fa-calendar"></i> Class Type: <label id="class-classtype" ><?php echo $_smarty_tpl->tpl_vars['classtype']->value;?>
</label></li>
                    </ul>
   </td>
                             <td style="width:50%">
                    <ul class="icons-list">
        

                        <li><i class="icon-li fa fa-suitcase"></i> Level: <label id="class-classlevel" ></label></li>
                        <li><i class="icon-li fa fa-star"></i> Units: <label id="class-units" ></label></li>
                        <li><i class="icon-li fa fa-unlock-alt"></i> Status: <label id="class-status" ></label></li>
                        <li><i class="icon-li fa fa-building-o"></i> Period: <label id="class-period" ><?php echo $_smarty_tpl->tpl_vars['period']->value;?>
</label></li>
                         <li><i class="icon-li fa fa-info"></i> Type: <label id="class-classtype" ><?php echo $_smarty_tpl->tpl_vars['classtype']->value;?>
</label></li>
                           <li><i class="icon-li fa fa-star"></i> Avg %: <label id="class-percentage" ></label></li>
                                                 <li><i class="icon-li fa fa-building-o"></i> Current Enrollment: <label id="class-currentenrollment" ><?php echo $_smarty_tpl->tpl_vars['currentenrollment']->value;?>
</label></li>
                         <li><i class="icon-li fa fa-building-o"></i> Max Enrollment: <label id="class-maxenrollment" ></label></li>
                         <li><i class="icon-li fa fa-info"></i> Location: <label id="class-locationno" ><?php echo $_smarty_tpl->tpl_vars['location']->value;?>
</label></li>
                         <li><i class="icon-li fa fa-info"></i> Fee: <label id="class-fee" ><?php echo $_smarty_tpl->tpl_vars['fee']->value;?>
</label></li>

                    </ul>
                     </tr>
                    </table>
      
       <h5>Class Description:</h5>
                   <p style="padding-left: 50px">
                       <label id="class-description" > <?php echo $_smarty_tpl->tpl_vars['classdescription']->value;?>
</label>
                   </p>
      
       <h5>Class Notes:</h5>
                   <p style="padding-left: 50px">
                       <label id="class-notes" > <?php echo $_smarty_tpl->tpl_vars['classnotes']->value;?>
</label>
                   </p>
      
                </div>
               
              
               <hr>
               
               
              <hr>
               
             
    
    
      <h4 class="content-title"><u><?php echo $_smarty_tpl->tpl_vars['class']->value;?>
 News around the World</u></h4>

             <ul class="icons-list">
                 <?php echo $_smarty_tpl->tpl_vars['DiscussionFeeds']->value;?>

               
                </ul>
           
                <!-- End Basic Details -->

                
                <!-- End Right Column -->
    
    
    
    
    
  </div>
</div>
</div>                


<!-- Plugin JS -->

<?php echo '<script'; ?>
 src="./js/libs/jquery-1.10.2.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="./js/libs/bootstrap.min.js"><?php echo '</script'; ?>
>

<!--[if lt IE 9]>
<?php echo '<script'; ?>
 src="./js/libs/excanvas.compiled.js"><?php echo '</script'; ?>
>
<![endif]-->


<!-- App JS -->
<?php echo '<script'; ?>
 src="./js/mvpready-core.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="./js/mvpready-admin.js"><?php echo '</script'; ?>
>


<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
