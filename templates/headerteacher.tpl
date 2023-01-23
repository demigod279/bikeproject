<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">


  <meta name="description"
    content="Learning Pods Management, Microschool, Pod Schools, LMS - Classroom Learning System designed to help teachers teach and students learn.  Free online system for Teachers to Manage Learning.  K-12 Free Online Private School">
  <meta name="keywords"
    content="iLearningSystem.com,Pod School,Microschool,Learning Pods,Microclassroom,Pod Classrooms,LMS,Online Classroom,Online Learning System,Learning Management System,Online Lessons,Online Quizes, Learning Online,Classroom Learning Online,K-12 Free Online School">
  <meta name="author" content="Vivaldi Systems">
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">


  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!--New -->




  <style>
    * {
      box-sizing: border-box;
    }

    /*adding for scrolling div*/

    /* The heart of the matter */
    .testimonial-group>.row {
      overflow-x: auto;
      white-space: nowrap;
    }

    .testimonial-group>.row>.col-sm-4 {
      display: inline-block;
      float: none;
    }

    /* Decorations */
    .col-sm-4 {
      color: #fff;
      font-size: 48px;
      padding-bottom: 20px;
      padding-top: 18px;
    }

    .col-sm-4:nth-child(3n+1) {
      background: #c69;
    }

    .col-sm-4:nth-child(3n+2) {
      background: #9c6;
    }

    .col-sm-4:nth-child(3n+3) {
      background: #69c;
    }



    /*the container must be positioned relative:*/
    .autocomplete {
      position: relative;
      display: inline-block;
    }

    input[type="text"] {
      width: 100%;
    }


    .autocomplete-items {
      position: absolute;
      border: 1px solid #d4d4d4;
      border-bottom: none;
      border-top: none;
      z-index: 99;
      /*position the autocomplete items to be the same width as the container:*/
      top: 100%;
      left: 0;
      right: 0;
    }

    .autocomplete-items div {
      padding: 10px;
      cursor: pointer;
      background-color: #fff;
      border-bottom: 1px solid #d4d4d4;
    }

    /*when hovering an item:*/
    .autocomplete-items div:hover {
      background-color: #e9e9e9;
    }

    /*when navigating through the items using the arrow keys:*/
    .autocomplete-active {
      background-color: DodgerBlue !important;
      color: #ffffff;
    }
  </style>

  <script>
    function autocomplete(inp, arr) {
      /*the autocomplete function takes two arguments,
  the text field element and an array of possible autocompleted values:*/
      var currentFocus;
      /*execute a function when someone writes in the text field:*/
      inp.addEventListener("input", function(e) {
        var a,
          b,
          i,
          val = this.value;
        /*close any already open lists of autocompleted values*/
        closeAllLists();
        if (!val) {
          return false;
        }
        currentFocus = -1;
        /*create a DIV element that will contain the items (values):*/
        a = document.createElement("DIV");
        a.setAttribute("id", this.id + "autocomplete-list");
        a.setAttribute("class", "autocomplete-items");
        /*append the DIV element as a child of the autocomplete container:*/
        this.parentNode.appendChild(a);
        /*for each item in the array...*/
        for (i = 0; i < arr.length; i++) {
          /*check if the item starts with the same letters as the text field value:*/
          if (
            arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()
          ) {
            /*create a DIV element for each matching element:*/
            b = document.createElement("DIV");
            /*make the matching letters bold:*/
            b.innerHTML =
              "<strong>" + arr[i].substr(0, val.length) + "</strong>";
            b.innerHTML += arr[i].substr(val.length);
            /*insert a input field that will hold the current array item's value:*/
            b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
            /*execute a function when someone clicks on the item value (DIV element):*/
            b.addEventListener("click", function(e) {
              /*insert the value for the autocomplete text field:*/
              inp.value = this.getElementsByTagName("input")[0].value;
              /*close the list of autocompleted values,
                (or any other open lists of autocompleted values:*/
              closeAllLists();
            });
            a.appendChild(b);
          }
        }
      });
      /*execute a function presses a key on the keyboard:*/
      inp.addEventListener("keydown", function(e) {
        var x = document.getElementById(this.id + "autocomplete-list");
        if (x) x = x.getElementsByTagName("div");
        if (e.keyCode == 40) {
          /*If the arrow DOWN key is pressed,
          increase the currentFocus variable:*/
          currentFocus++;
          /*and and make the current item more visible:*/
          addActive(x);
        } else if (e.keyCode == 38) {
          //up
          /*If the arrow UP key is pressed,
          decrease the currentFocus variable:*/
          currentFocus--;
          /*and and make the current item more visible:*/
          addActive(x);
        } else if (e.keyCode == 13) {
          /*If the ENTER key is pressed, prevent the form from being submitted,*/
          e.preventDefault();
          if (currentFocus > -1) {
            /*and simulate a click on the "active" item:*/
            if (x) x[currentFocus].click();
          }
        }
      });

      function addActive(x) {
        /*a function to classify an item as "active":*/
        if (!x) return false;
        /*start by removing the "active" class on all items:*/
        removeActive(x);
        if (currentFocus >= x.length) currentFocus = 0;
        if (currentFocus < 0) currentFocus = x.length - 1;
        /*add class "autocomplete-active":*/
        x[currentFocus].classList.add("autocomplete-active");
      }

      function removeActive(x) {
        /*a function to remove the "active" class from all autocomplete items:*/
        for (var i = 0; i < x.length; i++) {
          x[i].classList.remove("autocomplete-active");
        }
      }

      function closeAllLists(elmnt) {
        /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
        var x = document.getElementsByClassName("autocomplete-items");
        for (var i = 0; i < x.length; i++) {
          if (elmnt != x[i] && elmnt != inp) {
            x[i].parentNode.removeChild(x[i]);
          }
        }
      }
      /*execute a function when someone clicks in the document:*/
      document.addEventListener("click", function(e) {
        closeAllLists(e.target);
      });
    }
  </script>


  <script src="assets/vendor/tinymce/tinymce.min.js"></script>

  <script language="javascript" type="text/javascript">
    tinymce.init({
      selector: 'textarea',
      height: 500,
      menubar: false,
      theme_advanced_text_colors: "#ffffff,#C0C0C0,#e8e8e8"

    });
  </script>


  <meta name='viewport' content='initial-scale=1.0'>
  <style>
    * {
      margin: 0;
      padding: 0;
    }

    #myCanvas {
      cursor: crosshair;
      position: fixed;
    }
  </style>
  <script type='text/JavaScript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=1.4.2'>
  </script>
  <script type='text/javascript'>
    window.onload = function() {




      var myCanvas = document.getElementById('myCanvas');
      var ctx = myCanvas.getContext('2d');

      // Fill Window Width and Height
      myCanvas.width = 800;
      myCanvas.height = 510;

      // Set Background Color
      ctx.fillStyle = '#fff';
      ctx.fillRect(0, 0, myCanvas.width, myCanvas.height);

      // Mouse Event Handlers
      if (myCanvas) {
        var isDown = false;
        var canvasX, canvasY;
        ctx.lineWidth = 5;

        $(myCanvas)
          .mousedown(function(e) {
            isDown = true;
            ctx.beginPath();
            canvasX = e.pageX - myCanvas.offsetLeft;
            canvasY = e.pageY - myCanvas.offsetTop;
            ctx.moveTo(canvasX, canvasY);
          })
          .mousemove(function(e) {
            if (isDown !== false) {
              canvasX = e.pageX - myCanvas.offsetLeft;
              canvasY = e.pageY - myCanvas.offsetTop;
              ctx.lineTo(canvasX, canvasY);
              ctx.strokeStyle = '#000';
              ctx.stroke();
            }
          })
          .mouseup(function(e) {
            isDown = false;
            ctx.closePath();
          });
      }

      // Touch Events Handlers
      draw = {
        started: false,
        start: function(evt) {

          ctx.beginPath();
          ctx.moveTo(
            evt.touches[0].pageX,
            evt.touches[0].pageY
          );

          this.started = true;

        },
        move: function(evt) {

          if (this.started) {
            ctx.lineTo(
              evt.touches[0].pageX,
              evt.touches[0].pageY
            );

            ctx.strokeStyle = '#000';
            ctx.lineWidth = 5;
            ctx.stroke();
          }

        },
        end: function(evt) {
          this.started = false;
        }
      };


      // Touch Events
      myCanvas.addEventListener('touchstart', draw.start, false);
      myCanvas.addEventListener('touchend', draw.end, false);
      myCanvas.addEventListener('touchmove', draw.move, false);

      // Disable Page Move
      document.body.addEventListener('touchmove', function(evt) {
        evt.preventDefault();
      }, false);


      setupDoubleClick('https://dictionary.cambridge.org/', 'british', false, null, 5, 'popup');

      noBackPlease();

      // Disables backspace on page except on input fields and textarea..
      document.body.onkeydown = function(e) {
        var elm = e.target.nodeName.toLowerCase();
        if (e.which === 8 && (elm !== 'input' && elm !== 'textarea')) {
          e.preventDefault();
        }
        // Stopping the event bubbling up the DOM tree...
        e.stopPropagation();
      };


    };




    function clearcanvas() {

      var myCanvas = document.getElementById('myCanvas');
      let context = myCanvas.getContext('2d');

      context.clearRect(0, 0, myCanvas.width, myCanvas.height);
    };
  </script>

  <!-- =======================================================
  * Template Name: {$sitename} - v2.1.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/ theme_advanced_background_colors: "FF00FF,FFFF00,000000"
  ======================================================== -->
</head>