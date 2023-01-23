{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_studentprofile2021.php?studentno={$studentno}">Student
                            Profile</a>
                    </li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">

                <!-- Recent Sales -->
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">



                        <div class="card-body">
                            <h5 class="card-title">{$classname} <span>| Today - {$todaydate}</span></h5>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Date/Time</th>
                                        <th scope="col">Unit #</th>
                                        <th scope="col">Lesson</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$recentlessons}

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