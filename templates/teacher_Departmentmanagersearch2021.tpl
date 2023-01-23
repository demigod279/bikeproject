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
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">


                            <h3>Department Manager</h3>

                        </div>
                    </div>

                    <div class="btn-group">
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#removestudent">
                            Remove Department
                        </button>&nbsp;&nbsp;
                        <div class="modal fade" id="removestudent" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Remove Department</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure you want to completely Delete this Record?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger"
                                            href="teacher_departmentmanagersearch2021.php?remove=true&id={$id}"
                                            role="button">Remove Department</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End Basic Modal-->


                    </div>
                    <hr>

                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Departments &nbsp;&nbsp;<a class="btn btn-primary"
                                    href="teacher_departmentmanagersearch2021.php?add=true" role="button">Add Department
                                </a></h5>
                            <div style="width: 100%; height: 490px; overflow-y: scroll; overflow-x: hidden">
                                <div class="container testimonial-group">


                                    {$departmentlist}


                                </div>
                            </div>

                        </div>


                    </div><!-- End Sales Card -->




                </div>

                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->
                            <ul class="nav nav-tabs nav-tabs-bordered">

                                <li class="nav-item">
                                    <button class="nav-link active" data-bs-toggle="tab"
                                        data-bs-target="#profile-general">General
                                    </button>
                                </li>




                            </ul>

                            <div class="tab-pane fade show active profile-general" id="profile-general">

                                <br>

                                <form action="teacher_departmentmanagersearch2021.php" method="post" id="tab_general">

                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Department</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_code}
                                        </div>
                                    </div>



                                    <div class="row mb-3">
                                        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                            Description</label>
                                        <div class="col-md-8 col-lg-9">
                                            {$general_description}
                                        </div>
                                    </div>




                                    <input type="hidden" value="{$id}" id="id" name="id" />

                                    <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                        name="general_schoolno" />

                                    <input type="hidden" value="general" id="tab" name="tab" />

                                    <div class="text-center">
                                        <button type="submit" value="{$mode}" id="{$mode}" name="{$mode}"
                                            class="btn btn-primary">Save Changes</button>
                                    </div>
                                </form><!-- End Profile Edit Form -->

                            </div>


                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
            </div>
            </div>
        </section>



    </main><!-- End #main -->

{include file="teacherfooter.tpl" }