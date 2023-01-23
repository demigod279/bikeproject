{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item active"><a
                            href="teacher_classview2021.php?classno={$classno}">Classroom</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">

                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">



                        <div class="card-body">
                            <h5 class="card-title">{$class} Grades <span> | Today - {$todaydate} {$class}</span>
                                <p class="small fst-italic">Click to <a
                                        href="teacher_studentreport2021.php?teacherno={$teacherno}&search={$searchtype}&grade={$grade}"
                                        target="_blank">Print</a> results in a Report
                                </p>
                                <p class="small">Select Grade Filter - {$gradebuttons} </p>
                            </h5>


                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>

                                        <th scope="col">Student</th>
                                        <th scope="col">Report</th>
                                        <th scope="col">Exams</th>
                                        <th scope="col">Lessons</th>
                                        <th scope="col">Homework</th>
                                        <th scope="col">Participation</th>
                                        <th scope="col">Coins</th>
                                        <th scope="col">Final</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$studentlist}

                                </tbody>
                            </table>

                        </div>

                    </div>
                </div><!-- End Recent Sales -->
            </div>
        </section>



    </main><!-- End #main -->
{include file="teacherfooter.tpl" }