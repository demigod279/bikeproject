{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>
                    <li class="breadcrumb-item"><a href="teacher_standardsearch2021.php">Standards
                            Search</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">


                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->


                            <!-- Profile Edit Form -->
                            <form action="teacher_standardedit2021.php" method="post">


                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">School #
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$standard}
                                    </div>
                                </div>



                                <div class="row mb-3">
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">Subject
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$subject}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">Grade</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$grade}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Job" class="col-md-4 col-lg-3 col-form-label">Category</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$category}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Country" class="col-md-4 col-lg-3 col-form-label">Sub Category</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$subcategory}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Address" class="col-md-4 col-lg-3 col-form-label">Description</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$description}
                                    </div>
                                </div>





                                <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />
                                <input type="hidden" value="{$blogid}" id="blogid" name="blogid" />


                                <div class="text-center">
                                    <button type="submit" value="Save" id="save" name="save"
                                        class="btn btn-primary">Save Changes</button>&nbsp;&nbsp;&nbsp;&nbsp;

                                    <a class="btn btn-secondary"
                                        href="teacher_standardedit2021.php?remove=true&blogid={$blogid}"
                                        role="button">Remove
                                    </a>
                                </div>
                            </form><!-- End Profile Edit Form -->

                        </div>
                    </div>

                </div>
            </div>
        </section>



    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
{include file="teacherfooter.tpl" }