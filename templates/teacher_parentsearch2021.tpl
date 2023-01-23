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
                    <a class="btn btn-primary" href="teacher_studentprofileadd2021.php?search=add" role="button">Add
                        Student</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_parentsearch2021.php?search=all"
                        role="button">All</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_parentsearch2021.php?search=active"
                        role="button">Active</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_parentsearch2021.php?search=notactive" role="button">Not
                        Active</a>&nbsp;&nbsp;&nbsp;
                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">



                        <div class="card-body">
                            <h5 class="card-title">Parent List <span>| Today - {$todaydate}</span>
                                <p class="small fst-italic">Click to <a
                                        href="teacher_parentreport2021.php?teacherno={$teacherno}&search={$searchtype}&grade={$grade}"
                                        target="_blank">Print</a> results in a Report
                                </p>
                                <p class="small">Select Grade Filter - {$gradebuttons} </p>
                            </h5>



                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Action</th>
                                        <th scope="col">Parent 1</th>
                                        <th scope="col">Parent 2</th>
                                        <th scope="col">Student</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Cell</th>
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