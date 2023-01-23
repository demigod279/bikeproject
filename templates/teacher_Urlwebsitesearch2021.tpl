{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="indexmanager2021.php">Computer Management</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">
                <div class="btn-group">
                    <a class="btn btn-primary" href="teacher_Urlsearch2021.php?add=true" role="button">Add
                        Website</a>&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_Urlwebsitesearch2021.php?search=all" role="button">Teacher
                        Sites</a>
                    &nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_Urlwebsitesearch2021.php?search=school" role="button">Our
                        School Sites</a>
                    &nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_Urlwebsitesearch2021.php?search=world"
                        role="button">Complete System
                        Sites</a>


                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Website Library Search <span>| Today - {$todaydate}</span>

                                <p class="small">Select Grade Filter - {$gradebuttons} </p>
                            </h5>



                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Action</th>
                                        <th scope="col">Import</th>
                                        <th scope="col">Title</th>
                                        <th scope="col">Teacher</th>
                                        <th scope="col">Subject</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">URL</th>
                                        <th scope="col">Description</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$urllist}

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