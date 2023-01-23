{include file="headerteacher.tpl" }


<script language="JavaScript" type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" lang="javascript" src="dblclick.js"></script>

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<script src="index.js"></script>



<script type="text/javascript">
    var downloadTimer

    function showhidetimer(intseconds) {


        // alert("Timer Set");

        if( {$settimer} )
        {


            document.getElementById("progressBarTimer").value = intseconds;

            //Timer
            var timeleft = 0;
            downloadTimer = setInterval(function() {
                if (intseconds - timeleft < 0) {
                    clearInterval(downloadTimer);
                    alert("Time up on this question!");
                    document.InnovakidsQuestion.submit();
                }

                document.getElementById("progressBarTimer").value = intseconds - timeleft;
                timeleft += 1;
            }, 1000);

            document.getElementById("Questions").focus();

        }


    }
</script>

<script type="text/javascript">
    //     document.addEventListener('contextmenu', function(e){
    //alert("Right Click is Disabled for Security!");
    //e.preventDefault();
    //});


    document.onkeydown = function(e) {
        if (event.keyCode == 123) {
            return false;
        }
        if (e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.keyCode == 'S'.charCodeAt(0)) {
            return false;
        }
    }
</script>

<script type="module">
    if (window.devtools.isOpen) {
        //alert("Developer Tools is Disabled for Security!");
        // window.location.replace("pagebaddev.html");

    }

    // Check it's orientation, `undefined` if not open
    //console.log('DevTools orientation:', window.devtools.orientation);

    // Get notified when it's opened/closed or orientation changes
    window.addEventListener('devtoolschange', event => {


        //   window.location.replace("pagebaddev.html");

    });
</script>


<script type="text/javascript">
    (function(global) {

        if (typeof(global) === "undefined") {
            throw new Error("window is undefined");
        }

        var _hash = "!";
        var noBackPlease = function() {
            global.location.href += "#";

            // Making sure we have the fruit available for juice (^__^)
            global.setTimeout(function() {
                global.location.href += "!";
            }, 50);
        };

        global.onhashchange = function() {
            if (global.location.hash !== _hash) {
                global.location.hash = _hash;
            }
        };


    })(window);


    //turn off debug
    //document.addEventListener('contextmenu', function(e) {
    //    alert("Right Click is Disabled for Security!");
    //    e.preventDefault();
    //});


    document.onkeydown = function(e) {
        if (event.keyCode == 123) {
            return false;
        }
        if (e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
            return false;
        }
        if (e.ctrlKey && e.keyCode == 'S'.charCodeAt(0)) {
            return false;
        }
    }






    var ua = navigator.userAgent.toLowerCase();
    var isSafari = false;
    try {
        isSafari = /constructor/i.test(window.HTMLElement) || (function(p) {
            return p.toString() ===
                "[object SafariRemoteNotification]";
        })(!window['safari'] || safari.pushNotification);
    } catch (err) {}
    isSafari = (isSafari || ((ua.indexOf('safari') != -1) && (!(ua.indexOf('chrome') != -1) && (ua.indexOf(
        'version/') != -1))));

    //test
    if (isSafari == false) {
        //  window.addEventListener('storage', () => {

        //    window.location.replace("pagebads.html");

        // }, false)

        // localStorage.setItem('Sentinel',Math.random());
    }
</script>



<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax/es5/tex-mml-chtml.js"></script>


<style>
    .MathJax {
        font-size: 24pt;
    }


    .fraction,
    .top,
    .bottom {
        padding: 0 5px;
    }

    .fraction {
        display: inline-block;
        text-align: center;
    }

    .bottom {
        border-top: 1px solid #000;
        display: block;
    }
</style>


</head>

<script language="JavaScript" type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" lang="javascript" src="dblclick.js"></script>

<body onkeydown="return (event.keyCode != 116)">

    <!-- ======= Header ======= -->
    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">


        <div class="modal fade" id="popupcalendar" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Calendar</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <iframe frameborder="0" height="500px" width="100%"
                            src="https://calendar.online/34979b198243440da18c?iframe=true"></iframe>
                        </iframe>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div><!-- End Extra Large Modal-->


        <div class="pagetitle">

            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item active"><a
                            href="teacher_classview2021.php?classno={$classno}">Classroom</a></li>
                    <li class="breadcrumb-item active"><a
                            href="teacher_lessonview2021.php?classno={$classno}&lessonno={$lessonno}">Lesson</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-12">
                    <div class="row">

                        <!-- List group with Advanced Contents -->
                        <div class="list-group">


                            {$myclasses}


                        </div>

                        <div class="row">

                            <div class="btn-group" role="group" aria-label="">
                                <a class="btn btn-primary"
                                    href="teacher_conceptview2021.php?lessonno={$lessonno}&classno={$classno}&unlockpresent=concept&conceptno={$currentconceptno}&conceptkey={$conceptkey}">Release</a>
                                &nbsp;&nbsp;
                                <a class="btn btn-primary"
                                    href="teacher_conceptedit2021.php?lessonno={$lessonno}&classno={$classno}&conceptkey={$conceptkey}">Edit</a>
                                &nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#verticalycenteredmap">Map</button>&nbsp;&nbsp;

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#verticalycenteredimage">Show Image</button>&nbsp;&nbsp;

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#popupboard">Whiteboard</button>&nbsp;&nbsp;

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#verticalycenteredbook">Book</button>&nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#verticalycenteredconcept">Show Concept</button>
                                &nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#verticalycenteredanswer">Show Answer</button>

                            </div>
                        </div>

                        <div class="modal fade" id="verticalycenteredmap" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Concept Maps</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        {$ConceptMap}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Extra Large Modal-->



                        <div class="modal fade" id="verticalycenteredbook" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Teacher Book</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <iframe width='100%' height='600px'
                                            src='report_student_lessonbookform.php?classno={$classno}&lessonno={$origlessonno}'
                                            frameborder='0' scrolling='yes' marginheight='10' marginwidth='10'>
                                        </iframe>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Extra Large Modal-->


                        <div class="modal fade" id="popupboard" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">

                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div style="height:600px; width: 100%;">
                                        <iframe width='100%' height='100%' src='https://excalidraw.com/' frameborder='0'
                                            scrolling='yes' marginheight='10' marginwidth='10'>
                                        </iframe>
                                    </div>
                                    <div class="modal-footer">

                                        <a class="btn btn-secondary" href="https://excalidraw.com/" target="_blank">Open
                                            in New
                                            Tab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Vertically centered Modal-->




                        <div class="modal fade" id="verticalycenteredimage" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">

                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>

                                    <div style="height:600px; width: 100%;">
                                        <div class="col text-center">
                                            <img src="{$ConceptImage}" class="img-responsive" width="95%" height="500">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Vertically centered Modal-->


                        <div class="modal fade" id="verticalycenteredconcept" tabindex="-1">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">{$ConceptTitleInformation}</h5>
                                        <hr>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        {$ConceptTextInformation} </br>{$EmbedConcept}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Vertically centered Modal-->


                        <div class="modal fade" id="verticalycenteredanswer" tabindex="-1">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Answer</h5>
                                        <hr>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        {$QuestionAnswer}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>

                                    </div>
                                </div>
                            </div>
                        </div><!-- End Vertically centered Modal-->


                        <div id="myModalstory" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg ">
                                <div class="modal-content">
                                    </br></br>
                                    <h3> &nbsp;&nbsp;&nbsp;&nbsp; {$ConceptTitleInformation} </h3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;<i>Read the Story then Click to Close and answer the
                                        questions. Do not click Close till ready!</i>
                                    <hr>
                                    <div style="margin-left:45px;  margin-right: 45px; width:auto;">
                                        <h4> <a id="addClass" href="#Foo" onclick="return talkconcept();"><span
                                                    class="glyphicon glyphicon-comment"></span> Say </a>
                                            {$ConceptTextInformation2} </br>{$EmbedConcept} </h4>
                                    </div>
                                    <div class="modal-footer">Read Before Closing! &nbsp;&nbsp;&nbsp;
                                        <button type="button" class="btn btn-default"
                                            data-dismiss="modal">Close</button>
                                    </div>
                                    </br></br>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-xs-12 mt-1 mb-3">
                                {$AddGameUrl}

                                {$AddReview}
                                {$AddDivision}
                                {$AddChart}
                                {$LinkToConceptVirtualLink}

                                {$ConceptGame}

                                {$ConceptDescriptionInformation}

                                {$ConceptEmbedded}

                                {$ConceptMultiplication}

                                {$ConceptStringGame}

                                {$ConceptMoney}

                                {$ConceptShapes}

                                {$ConceptFraction}

                                {$AddChart}

                                {$ConceptWorldMap}

                                {$ConceptLeapo}

                                {$ConceptNumberLine}


                                <script type="text/javascript">
                                    function myconfirm() {




                                        let text = "Are you sure this is your answer?";
                                        if (confirm(text) == true) {

                                            var breturn = false;

                                            breturn = checkradio2();
                                            //alert(breturn);

                                            clearInterval(downloadTimer);

                                            return breturn;

                                        } else {

                                            return false;

                                        }

                                    }
                                </script>


                                <br>
                                <hr>



                                <form name="InnovakidsQuestion" action="{$phppage}" method="POST"
                                    onsubmit="return {$confirmnext};">
                                    <div align="left">

                                        <input type="hidden" name="showanswer" value="{$ShowAnswer}">

                                        <input type="hidden" name="code" value="{$sessionid}">


                                        <input type="hidden" name="goto1" value="{$goto1}">
                                        <input type="hidden" name="goto2" value="{$goto2}">
                                        <input type="hidden" name="goto3" value="{$goto3}">
                                        <input type="hidden" name="goto4" value="{$goto4}">

                                        <input type="hidden" name="lessonno" value="{$lessonno}">
                                        <input type="hidden" name="classno" value="{$classno}">
                                        <input type="hidden" name="practice" value="{$practice}">
                                        <input type="hidden" name="answer" value="{$answer}">
                                        <input type="hidden" name="conceptno" value="{$conceptno}">
                                        <input type="hidden" name="discussiontypeanswer"
                                            value="{$discussiontypeanswer}">
                                        <input type="hidden" name="conceptkey" value="{$nextconceptkey}">

                                        <input type="hidden" name="actualquestion" value="">


                                        <input type="hidden" name="conceptkeysave" value="{$conceptkeysave}">

                                        <input type="hidden" name="backconceptkey" value="{$backconceptkey}">
                                        <div id="questionpost" style="display: block">
                                            {$LastCorrect}

                                            <h5 align="right"> {$PracticeQuestion} {$EmbedQuestion} {$islocked} -
                                                Question #
                                                {$conceptno} of {$totalconceptsnumber} </h5>
                                            <h5 align="left"> {$Questions} </h5>
                                            <br> <progress value="{$timerseconds}" max="{$timerseconds}"
                                                id="progressBarTimer" style="width:99%;height=20px"></progress>
                                            </br>

                                            {$nextbutton}</br>
                                        </div>
                                        </br>

                                        <p style="line-height: 70px; text-align: left;"><button type="button"
                                                class="btn btn-info" data-toggle="modal" data-target="#myModalHint"
                                                {$HintDisabled}> &nbsp;&nbsp;&nbsp; {$HintTitle}
                                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </button> &nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;



                                            {$LinkToConceptVideoLink}


                                        </p>





                                        <div id="myModalHint" class="modal fade" tabindex="-1" role="dialog">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <h2>{$QuestionHint}</h2>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger"
                                                            data-dismiss="modal">
                                                            Close</button>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                        </br>



                                        &nbsp;&nbsp;&nbsp;




                                    </div>
                            </div>
                            </form>

                            <div id="messagearearesult">

                            </div>


                        </div>
                    </div>


                </div>
            </div><!-- End Left side columns -->



        </section>

    </main><!-- End #main -->




    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="jquery-1.2.6.pack.js"></script>


    <script type="text/javascript">
        function timercheckresults() {

            myFuncResults();

        }


        function release() {



            window.location.replace(getUrl() + "&release=true");

        }


        var strdeleteid = "";
        var strimage1 = false;
        var strimage2 = false;
        var strimage3 = false;
        var strimage4 = false;
        var strimage5 = false;




        var keepgoing = false;



        function runMyFunction() {

            myFuncResults();

        }


        function myFuncResults() {

            var today = new Date();
            var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();


            var div = document.getElementById('messagearearesult');



            $.ajax({
                type: "GET",
                url: 'servertopic.php',
                dataType: "text",
                async: false,
                {$ajaxdata},
                success: function(data) {

                    div.innerHTML = "";


                    var myarray = data.split('~');

                    for (var i = 0; i < myarray.length; i++) {


                        var myarraylast = myarray[i].split('*');


                        if (myarraylast[0] != "DATA") {


                            //alert(myarraylast[3]);

                            // div.innerHTML = '<h1>Concept #: ' + myarraylast[3] + '</h1></br><h2>' +
                            //     myarraylast[1] + ' - Total</h2></br>' + myarraylast[2] + ' - Correct</br>' +
                            //     strwrong + ' - Wrong</br>';

                            strwrongtotal = myarraylast[1] - myarraylast[2];

                            strcorrect = Math.round((100 / myarraylast[1]) * myarraylast[2]);
                            strwrong = Math.round((100 / myarraylast[1]) * strwrongtotal);

                            div.innerHTML =
                                '<table border="0" width="100%" cellpadding = "0" cellspacing="0">                                <tr>                                  <td width="20%"><b>Correct</b> </td>                                       <td width="70%">                                            <table border = "0" width = "100%" cellpadding = "5" cellspacing="1">                                                  <tr>                                                    <td align="left" bgcolor="green" width="' +
                                strcorrect +
                                '%" height="50px"> </td>                                                     <td align="left">&nbsp;&nbsp;' +
                                strcorrect + '% (' + myarraylast[2] +
                                ')</td>                                                  </tr>      </table>                                              </td>  </tr>         <tr height="20px">  </tr>        <tr>    <td width="20%"><b>Wrong</b> </td>     <td width="70%">      <table border = "0" width = "100%" cellpadding = "5" cellspacing="1">        <tr>          <td align="left" bgcolor="red" width="' +
                                strwrong +
                                '%" height="50px"> </td>          <td align="left">&nbsp;&nbsp;' +
                                strwrong + '% (' + strwrongtotal +
                                ')</td>        </tr>      </table>    </td>  </tr></table>';



                        }

                    }





                    setTimeout(timercheckresults, 15000);

                }
            });


        }


        myFuncResults();
    </script>





    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.5.2/bootbox.min.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script src='https://code.responsivevoice.org/responsivevoice.js'></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script type="text/javascript">
        function checklock() {



            $strreturn = false;

            $.ajax({
                type: "GET",
                url: 'serverlock.php',
                dataType: "text",
                async: false,
                {$ajaxdata},
                success: function(data) {

                    if (data == '0') {


                        $strreturn = true;

                    } else {


                        $strreturn = false;

                    }

                }



            });




            return $strreturn;




        }




        function checkconfirm() {

            var strreturn = false;

            var radios = document.getElementsByName("Questions");

            for (var i = 0, len = radios.length; i < len; i++) {
                if (radios[i].checked) {
                    strreturn = true;
                }
            }


            if (strreturn == false) {
                alert("Please select an Answer before continuing.");
                return false;
            }


            //if (checklock() == false) {

            // alert("This Question is not released by the Teacher");
            //  return false;
            // }



            //var a = 0;
            //var strresponse = confirm("Are you sure you want to select this Answer?");

            //if (strresponse == true) {

            //   return true;

            //} else {

            //    return false;
            // }
            return true;

        }


        function checkconfirmtext() {

            var strreturn = true;



            var n = document.getElementById("Questions").value;
            if (n.length < 1) {
                strreturn = false;
            }


            if (strreturn == false) {
                alert("Please Enter an Answer before continuing.");
                return false;
            }


            var a = 0;
            // var strresponse = confirm("Are you sure you want to select this Answer?");

            // if (strresponse == true) {

            //  return true;

            // } else {

            // return false;
            //}
            return true;

        }
    </script>


    <script type="text/javascript">
        {$showhidetimer}
    </script>

    <script type="text/javascript">
        function timercheck() {

            if (document.getElementById("message").value == "") {
                myFunc();
            }
        }


        function move() {

            //div.scrollByLines(2);
            var divframe = document.getElementById('popup-messagearea');
            divframe.scrollTop = divframe.scrollHeight;

        }

        //function to open and close chat

        $(function() {
            $("#addClass").click(
                function() {
                    $('#qnimate').addClass('popup-box-on');


                    keepgoing = true;

                    document.getElementById("message").focus();

                    document.getElementById("message").value = "";

                    myFunc();

                    move();






                });

            $("#removeClass").click(
                function() {
                    $('#qnimate').removeClass('popup-box-on');

                    keepgoing = false;

                });



        })

        //enter key function 
        $(document).on("keyup", function(e) {
            var key = e.which;

            if (key == 13) // the enter key ascii code
            {
                myFunc();
            }
        });


        //function to get data






        //scroll
        move();
    </script>


    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }