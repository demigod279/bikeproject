<?php


class DatabaseClass
{

  
    public  $connection;
    public  $stmt;
    public  $sql;
    public  $row;
    public  $fieldArray;
    public  $currentrow;
    public  $hasrows;
    public  $primekeycolumn;
    public  $primekeyvalue;
    public  $table;
    public $mode;
    public $debug;

    public $uploadpath = "";

    public function __construct($tableparam,$debug=false,$serverName,$connectioninfo)
    {
    
        $this->debug = $debug;

        $this->table = $tableparam;
        $this->mode = "edit";  //add , insert, delete, edit

        $this->connection = sqlsrv_connect($serverName, $connectioninfo);
    }

    // Select a row/s in a Database Table
    public function Select($sqlParam, $primekeycolumnParam)
    {


        $this->primekeycolumn = $primekeycolumnParam;


        $this->currentrow = 1;

        $this->sql = $sqlParam;

        $this->stmt = sqlsrv_query($this->connection, $this->sql);

        if ($this->stmt) {
            $this->hasrows = sqlsrv_has_rows($this->stmt);
            if ($this->hasrows === false) {

                return false;
            }
        } else {
            return false;
        }


        $this->row = sqlsrv_fetch_array($this->stmt, SQLSRV_FETCH_NUMERIC);

        $fieldmeta = sqlsrv_field_metadata($this->stmt);

        foreach ($fieldmeta as $f) {

            $this->fieldArray[] = $f['Name'];


           // echo "Field: ".$f['Name'];
        }

        $this->primekeyvalue = $this->getFieldByColumnName($this->primekeycolumn);


        return true;
    }


    public function deleteRow($keyvalue)
    {

        $execsql = "DELETE FROM " . $this->table . " WHERE " . $this->primekeycolumn . " = '" . $keyvalue . "'";
        echo "<br><Br><br>............................" . $execsql;

        $stmtexec = sqlsrv_query($this->connection, $execsql);

        return;
    }


    public function getFieldByNameCheckbox($fieldname)
    {

        //  echo "<br><Br><br>............................" . $this->getFieldByColumnName($fieldname);

        if ($this->getFieldByColumnName($fieldname) == "1")
            return "Checked";
        else
            return "";
    }

    public function getFieldByColumnNumber($icolumn)
    {
        if ($this->hasrows === true)
            return  $this->row[$icolumn];
        else
            return "";
    }


    public function getFormCheckboxFieldByColumnName($strname,$default=false)
    {

        //if( $this->debug)
       // echo "<Br><Br><br>..............".$strname;


        if (strtolower($this->mode) == "add") {

            if( $default == false)
            {
                return '<input class="form-check-input" type="checkbox" id="' . $strname . '"
                                                    name="' . $strname . '" value="1">';
            }
            else
            {

//echo "...............".$default;

                return '<input class="form-check-input" type="checkbox" id="' . $strname . '"
                                                    name="' . $strname . '" value="1" checked>';

            }
        }


        if ($this->hasrows === true && strtolower($this->mode) == "edit" ) {


                    $strcolumnname = "";

                    if( StrPos($strname,"_") == true)
                    {
                        $strcolumnname = trim(explode('~', $strname, 2)[1]);
                    }
                    else
                    {
                
                        $strcolumnname =  $strname;
                    }

                    $index = array_search($strcolumnname, $this->fieldArray);

                    if ($index === false) {
                        //echo "[ERROR - NO FIELD NAME: ".$strname."]";  
                        return "[" . $strname . "]";
                    } else {

                        return '<input class="form-check-input" type="checkbox" id="' . $strname . '"
                                                            name="' . $strname . '" value="1" ' . $this->getFieldByNameCheckbox($strcolumnname) . ' >';
                    }
        } else {

            return "";
        }
    }



    public function getFormTextEditareaFieldByColumnName($strname)
    {

        if (strtolower($this->mode) == "add") {

            return   '<textarea name= "' . $strname . '"  class="tinymce-editor" id="' . $strname . '"
                                                    style="height: 100px"></textarea>';
        }
        else
        {
                if ($this->hasrows === true) {

                    $strcolumnname = "";

                    if( StrPos($strname,"_") == true)
                    {
                        $strcolumnname = trim(explode('~', $strname, 2)[1]);
                    }
                    else
                    {
                
                        $strcolumnname =  $strname;
                    }

                    $index = array_search($strcolumnname, $this->fieldArray);

                    //echo "<br><Br><br>.................".$strcolumnname."---".$index;

                    if ($index === false) {
                        //echo "[ERROR - NO FIELD NAME: ".$strname."]";  
                        return "[" . $strname . "]";
                    } else {

                        return   '<textarea name="' . $strname . '" class="tinymce-editor" id="' . $strname . '"
                                                            style="height: 100px">' . $this->row[$index] . '</textarea>';
                    }
                } else {

                    return "";
                }
            }
    }





public function getFormPlainTextEditareaFieldByColumnName($strname)
    {

        if (strtolower($this->mode) == "add") {

            return   '<textarea name= "' . $strname . '"  style="width: 90%; height: 200px;
                 padding: 10px; border:3px dashed indigo;" id="' . $strname . '" ></textarea>';
        }
        else
        {
                if ($this->hasrows === true) {

                    $strcolumnname = "";

                    if( StrPos($strname,"_") == true)
                    {
                        $strcolumnname = trim(explode('~', $strname, 2)[1]);
                    }
                    else
                    {
                
                        $strcolumnname =  $strname;
                    }

                    $index = array_search($strcolumnname, $this->fieldArray);

                    //echo "<br><Br><br>.................".$strcolumnname."---".$index;

                    if ($index === false) {
                        //echo "[ERROR - NO FIELD NAME: ".$strname."]";  
                        return "[" . $strname . "]";
                    } else {

                        return   '<textarea name="' . $strname . '" style="width: 90%; height: 200px;
                 padding: 10px; border:3px dashed indigo;" id="' . $strname . '"
                                                            >' . $this->row[$index] . '</textarea>';
                    }
                } else {

                    return "";
                }
            }
    }


    public function getFormTextareaFieldByColumnName($strname)
    {

        if (strtolower($this->mode) == "add") {

            return   '<textarea name= "' . $strname . '" class="form-control" id="' . $strname . '"
                                                    style="height: 100px"></textarea>';
        }

        if ($this->hasrows === true) {


           
                    if( StrPos($strname,"_") == true)
                    {
                        $strcolumnname = trim(explode('~', $strname, 2)[1]);
                    }
                    else
                    {
                
                        $strcolumnname =  $strname;
                    }

            $index = array_search($strcolumnname, $this->fieldArray);

            if ($index === false) {
                //echo "[ERROR - NO FIELD NAME: ".$strname."]";  
                return "[" . $strname . "]";
            } else {

                return   '<textarea name= "' . $strname . '" class="form-control" id="' . $strname . '"
                                                    style="height: 100px">' . $this->row[$index] . '</textarea>';
            }
        } else {

            return "";
        }
    }


public function guid(){
    if (function_exists('com_create_guid') === true)
        return trim(com_create_guid(), '{}');

    $data = openssl_random_pseudo_bytes(16);
    $data[6] = chr(ord($data[6]) & 0x0f | 0x40);
    $data[8] = chr(ord($data[8]) & 0x3f | 0x80);
    return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
}


public function guid2(){
  return "jdklfjdklfjdlj";
}

   

    public function getFormFileFieldByColumnName($strname, $strfilename)
    {


        if (strtolower($this->mode) == "add") {
                               if( StrPos($strname,"_") == true)
                    {
                        $strcolumnname = trim(explode('~', $strname, 2)[1]);
                    }
                    else
                    {
                
                        $strcolumnname =  $strname;
                    }

            // echo "<Br><Br><Br>................" . $this->row[$index];
            return '<script>
                    async function uploadFile() {
                    let formData = new FormData();
                    var tempname = fileupload.files[0].name;
                    var fileExtension = tempname.substr(tempname.lastIndexOf(".") + 1)

                    var newname = "'.$this->guid().'."+fileExtension;

                    document.getElementById("' . $strname . '").value = newname;
                    
                    formData.append("file", fileupload.files[0],newname);
                   
                    await fetch("' . $this->uploadpath . 'upload.php", {
                        method: "POST",
                        body: formData,
                    });
                        alert("The file has been uploaded successfully.");
                        document.getElementById("' . $strfilename . '").value = newname;
                        //alert(fileupload.files[0].name);

                    }
                    </script> 
                    <button id="upload-button" onclick="uploadFile()">Upload</button> 
                    <input name="fileupload" id="fileupload" type="file" value=""/>';
        } else {
            

                                 if( StrPos($strname,"~") == true)
                    {
                        $strcolumnname = trim(explode('~', $strname, 2)[1]);
                    }
                    else
                    {
                
                        $strcolumnname =  $strname;
                    }

                $index = array_search($strcolumnname, $this->fieldArray);

                if ($index === false) {
                    //echo "[ERROR - NO FIELD NAME: ".$strname."]";  
                    return "[" . $strname . "]";
                } else {
                    // echo "<Br><Br><Br>................" . $this->row[$index];
                    return '<script>
                    async function uploadFile() {
                    let formData = new FormData();
                    var tempname = fileupload.files[0].name;
                    var fileExtension = tempname.substr(tempname.lastIndexOf(".") + 1)

                    var newname = "'.$this->guid().'."+fileExtension;

                    document.getElementById("' . $strname . '").value = newname;
                    
                    formData.append("file", fileupload.files[0],newname);
                   
                    await fetch("' . $this->uploadpath . 'upload.php", {
                        method: "POST",
                        body: formData,
                    });
                        alert("The file has been uploaded successfully.");
                        document.getElementById("' . $strfilename . '").value = newname;
                        //alert(fileupload.files[0].name);

                    }
                    </script> 
                    <button id="upload-button" onclick="uploadFile()">Upload</button> 
                    <input name="fileupload" id="fileupload" type="file" value="' . $this->row[$index] . '"/>';
                }
          
        }
    }




    public function getFormDateFieldByColumnName($strname,$defaultdate = false,$defaultvalue = '')
    {

        //if( $this->debug)
        //   echo "<Br><Br><br>..............".$strname;

        if (strtolower($this->mode) == "add") {


                    if( $defaultdate == false)
                    {

                        $defaultdate = '';
                    }
                    else if( $defaultvalue != '')
                    {

                        $defaultdate = $defaultvalue;
                    }
                    else
                    {
                        $defaultdate = date('Y').'-'.date('m').'-'.date('d');
                    }



            return '<input name="' . $strname . '" type="date" class="form-control" id="' . $strname . '"
                                                    value="' . $defaultdate  . '">';
        }
        else
        {
                if ($this->hasrows === true) {

                    $strcolumnname = explode('~', $strname, 2)[1];
                    if ($strcolumnname == "")
                         $strcolumnname = $strname;

                    $index = array_search($strcolumnname, $this->fieldArray);

                    if ($index === false) {
                        //echo "[ERROR - NO FIELD NAME: ".$strname."]";  
                        return "[" . $strname . "]";
                    } else {

                    if( $defaultdate == false)
                    {

                        $defaultdate = $this->row[$index];
                    }
                    else if( $defaultvalue != '')
                    {

                        $defaultdate = $defaultvalue;
                    }
                    else
                    {
                        $defaultdate = date('Y').'-'.date('m').'-'.date('d');
                    }



                        return '<input name="' . $strname . '" type="date" class="form-control" id="' . $strname . '"
                                                            value="' . $defaultdate  . '">';
                    }
                } else {

                    return "";
                }
            }
    }


    public function isfield($strname)
    {

        $strcolumnname = explode('~', $strname, 2)[1];
        if ($strcolumnname == "")
            $strcolumnname = $strname;

        $index = array_search($strcolumnname, $this->fieldArray);


        if ($index === false) {
            return "[" . $strcolumnname . "]";
        } else {
            return $this->row[$index];
        }
    }

    public function getFormPasswordFieldByColumnName($strname)
    {
        if ($this->hasrows === true) {


            $strcolumnname = explode('~', $strname, 2)[1];
            if ($strcolumnname == "")
                $strcolumnname = $strname;

            $index = array_search($strcolumnname, $this->fieldArray);

            if ($index === false) {
                //echo "[ERROR - NO FIELD NAME: " . $strname . "]";
                return "[" . $strname . "]";
            } else {


                return '<input name="' . $strname . '" type="password" class="form-control" id="' . $strname . '"
                                                    value="' . $this->row[$index] . '">';
            }
        } else {

            return "";
        }
    }


    public function getFormFieldByColumnName($strname,$required = false,$default="",$iseditable=true,$length="2048")
    {
        
        
        //if( $this->debug)
        //     echo "<Br><Br><br>..............".$strname;
        
        // echo "<br><Br><br>..................Adding:" . $strname;
        $strrequired = "";
        if( $required == true)
        {
           $strrequired = "required";
        }    
        
        $strreadonly = "";
        if( $iseditable == false)
        {
           $strreadonly = "readonly";
        }  

        if (strtolower($this->mode) == "add") 
        {
            return '<input name="' . $strname . '" type="text" class="form-control" id="'.$strname.'" maxlength="'.$length.'" 
                                                    value="'.$default.'" '.$strrequired.'  '.$strreadonly.'>';
        }
        else
        {

            if ($this->hasrows === true) 
            {


                    $strcolumnname = explode('~', $strname, 2)[1];
                    if ($strcolumnname == "")
                        $strcolumnname = $strname;


                    $index = array_search($strcolumnname, $this->fieldArray);


                    //echo "<br><br><br>..........[ERROR - NO FIELD NAME: " . $strcolumnname . "] Found at: ".$index;

                    if ($index === false) 
                    {
                     echo "[ERROR - NO FIELD NAME: " . $strname . "]";
                        return "[" . $strname . "]";
                    } else {


                        return '<input name="' . $strname . '" type="text" class="form-control" id="' . $strname . '"  maxlength="'.$length.'" 
                                                            value="' . $this->row[$index] . '"  '.$strrequired.'  '.$strreadonly.'>';
                    }
            } else {

                    return "";
            }


        }     

    }


    public function getFieldByColumnName($strname)
    {
        if ($this->hasrows === true) {

            $index = array_search($strname, $this->fieldArray);

            if ($index === false) {
                //echo "[ERROR - NO FIELD NAME: ".$strname."]";  
                return "[" . $strname . "]";
            } else {

                return $this->row[$index];
            }
        } else {

            return "";
        }
    }


    public function getList()
    {

        $strOptionList = '';


        if ($this->hasrows === false) {
            //echo "No Rows in the Look up Table";
            return;
        }


        //Reload the Dataset
        $this->stmt = sqlsrv_query($this->connection, $this->sql);


        while ($this->row = sqlsrv_fetch_array($this->stmt,  SQLSRV_FETCH_NUMERIC)) {

            $strOptionList = $strOptionList . '<li>' . $this->getFieldByColumnNumber(1) . '</li>';
        }

        return $strOptionList;
    }

    public function getOptionList($SelectedValue)
    {

        $strOptionList = '';


        if ($this->hasrows === false) {
            //echo "No Rows in the Look up Table";
            return;
        }


        //Reload the Dataset
        $this->stmt = sqlsrv_query($this->connection, $this->sql);


        while ($this->row = sqlsrv_fetch_array($this->stmt,  SQLSRV_FETCH_NUMERIC)) {


            if ($SelectedValue == $this->getFieldByColumnNumber(0))
                $strOptionList = $strOptionList . '<option selected value="' . $this->getFieldByColumnNumber(0) . '">' . $this->getFieldByColumnNumber(1) . '</option>';
            else
                $strOptionList = $strOptionList . '<option value="' . $this->getFieldByColumnNumber(0) . '">' . $this->getFieldByColumnNumber(1) . '</option>';
        }

        return $strOptionList;
    }

public function getFormOptionTextFieldByColumnName($strname, $SelectedValue,$tab, $table, $fields, $sql)
    {


        $foundValue = false;

        $displayvalue = "";

        if (strtolower($this->mode) == "add") {

            $strOptionList = '';
            $stmttemp = sqlsrv_query($this->connection, $sql);
            $strselectedtext = "";
            if ($stmttemp) {
                while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                    if ( strtolower(trim($SelectedValue)) == strtolower(trim($rowc[0])))
                    {
                        $strOptionList = $strOptionList . "'". $rowc[1] ."',";
                        $strselectedtext =$rowc[1];
                        $foundValue = true;
                    }
                        else
                        $strOptionList = $strOptionList . "'". $rowc[1] ."',";
                }
                sqlsrv_free_stmt($stmttemp);
            }

        } else {



            $strOptionList = '';
            
            $stmttemp = sqlsrv_query($this->connection, $sql);
            $strselectedtext = "";

            //echo "<Br><br><br>.................".$sql;

            if ($stmttemp) {
                while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                     if ( strtolower(trim($SelectedValue)) == strtolower(trim($rowc[0])))
                    {
                        $strOptionList = $strOptionList . "'". $rowc[1] ."',";
                        $strselectedtext =$rowc[1];
                        $foundValue = true;

                        if( sizeof($rowc) > 2)
                            $displayvalue =  "(".$rowc[0].") ".$rowc[2];



                    }
                    else
                        $strOptionList = $strOptionList . "'". $rowc[1] ."',";
                }
                sqlsrv_free_stmt($stmttemp);
            }

            
        }

        if($foundValue == false)
        {

                $strselectedtext = $SelectedValue;

                $values = "";
                $array = explode(',', $fields); 

                $first = 0;

                foreach($array as $field)
                {

                  
                   
                    $tempvalues = "";

                    if ($tab != "") {
                        $lowerfield = strtolower($tab . "_" . $field);
                    } else {
                        $lowerfield = strtolower($field);
                    }

        
                    if (isset($_POST[$lowerfield]) == true ) {
                        $tempvalues = $_POST[$lowerfield];
                    }
                 

                    if (isset($_POST[strtolower($field)]) && $tempvalues == "") {
                        $tempvalues = $_POST[strtolower($field)];
                    }


                    if($tempvalues == "")
                    {

                       $tempvalues = $this->getFieldByColumnName($field);

                    }

                    

                    if( $first == 0 && $tempvalues == "")
                    {
                            break;
                    }
          
                    if( $values == "")
                        $values = "'".$tempvalues ."'";
                    else
                        $values =  $values.",'".$tempvalues."'";
                             
                        
                      //echo "<Br><Br><br>.................." .$field."....". $tempvalues;   

                    $first = $first + 1;

                }


                if( $values != "")
                {
                    $execsql = "insert into " . $table . " (" . $fields . ") values (" . $values . ");";
                    $result = sqlsrv_query($this->connection, $execsql);
                    //echo "<Br><Br><br>.................." . $execsql;
                }
              
                

                $strOptionList = '';
                $stmttemp = sqlsrv_query($this->connection, $sql);
                $strselectedtext = "";
                if ($stmttemp) {
                    while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                        if ( strtolower(trim($SelectedValue)) == strtolower(trim($rowc[0])))
                        {
                            $strOptionList = $strOptionList . "'". $rowc[1] ."',";
                            $strselectedtext =$rowc[1];
                            $foundValue = true;
                        }
                        else
                            $strOptionList = $strOptionList . "'". $rowc[1] ."',";
                    }
                    sqlsrv_free_stmt($stmttemp);
                }


        }

        // <div class="col-md-8 col-lg-9"><label for="description" class="col-md-4 col-lg-3 col-form-label">'.$displayvalue.'</label></div>

        if( $strselectedtext == "" && $SelectedValue != "")
             $strselectedtext =  $SelectedValue;

             $strOptionList = ' 
                        <div class="autocomplete col-md-8 col-lg-9">
                        <label for="description" class="col-form-label">'.$displayvalue.'</label>   <br>                   
                        <input id="'.$strname.'" type="text" name="'.$strname.'" autocomplete="off" 
                                                            placeholder="Select..." value="'.$strselectedtext.'" />
                                            
                           
                         </div>
                         <script>
                            var str'.$strname.' = ['. $strOptionList.'];
                            autocomplete(document.getElementById("'.$strname.'"), str'.$strname.');
                    </script>';




        return  $strOptionList;
    }


    public function getSearchFilter($strname, $SelectedValue, $sql,$url,$teacherno,$operation,$value)
    {

        if (strtolower($this->mode) == "add") {

            $strOptionList = ' <select class="form-select" name="' . $strname . '"  id="' . $strname . '" aria-label="Default select example">';
            $stmttemp = sqlsrv_query($this->connection, $sql);

           

            if ($stmttemp) {
                while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                    if ( trim($SelectedValue) == trim($rowc[0]))
                        $strOptionList = $strOptionList . '<option selected value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                    else
                        $strOptionList = $strOptionList . '<option value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                }
                sqlsrv_free_stmt($stmttemp);
            }


            $strOptionList = $strOptionList . '<option value="SELECT">SELECT</option>';

            $strOptionList = $strOptionList . '</select>';
        } else {

            //echo "<Br><Br><br>.................." . $sql;

            $strOptionList = ' <select class="form-select" name="' . $strname . '"  id="' . $strname . '" aria-label="Default select example">';
            $stmttemp = sqlsrv_query($this->connection, $sql);

            if ($stmttemp) 
            {
                while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                    if ( trim($SelectedValue) == trim($rowc[0]))
                        $strOptionList = $strOptionList . '<option selected value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                    else
                        $strOptionList = $strOptionList . '<option value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                }
                sqlsrv_free_stmt($stmttemp);
            }

            if( $SelectedValue == "SELECT"  || $SelectedValue == "")
                $strOptionList = $strOptionList . '<option selected value="SELECT">SELECT</option>';
            else
                $strOptionList = $strOptionList . '<option value="SELECT">SELECT</option>';

            $strOptionList = $strOptionList . '</select>';
        }

        $stroperation = "<select class='form-select' name='fieldoperation'  id='fieldoperation' aria-label='Default select example'>";

                if($operation == "EQUAL")
                       $stroperation = $stroperation."<option selected value='EQUAL'>EQUAL</option>";
                else
                      $stroperation = $stroperation."<option value='EQUAL'>EQUAL</option>";
                
                if($operation == "NOTEQUAL")
                        $stroperation = $stroperation."<option  selected value='NOTEQUAL'>NOT EQUAL</option>";
                else
                        $stroperation = $stroperation."<option value='NOTEQUAL'>NOT EQUAL</option>";

                if($operation == "LIKE")
                {
                    $stroperation = $stroperation."<option  selected value='LIKE'>CONTAINS</option>";

                    $value = str_replace("%","",$value);

                }
                else
                    $stroperation = $stroperation."<option value='LIKE'>CONTAINS</option>";

                if($operation == "GREATER")
                        $stroperation = $stroperation."<option selected value='GREATER'>GREATER THAN</option>";
                else    
                        $stroperation = $stroperation."<option value='GREATER'>GREATER THAN</option>";

               
                if($operation == "LESS")
                    $stroperation = $stroperation."<option selected value='LESS'>LESS THAN</option>";
                else
                    $stroperation = $stroperation."<option value='LESS'>LESS THAN</option>";


                $stroperation = $stroperation."</select>";



            $strfiltertable = '
                    <form action="'.$url.'">
                    <table>
                    <tr>
                        <th>'.$strOptionList.'</th>
                        <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$stroperation.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                        <th><input class="form-control" type="text" id="fieldvalue" name="fieldvalue" value="'.$value.'"></th>
                    </tr>
                    </table>
                    <br>
                    <input type="hidden" id="teacherno" name="teacherno" value="'.$teacherno.'">
                    <button type="submit" value="search" id="search" name="search" class="btn btn-primary">Apply Filter</button>
                    </form>';


        return  $strfiltertable;
    }




    public function getFormOptionFieldByColumnName($strname, $SelectedValue, $sql,$disabled = false)
    {


        $selectedstringvalue = "";

        if (strtolower($this->mode) == "add") {

            $strOptionList = ' <select class="form-select" name="' . $strname . '"  id="' . $strname . '" aria-label="Default select example">';
            $stmttemp = sqlsrv_query($this->connection, $sql);

           

            if ($stmttemp) {
                while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                    if ( trim($SelectedValue) == trim($rowc[0]))
                        $strOptionList = $strOptionList . '<option selected value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                    else
                        $strOptionList = $strOptionList . '<option value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                }
                sqlsrv_free_stmt($stmttemp);
            }


            $strOptionList = $strOptionList . '<option value="SELECT">SELECT</option>';

            $strOptionList = $strOptionList . '</select>';
        } else {

 //echo "<Br><Br><br>.................." . $sql;
    
         $strOptionList = ' <select class="form-select" name="' . $strname . '"  id="' . $strname . '" aria-label="Default select example">';

            $stmttemp = sqlsrv_query($this->connection, $sql);

            if ($stmttemp) {
                while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                    if ( trim($SelectedValue) == trim($rowc[0]))
                    {
                        $strOptionList = $strOptionList . '<option selected value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                        $selectedstringvalue =  $rowc[1];
                    }    
                    else
                        $strOptionList = $strOptionList . '<option value="' . $rowc[0] . '">' . $rowc[1] . '</option>';
                }
                sqlsrv_free_stmt($stmttemp);
            }

            if( $SelectedValue == "SELECT"  || $SelectedValue == "")
                $strOptionList = $strOptionList . '<option selected value="SELECT">SELECT</option>';
            else
                $strOptionList = $strOptionList . '<option value="SELECT">SELECT</option>';

            $strOptionList = $strOptionList . '</select>';
        }


         if( $disabled == true)
          $strOptionList =   '<label for="fullName" class="col-form-label"><b>'.$selectedstringvalue.'</b></label>';

        return  $strOptionList;
    }

    public function getFormNumberedListFieldByColumnNameLink($sql, $strurl)
    {



        $strOptionList = '<ol class="list-group list-group-numbered">';
        $stmttemp = sqlsrv_query($this->connection, $sql);

        if ($stmttemp) {
            while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                $strOptionList = $strOptionList . '<li class="list-group-item"><a href="' . $strurl . $rowc[0] . '">' . $rowc[1] . '</a></li>';
            }
            sqlsrv_free_stmt($stmttemp);
        }

        $strOptionList = $strOptionList . '</ol>';



        return  $strOptionList;
    }



    public function getFormNumberedListFieldByColumnName($sql)
    {



        $strOptionList = '<ol class="list-group list-group-numbered">';
        $stmttemp = sqlsrv_query($this->connection, $sql);

        if ($stmttemp) {
            while ($rowc = sqlsrv_fetch_array($stmttemp, SQLSRV_FETCH_NUMERIC)) {

                $strOptionList = $strOptionList . '<li class="list-group-item">' . $rowc[1] . '</li>';
            }
            sqlsrv_free_stmt($stmttemp);
        }

        $strOptionList = $strOptionList . '</ol>';



        return  $strOptionList;
    }



 public function getReportGrid($afields, $linkurl="",$atotals=array())
    {

        //Must Convert every Field to a Character
        $this->currentrow = -1;

        //Reload the Dataset
        $this->stmt = sqlsrv_query($this->connection, $this->sql);

        $strtable = "";
       
        $atotalvalue = $atotals;
         $ifield  = $ifield + 1;
         foreach ($afields as $field) {
            $atotalvalue[$ifield] = 0;
            $ifield  = $ifield + 1;
         }

        if ($this->stmt) {

            while ($this->row = sqlsrv_fetch_array($this->stmt,  SQLSRV_FETCH_NUMERIC)) {
                $this->currentrow = $this->currentrow + 1;
                $strtable = $strtable . '<tr>';

                $ifield = 0;
                foreach ($afields as $field) {

      
                    if ($ifield == 0 && $linkurl != "") {
                        $strtable = $strtable . '<td><a href="' . $linkurl . '?' . $this->primekeycolumn . '=' . $this->getFieldByColumnName($this->primekeycolumn) . '">' . $this->getFieldByColumnName($field) . '</a> </td>';
                    } else {
                        $strtable = $strtable . '<td><b>' . $this->getFieldByColumnName($field) . '</b></td>';
                    }



                    if( $atotals[$ifield] != "" && $this->getFieldByColumnName($atotals[$ifield]) != "")
                        $atotalvalue[$ifield] = $atotalvalue[$ifield] + $this->getFieldByColumnName($atotals[$ifield]);


                    $ifield  = $ifield + 1;

                }
                
                $strtable = $strtable . '</tr>';
            }
        }


        $ifield  = 0;
         $strtable = $strtable.'<hr>';
        $strtable = $strtable . '<tr>';

        foreach ($afields as $field) {
                             
                        if( $ifield == 0)
                           $strtable = $strtable . '<td><b>TOTAL:</b></td>';

                        else if($atotals[$ifield] != "")
                        {
                           $strtable = $strtable . '<td><b>' . $atotalvalue[$ifield] . '</b></td>';
                           //$strtable = $strtable . '<td><b>' . $ifield . '</b></td>';
                        }
                        else
                        {
                            $strtable = $strtable . '<td></td>';
                        }

                        $ifield  = $ifield + 1;   

                        
        }

        $strtable = $strtable . '</tr>';
       
 



        $strtable = $strtable . '</tbody></table>';
        return $strtable;
    }


    
 public function getReportDetailGrid($afields,$detailsql,$alinkfield)
    {

        //Must Convert every Field to a Character
        $this->currentrow = -1;

        //Reload the Dataset
        $this->stmt = sqlsrv_query($this->connection, $this->sql);

        $strtable = "";
       

        if ($this->stmt) {

            while ($this->row = sqlsrv_fetch_array($this->stmt,  SQLSRV_FETCH_NUMERIC)) {
                $this->currentrow = $this->currentrow + 1;
                $strtable = $strtable . '<tr>';

                

                $ifield = 0;
                foreach ($afields as $field) {

      
                    if ($ifield == 0 && $linkurl != "") {
                        $strtable = $strtable . '<td><a href="' . $linkurl . '?' . $this->primekeycolumn . '=' . $this->getFieldByColumnName($this->primekeycolumn) . '">' . $this->getFieldByColumnName($field) . '</a> </td>';
                    } else {
                        $strtable = $strtable . '<td><b>' . $this->getFieldByColumnName($field) . '</b></td>';
                    }
                    $ifield  = $ifield + 1;

                }
                
                $strtable = $strtable . '</tr>';

                if($detailsql != "")
                {
                    
                    $newsql = $detailsql;
                    foreach ($alinkfield as $linkfield) {

                            $newsql = str_replace("{".$linkfield."}",$this->getFieldByColumnName($linkfield),$newsql);
                            //echo "<br><br><br>............".$newsql."  link: ".$linkfield;

                    }
                   
                    $stmtdetail = sqlsrv_query($this->connection, $newsql);

                    //echo "<br><br><br>............".$newsql;


  

                    while ($detailrowdata = sqlsrv_fetch_array($stmtdetail, SQLSRV_FETCH_NUMERIC) ) 
                    {

                        // echo "<br><br><br>............Detail:".$detailrowdata[0];
                         $strtable = $strtable."<tr><td></td><td colspan='5'><b> ".$detailrowdata[0]."</b></td></tr>";
                                      
                    }

                   sqlsrv_free_stmt($stmtdetail);

                }

            }
        }


        $strtable = $strtable . '</tbody></table>';
        return $strtable;
    }


    public function getGrid($afields, $linkurl,$linklable="Edit")
    {


        //Warning Dates must be datepurchased cast(cast(duedate as date) as varchar)   for formatting

        //Must Convert every Field to a Character
        $this->currentrow = -1;

        //Reload the Dataset
        $this->stmt = sqlsrv_query($this->connection, $this->sql);

        $strtable = "";
         $strsymbol = "?";

          if( StrPos($linkurl,"?") == true)
          {
                $strsymbol = "&";

          }


        //echo "<Br><Br><br>.................." . $this->sql;

        if ($this->stmt) {

            while ($this->row = sqlsrv_fetch_array($this->stmt,  SQLSRV_FETCH_NUMERIC)) {
                $this->currentrow = $this->currentrow + 1;
                $strtable = $strtable . '<tr>';

                $ifield = 0;
                foreach ($afields as $field) {

      
                    if ($ifield == 0 && $linkurl != "") {
                        $strtable = $strtable . '<td><a href="' . $linkurl . $strsymbol . $this->primekeycolumn . '=' . $this->getFieldByColumnName($this->primekeycolumn) . '">'.$linklable.'</a> </td>';
                    } 
                    elseif (str_contains($field , '***'))
                    {
                        $field  = str_replace("***",$this->getFieldByColumnName($this->primekeycolumn),$field);
                        $strtable = $strtable . '<td>' . $this->getFieldByColumnName($field) . '</td>';
                    }   
                    else 
                    {
                        $strtable = $strtable . '<td>' . $this->getFieldByColumnName($field) . '</td>';
                    }
                    $ifield  = $ifield + 1;
                }

                $strtable = $strtable . '</tr>';
            }
        }


        $strtable = $strtable . '</tbody></table>';
        return $strtable;
    }



     public function getEditableGrid($afields, $linkurl = "",$linklable="Edit")
    {


        //Warning Dates must be datepurchased cast(cast(duedate as date) as varchar)   for formatting

        //Must Convert every Field to a Character
        $this->currentrow = -1;

        //Reload the Dataset
        $this->stmt = sqlsrv_query($this->connection, $this->sql);

        $strtable = "";
         $strsymbol = "?";

          if( StrPos($linkurl,"?") == true)
          {
                $strsymbol = "&";

          }


        //echo "<Br><Br><br>.................." . $this->sql;

        if ($this->stmt) {

            while ($this->row = sqlsrv_fetch_array($this->stmt,  SQLSRV_FETCH_NUMERIC)) {
                $this->currentrow = $this->currentrow + 1;
                $strtable = $strtable . '<tr>';

                $ifield = 0;
                foreach ($afields as $field) {

      
                    if ($ifield == 0 && $linkurl != "") {
                        $strtable = $strtable . '<td><a href="' . $linkurl . $strsymbol . $this->primekeycolumn . '=' . $this->getFieldByColumnName($this->primekeycolumn) . '">'.$linklable.'</a> </td>';
                    } else {
                        $strtable = $strtable . '<td>' . $this->getFieldByColumnName($field) . '</td>';
                    }
                    $ifield  = $ifield + 1;
                }

                $strtable = $strtable . '</tr>';
            }
        }


        $strtable = $strtable . '</tbody></table>';
        return $strtable;
    }



    public function getTable($aheaders)
    {


        $strtable = '<table class="table table-borderless datatable"><thead>';

        $this->currentrow = -1;

        $strtable = $strtable . '<tr>';


        foreach ($aheaders as $header) {
            $strtable = $strtable . '<th scope="col" width="35">' . $header . '</th>';
        }

        $strtable = $strtable . '</tr></thead><tbody>';

        $this->currentrow = -1;

        //Reload the Dataset
        $this->stmt = sqlsrv_query($this->connection, $this->sql);


        while ($this->row = sqlsrv_fetch_array($this->stmt,  SQLSRV_FETCH_NUMERIC)) {
            $this->currentrow = $this->currentrow + 1;
            $strtable = $strtable . '<tr>';


            foreach ($this->fieldArray as $field) {

                $strtable = $strtable . '<td>' . $this->getFieldByColumnName($field) . '</td>';
            }

            $strtable = $strtable . '</tr>';
        }
        $strtable = $strtable . '</tbody></table>';



        return $strtable;
    }


    public function getFieldByNameBoolean($strname)
    {


        if ($this->$row[$strname] == "True")
            return "1";
        else
            return "0";
    }


    public function insertRow($columnArray)
    {
        $this->fieldArray = $columnArray;

        $insertvalues = "";
        $insertcolumns = "";


        $tab  = $_POST["tab"];

        foreach ($this->fieldArray as $field) {

            if ($tab != "") {
                $lowerfield = strtolower($tab . "_" . $field);
            } else {
                $lowerfield = strtolower($field);
            }


            $index = array_search($field, $this->fieldArray);

            $value = "";

            if (isset($_POST[$lowerfield]) == true && strtolower($_POST[$lowerfield]) == "checked") {
                $value = "1";
            }




            if (isset($_POST[$lowerfield]) && $value == "") {
                $value = $_POST[$lowerfield];
            }


            if (isset($_POST[$lowerfield]) && $value == "on") {
                $value = "1";
            }
            if (isset($_POST[$lowerfield]) && $value == "off") {
                $value = "0";
            }


            if ( strtolower($field) == "guid" )
            {

                $value = $this->guid();
            }


            if ($field != $this->primekeycolumn) {

                if (strtolower($field)  == "phone" || strtolower($field)  == "acct" || strtolower($field)  == "phoneno")
                    $value = $this->formatting($value);


                if ($value != "") {

                    if ($insertvalues != "") {
                        $insertvalues = $insertvalues . ",";
                        $insertcolumns = $insertcolumns . ",";
                    }

                    $value = str_replace("'","''",$value);

                    $insertvalues = $insertvalues . "'" . $value . "'";
                    $insertcolumns = $insertcolumns . $field;
                }



            }

            //echo "<br>" . $lowerfield . "...." . $_POST[$lowerfield];
        }

        $strreturn = 0;

        if ($insertcolumns != "")
            $strreturn = $this->commitInsert($insertcolumns, $insertvalues);

        $this->row = null;


        return $strreturn;
    }


    public function commitInsert($insertcolumns, $insertvalues)
    {

        $execsql = "insert into " . $this->table . " (" . $insertcolumns . ") values (" . $insertvalues . ")";
        
        //echo "<br><Br><Br>............" . $execsql;
        $result = sqlsrv_query($this->connection, $execsql);
        // echo "<br><Br><Br>............" . $execsql;

        return $result;
    }


    public function formatting($phone)
    {


        if (preg_match('/^([0-9]{3})([0-9]{3})([0-9]{4})$/', $phone, $value)) {

            // Store value in format variable
            $format = $value[1] . '-' .
                $value[2] . '-' . $value[3];
        } else {

            // If given number is invalid
            return $phone;
        }


        // Print the given format
        return $format;
    }

   public function copyRow($key,$columnsto,$columnsfrom)
    {

      $execsql = "INSERT INTO " . $this->table . " (" . $columnsto . ")  SELECT " . $columnsfrom . " FROM " . $this->table . " WHERE  " . $this->primekeycolumn . " = '". $key . "'";


      // echo "<br><Br><Br>..................".$execsql;

        $stmtexec = sqlsrv_query($this->connection, $execsql);

        return;

    }

    // Update a row/s in a Database Table
    public function updateRow($columnArray=NULL)
    {

       // echo "<br><br><br>updating<br>";

        $updatesql = "";
        $icolumn = 0;


        $tab  = $_POST["tab"];

        $array = [];

        if( $columnArray != NULL)
          $array = $columnArray;
        else
          $array = $this->fieldArray;

        foreach ($array as $field) {



            if ($tab != "") {
                $lowerfield = strtolower($tab . "~" . $field);
            } else {
                $lowerfield = strtolower($field);
            }


            $index = array_search($field, $this->fieldArray);

            $value = "";
            //$strfieldtab = explode('_', $lowerfield, 2)[1];

            if (isset($_POST[$lowerfield]) == false && $this->row[$index] == "1") {
                $value = "0";
            } elseif (isset($_POST[$lowerfield]) == false && $this->row[$index] == "0") {
                $value = "0";
            } elseif (isset($_POST[$lowerfield]) == true && $this->row[$index] == "1" && strtolower($_POST[$lowerfield]) == "checked") {
                $value = "1";
            } elseif (isset($_POST[$lowerfield]) == true && $this->row[$index] == "0" && strtolower($_POST[$lowerfield]) == "checked") {
                $value = "1";
            }

            if (isset($_POST[$lowerfield]) && $value == "") {
                $value = $_POST[$lowerfield];
            }

            if (isset($_POST[$lowerfield]) && $value == "on") {
                $value = "1";
            }
            if (isset($_POST[$lowerfield]) && $value == "off") {
                $value = "0";
            }

            if ( strtolower($field)== "guid" )
            {


                $value = $this->guid();

               // echo "<br><Br><br>..................Found guid";

            }

 //echo "<br><Br><br>.................." . $field . ".....[" . isset($_POST[$lowerfield]) . "]....:" . $value . " ........Original:" . $this->row[$index];
            




            if (isset($_POST[$lowerfield]) || $value != "") {


              
                    if ($field != $this->primekeycolumn) {

                        if (strtolower($field)  == "phone") {
                            $value = $this->formatting($value);
                        }
                        //echo "<br><br><br>............Field: " . $field . " RowData: " . $this->row[$index] . " New Value: " . $value;

                        if ($this->row[$index] != $value) {

                            $this->row[$index] = $value;

                            if ($updatesql != "")
                                $updatesql = $updatesql . ",";

                            $value = str_replace("'","''",$value);

                            if( $value == "SELECT")
                                $value = "";

                            $updatesql = $updatesql . $field . " = '" . $value . "'";
                        }
                    }
                //}
            }
        }

        $icolumn =  $icolumn + 1;


        if ($updatesql != "")
            $this->commitupdate($updatesql);


        $this->mode = "Edit";

    }

    public function commitupdate($updatesql)
    {
        $execsql = "UPDATE " . $this->table . " SET " . $updatesql . " WHERE " . $this->primekeycolumn . " = '" . $this->primekeyvalue . "'";


        //echo "<br><Br><Br>..................".$execsql;

        $stmtexec = sqlsrv_query($this->connection, $execsql);

        return;
    }

    // Remove a row/s in a Database Table
    public function Remove($statement = "", $parameters = [])
    {
        try {

            $this->executeStatement($statement, $parameters);
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }

    // execute statement
    private function executeStatement($statement = "", $parameters = [])
    {
        try {

            $stmt = $this->connection->prepare($statement);
            $stmt->execute($parameters);
            return $stmt;
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }

    public function closeConnection()
    {
        if ($this->stmt)
            sqlsrv_free_stmt($this->stmt);

        sqlsrv_close($this->connection);
    }

    public function closeStatement()
    {
        if ($this->stmt)
            sqlsrv_free_stmt($this->stmt);
    }
}