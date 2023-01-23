{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>

                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">
                <div class="btn-group">
                    <a class="btn btn-primary" href="teacher_classadd2021.php?search=add" role="button">Add
                        Class</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_classsearch2021.php?search=all"
                        role="button">All</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_classsearch2021.php?search=active"
                        role="button">Active</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_classsearch2021.php?search=notactive" role="button">Not
                        Active</a>&nbsp;&nbsp;&nbsp;
                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Class Search <span>| Today - {$todaydate}</span>
                                <p class="small fst-italic">Click to <a
                                        href="teacher_classreport2021.php?teacherno={$teacherno}&search={$searchtype}&grade={$grade}"
                                        target="_blank">Print</a> results in a Report
                                </p>
                                <p class="small">Select Grade Filter - {$gradebuttons} </p>
                            </h5>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Class #</th>
                                        <th scope="col">Class</th>
                                        <th scope="col">Department</th>
                                        <th scope="col">Code</th>
                                        <th scope="col">Period</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Teacher</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$classlist}

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