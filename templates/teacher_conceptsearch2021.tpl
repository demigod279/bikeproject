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
                    <li class="breadcrumb-item"><a
                            href="teacher_lessonedit2021.php?classno={$classno}&lessonno={$lessonno}">Lesson
                            Edit</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->




        <section class="section profile">
            <div class="row">
                <div class="btn-group">
                    <a class="btn btn-primary"
                        href="teacher_conceptadd2021.php?search=add&classno={$classno}&lessonno={$lessonno}"
                        role="button">Add Concept
                        Lesson</a>&nbsp;&nbsp;

                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Concept List | {$class} - {$lesson}
                            </h5>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Concept #</th>
                                        <th scope="col">Concept</th>
                                        <th scope="col">Standard</th>
                                        <th scope="col">Category</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    {$conceptlist}

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