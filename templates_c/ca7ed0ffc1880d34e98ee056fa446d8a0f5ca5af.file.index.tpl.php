<?php /* Smarty version Smarty-3.1.21-dev, created on 2016-08-16 07:41:24
         compiled from ".\templates\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11668566f0a8dd89222-78564206%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ca7ed0ffc1880d34e98ee056fa446d8a0f5ca5af' => 
    array (
      0 => '.\\templates\\index.tpl',
      1 => 1470782386,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11668566f0a8dd89222-78564206',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_566f0a8e065df9_41619941',
  'variables' => 
  array (
    'UserName' => 0,
    'TeacherNo' => 0,
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
    'NewsFeeds' => 0,
    'SchoolEventFeeds' => 0,
    'TeacherActivityFeeds' => 0,
    'SubjectFeeds' => 0,
    'ClassFeeds' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_566f0a8e065df9_41619941')) {function content_566f0a8e065df9_41619941($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:\\web\\mylearni\\libs\\plugins\\function.html_options.php';
?><?php  $_config = new Smarty_Internal_Config("test.conf", $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars("setup", 'local'); ?>

<?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('title'=>'Innovakids'), 0);?>


<?php echo '<script'; ?>
 language="javascript">

if(getCookie("schoolno") == "" ){

 
  alert("Login not Valid.  Try again!"); 
 
  //window.location="smart_admin_login.php";
  
     
}

   var today = new Date();
          var expiry = new Date(today.getTime() + 30 * 24 * 3600 * 1000); // plus 30 days

          function setCookie(name, value)
          {

            document.cookie=name + "=" + escape(value) + "; path=/; expires=" + expiry.toGMTString();
          }

        
          function getCookie(name)
         {

                
                
                if (document.cookie.length>0)
                {
                  c_start=document.cookie.indexOf(name + "=");
                  if (c_start != -1)
                    {
                    c_start=c_start + name.length+1;
                    c_end=document.cookie.indexOf(";",c_start);
                    if (c_end==-1) c_end=document.cookie.length;


                        return  unescape(document.cookie.substring(c_start,c_end));
                    }
                  }
                return "";
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
                     <img alt="" src="images/innovakids.png"  width="150" height="25" align="left">
                    <u>Admin Dashboard</u>
                </h4> 
                
              <!-- Info Panel  -->
              <h4 class="portlet-title">
   
                 
                  
                    <label for="UserName"  id="UserName" style="font-size:12px;color:black;font-weight:normal">User: <?php echo $_smarty_tpl->tpl_vars['UserName']->value;?>
 (<?php echo $_smarty_tpl->tpl_vars['TeacherNo']->value;?>
)</label>                     <br />
                    
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
                  <br />
                 
              </h4> 
                        
             
              <div class="list-group">  
                <a href="smart_admin_schoolevents.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;School Events
              <i class="fa fa-chevron-right list-group-chevron"></i>
              </a>  
              <a href="smart_admin_classes.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Classes
              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfClasses']->value;?>
</span>
            </a> 
                 </a> 
              <a href="smart_account_activelessons.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Active Lessons

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfActiveLessons']->value;?>
</span>
            </a> 
               </a> 
              <a href="smart_admin_parents.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;Active Parents

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfParents']->value;?>
</span>
            </a> 
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
              <a href="account-schoolschedule.php" class="list-group-item">
              <i class="fa fa-cog text-primary"></i> &nbsp;&nbsp;School Schedule

              <i class="fa fa-chevron-right list-group-chevron"></i><span class="badge"><?php echo $_smarty_tpl->tpl_vars['NumberOfEvents']->value;?>
</span>
            </a> 
            
            </div> 
          <div class="list-group">      
             <?php echo $_smarty_tpl->tpl_vars['NewsFeeds']->value;?>
     
               </div> 
        </div>
    </div>
    
    
    
     <div class="col-md-8 col-sm-7">
           <div class="portlet">

               
               
                <h4 class="content-title"><u>School Event Reminders</u></h4>

               
             <ul class="icons-list">
                  <?php echo $_smarty_tpl->tpl_vars['SchoolEventFeeds']->value;?>


             </ul>
             <a href="account-profile.html">Read More &nbsp;<i class="fa fa-external-link"></i></a>
          <hr>


          
               
               
       <h4 class="content-title"><u>Recent Activity</u></h4>

            <div class="well">


              <ul class="icons-list text-md">

                
                  <?php echo $_smarty_tpl->tpl_vars['TeacherActivityFeeds']->value;?>

                  
                  
              </ul>
 <a href="account-tasks.html">Read More &nbsp;<i class="fa fa-external-link"></i></a>
            </div> <!-- /.well -->


                    <h4 class="content-title"><u>World Wide Subject Discussions</u></h4>

       
             <ul class="icons-list">
                 <?php echo $_smarty_tpl->tpl_vars['SubjectFeeds']->value;?>

               
          <hr>
                  <h4 class="content-title"><u>Your Class Discussions</u></h4>
                    <ul class="icons-list"> 
                       <?php echo $_smarty_tpl->tpl_vars['ClassFeeds']->value;?>

                
                </ul>
             <a href="account-profile.html">Read More &nbsp;<i class="fa fa-external-link"></i></a>
          <hr>

              
              
       
               
        <div class="portlet-body">
        
            
           <h4 class="portlet-title">
                  <u>School Overview</u>
                </h4>
                <table class="table keyvalue-table">
                  <tbody>
                    <tr>
                      <td class="kv-key"><i class="fa fa-gift kv-icon kv-icon-secondary"></i><a href="mainmenu.html" > Registered</a></td>
                      <td class="kv-value">653 </td>
                    </tr>
                    <tr>
                      <td class="kv-key"><i class="fa fa-gift kv-icon kv-icon-secondary"></i><a href="mainmenu.html" > Enrolled this Term</a></td>
                      <td class="kv-value">473 </td>
                    </tr>
                    <tr>
                      <td class="kv-key"><i class="fa fa-gift kv-icon kv-icon-secondary"></i><a href="mainmenu.html" >Active Classes</a></td>
                      <td class="kv-value">78</td>
                    </tr>
                    <tr>
                      <td class="kv-key"><i class="fa fa-envelope-o kv-icon kv-icon-default"></i><a href="mainmenu.html" >Unread Messages</a> </td>
                      <td class="kv-value">39 </td>
                    </tr>
                  </tbody>
                </table>
  
        </div> <!-- /.portlet-body -->

      </div> <!-- /.portlet -->

          </div> <!-- /.col -->
    
    
    
    
    
  </div>
</div>
</div>                




<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
