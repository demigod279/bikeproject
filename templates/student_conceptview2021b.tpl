<!DOCTYPE html>
<html lang="en">

<head>




  <script type="text/javascript" src="https://dru69sbqnarp.cloudfront.net/releases/2021120601/js/mathjax.js"></script>

  <script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.6.1/MathJax.js?config=AM_HTMLorMML-full"></script>
  <script type="text/x-mathjax-config">
    MathJax.Hub.Register.StartupHook("End",function () {
        window.status = 'DONE'
    });
</script>



  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">







</head>

<body>





  <main id="main" class="main">



    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">




            <div class="row">
              <div class="col-xs-12 mt-1 mb-3">



                <form name="InnovakidsQuestion" action="{$phppage}" method="POST">
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
                    <input type="hidden" name="discussiontypeanswer" value="{$discussiontypeanswer}">
                    <input type="hidden" name="conceptkey" value="{$nextconceptkey}">

                    <input type="hidden" name="actualquestion" value="">


                    <input type="hidden" name="conceptkeysave" value="{$conceptkeysave}">

                    <input type="hidden" name="backconceptkey" value="{$backconceptkey}">
                    <div id="questionpost" style="display: block">
                      <h5> {$PracticeQuestion} Question # {$conceptno} of {$totalconceptsnumber} {$Questions} </h5>
                      <progress value="0" max="10" id="progressBarTimer"></progress>
                      </br>
                      [math]1 1/2[/math]
                      {$nextbutton}</br>
                    </div>
                    </br>
                    <p style="line-height: 70px; text-align: left;"><button type="button" class="btn btn-info"
                        data-toggle="modal" data-target="#myModalHint" {$HintDisabled}> &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;{$HintTitle} &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </button></p>

                    <div id="myModalHint" class="modal fade" tabindex="-1" role="dialog">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-body">
                            <h2>{$QuestionHint}</h2>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">
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

            </div>
          </div>


        </div>
      </div><!-- End Left side columns -->


    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }