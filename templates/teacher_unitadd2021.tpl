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
                    <li class="breadcrumb-item"><a href="teacher_unitsearch2021.php?classno={$classno}">Unit
                            Search</a></li>
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->





        <section class="section profile">
            <div class="row">
                <div class="col-xl-4">

                    <div class="card">
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                            <img src="{$uploadpath}{$classimage}" alt="Profile" class="rounded-circle">
                            <h2>{$class}</h2>
                            <h3>Unit Add</h3>
                            <h2>{$message}</h2>
                        </div>
                    </div>


                    <!-- Sales Card -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Current Class Units &nbsp;&nbsp;</h5>
                            <p class="small fst-italic">Click to <a
                                    href="teacher_unitadd2021.php?classno={$classno}&rebuild=true">Rebuild Unit list
                                    from Lessons</a></p>

                            <form action="teacher_unitadd2021.php" method="post" id="importunit">

                                <select class="form-select" aria-label="Select Year" id="importyear" name="importyear">
                                    <option selected>{$year_selected}</option>
                                    {$Years}

                                </select>


                                <select class="form-select" aria-label="Select Term" id="importterm" name="importterm">
                                    <option selected>{$term_selected}</option>
                                    {$Terms}

                                </select>
                                <br><br>

                                <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                <button type="submit" value="Import Units" id="import" name="import"
                                    class="btn btn-primary">Import
                                    Units from Term Selected</button>


                            </form>


                            <div style="width: 100%; height: 490px; overflow-y: scroll; overflow-x: hidden">
                                <div class="container testimonial-group">


                                    {$unitlist}


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
                                        data-bs-target="#profile-general">General</button>
                                </li>

                            </ul>


                            <br>


                            <form action="teacher_unitadd2021.php" method="post" id="tab_general">

                                <div class="row mb-3">
                                    <label for="company" class="col-md-4 col-lg-3 col-form-label">Active</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_active}
                                    </div>
                                </div>



                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">
                                        Unit #
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_unitno}
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Unit
                                        Name</label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_category}
                                    </div>
                                </div>




                                <div class="row mb-3">
                                    <label for="about" class="col-md-4 col-lg-3 col-form-label">Grade</label>
                                    <div class="col-md-8 col-lg-9">{$general_grade}</div>
                                </div>



                                <div class="row mb-3">
                                    <label for="schoolid" class="col-md-4 col-lg-3 col-form-label">Subject

                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_subject}

                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Start Date
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_unitstartdate}

                                    </div>

                                </div>


                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">End Date
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_unitduedate}

                                    </div>
                                </div>


                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Unit Link
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_unitlink}

                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="inputDate" class="col-md-4 col-lg-3 col-form-label">Google Drive
                                        Link
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        {$general_googleslide}

                                    </div>
                                </div>



                                <input type="hidden" value="{$classno}" id="general_classno" name="general_classno" />


                                <input type="hidden" value="{$classno}" id="classno" name="classno" />
                                <input type="hidden" value="{$schoolno}" id="schoolno" name="schoolno" />

                                <input type="hidden" value="general" id="tab" name="tab" />

                                <input type="hidden" value="{$schoolno}" id="general_schoolno"
                                    name="general_schoolno" />

                                <input type="hidden" value="general" id="tab" name="tab" />

                                <div class="text-center">
                                    <button type="submit" value="Add" id="add" name="add" class="btn btn-primary">Save
                                        Unit</button>
                                </div>
                            </form><!-- End Profile Edit Form -->



                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
            </div>
            </div>
        </section>



    </main><!-- End #main -->

{include file="teacherfooter.tpl" }