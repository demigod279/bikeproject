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

        <div class="modal fade" id="popupadd" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add a Transaction</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <h4 class="modal-title">Enter a new Transaction</h4>
                        <div class="share-widget clearfix">
                            <form action="teacher_studentbank2021.php?transaction=add" method="post">


                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Description
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="description" id="description" type="text" value="">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Earned Amount
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="credit" id="credit" type="text" value="">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Spent Amount
                                    </label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="debit" id="debit" type="text" value="">
                                    </div>
                                </div>


                                <input name="studentno" name="studentno" type="hidden" value="{$studentno}">

                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-secondary" id="save" name="save"
                                        value="Save">Save</button>&nbsp;&nbsp;&nbsp;
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Cancel</button>

                                </div>




                            </form>
                        </div> <!-- /.share-widget -->




                    </div>
                </div>
            </div><!-- End Extra Large Modal-->
        </div>

        <section class="section profile">
            <div class="row">




                <!-- Recent Sales -->
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Bank Statement for {$studentname}</h5>

                            <a class="nav-link collapsed" data-bs-toggle="modal" data-bs-target="#popupadd">
                                <span>Click to Add a Transaction</span>
                            </a>

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <td>Date</td>
                                        <td>Description</td>
                                        <td>Class #</td>
                                        <td>Lesson #</td>
                                        <td>Earned</td>
                                        <td>Spent</td>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$BankStatement}

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