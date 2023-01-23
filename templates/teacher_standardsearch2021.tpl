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
                    <a class="btn btn-primary" href="teacher_standardadd2021.php?search=add" role="button">Add
                        Class</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_standardsearch2021.php?search=all"
                        role="button">All</a>&nbsp;&nbsp;&nbsp;

                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Standard Search <span>| Today - {$todaydate}</span>
                                <p class="small fst-italic">Click to <a
                                        href="teacher_standardreport2021.php?teacherno={$teacherno}&search={$searchtype}&grade={$grade}"
                                        target="_blank">Print</a> results in a Report
                                </p>
                                <p class="small">Select Grade Filter - {$gradebuttons} </p>
                            </h5>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Action</th>
                                        <th scope="col">Standard #</th>
                                        <th scope="col">Subject</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">Subcategory</th>
                                        <th scope="col">Description</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    {$standardlist}

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