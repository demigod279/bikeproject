{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_classedit2021.php?classno={$classno}">Class
                            Edit</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->




        <section class="section profile">
            <div class="row">
                <div class="btn-group">
                    <a class="btn btn-primary" href="teacher_lessonadd2021.php?search=add&classno={$classno}"
                        role="button">Add
                        Lesson</a>&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_lessonsearch2021.php?search=all&classno={$classno}"
                        role="button">All</a>&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_lessonsearch2021.php?search=active&classno={$classno}"
                        role="button">Active</a>&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_lessonsearch2021.php?search=notactive&classno={$classno}"
                        role="button">Not
                        Active</a>&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_lessonsearch2021.php?search=test&classno={$classno}"
                        role="button">Tests</a>&nbsp;&nbsp;
                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Lesson List | {$class}
                            </h5>
                            <p class="small fst-italic">Click to <a
                                    href="teacher_lessonreport2021.php?classno={$classno}&search={$searchtype}"
                                    target="_blank">Print</a> results in a Report
                            </p>
                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Lesson #</th>
                                        <th scope="col">Lesson</th>
                                        <th scope="col">Chapter</th>
                                        <th scope="col">Unit</th>
                                        <th scope="col">Due Date</th>
                                        <th scope="col">Concepts</th>
                                        <th scope="col">Active</th>
                                        <th scope="col">Test</th>
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