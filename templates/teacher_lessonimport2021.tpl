{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <script type="text/javascript">
        function eraseCookie(name) {
            document.cookie = name + '=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
        }

        function setCookie(name, value, days) {
            var expires = "";
            if (days) {
                var date = new Date();
                date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                expires = "; expires=" + date.toUTCString();
            }
            document.cookie = name + "=" + (value || "") + expires + "; path=/";
        }

        function getCookie(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
            }
            return null;
        }

        var yourGlobalVariable = "";

        function openmodal(lessonno) {

            yourGlobalVariable = lessonno;

            eraseCookie("lessonno");

            setCookie("lessonno", lessonno, 1);

            //alert(getCookie("lessonno"));

            $('#verticalycenteredbook').attr('src', '');
            var iframe = document.getElementById('frameUserInfo');
            iframe.src = iframe.src;


            $('#verticalycenteredbook').modal('show');

        }

        function getGlobal() {
            return yourGlobalVariable;
        }
    </script>


    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_classview2021.php?classno={$classno}">Class
                            View</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <div class="modal fade" id="verticalycenteredbook" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Teacher Book</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <iframe width='100%' height='600px' id='frameUserInfo'
                            src='report_student_lessonbookformimport.php?classno={$classno}' frameborder='0'
                            scrolling='yes' marginheight='10' marginwidth='10'>
                        </iframe>
                    </div>
                    <div class="modal-footer">

                        <a class="btn btn-info"
                            href="report_student_lessonbookformimport.php?search=test&classno={$classno}"
                            target="_blank" role="button">Print View</a>&nbsp;&nbsp;
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>


                    </div>
                </div>

            </div>
        </div><!-- End Extra Large Modal-->

        <section class="section profile">
            <div class="row">
                <div class="btn-group">
                    <a class="btn btn-primary"
                        href="teacher_lessonadd2021.php?search=add&classno={$classno}&categoryno={$categoryno}"
                        role="button">ADD
                    </a>&nbsp;&nbsp;
                    <a class="btn btn-primary"
                        href="teacher_lessonimport2021.php?search=category&classno={$classno}&categoryno={$categoryno}&filtercategoryno={$categoryno}"
                        role="button">{$unitname}</a>&nbsp;&nbsp;
                    <a class="btn btn-primary"
                        href="teacher_lessonimport2021.php?search=subject&classno={$classno}&categoryno={$categoryno}&subject={$subject}"
                        role="button">{$subject}</a>&nbsp;&nbsp;
                    <a class="btn btn-primary"
                        href="teacher_lessonimport2021.php?search=grade&classno={$classno}&categoryno={$categoryno}&grade={$grade}&filtergrade={$grade}"
                        role="button">GRADE {$grade}</a>&nbsp;&nbsp;
                    <a class="btn btn-primary"
                        href="teacher_lessonimport2021.php?search=all&classno={$classno}&categoryno={$categoryno}"
                        role="button">{$grade} - {$subject}</a>&nbsp;&nbsp;
                    <a class="btn btn-primary"
                        href="teacher_lessonimport2021.php?search=recent&classno={$classno}&categoryno={$categoryno}"
                        role="button">RECENT</a>
                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Lesson List | {$class}
                            </h5>
                            <h4>{$message}</h4>
                            <h5 class="card-title">Unit Importing into | {$unitname}&nbsp;&nbsp;

                            </h5>
                            <p class="small">Select Grade Filter for {$subject} - {$gradebuttons} </p>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Import</th>
                                        <th scope="col">Import</th>
                                        <th scope="col">Book</th>
                                        <th scope="col">Lesson #</th>
                                        <th scope="col">Lesson</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Chapter</th>
                                        <th scope="col">Unit</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">Concepts</th>
                                        <th scope="col">Test</th>
                                        <th scope="col">Creator</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$lessonlist}

                                </tbody>
                            </table>

                        </div>

                    </div>
                </div><!-- End Recent Sales -->
            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }