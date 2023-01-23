{include file="headerteacher.tpl" }

<body>

    {include file="headerteachersidemenu.tpl" }

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>{$title}</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="indexteacher2021.php">Home</a></li>

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
                            <h5 class="card-title">Bank Statements</h5>

                            <p class="small fst-italic">Click to <a
                                    href="teacher_Banksearch2021.php?monthend=paycheck">Add</a> Paychecks for all
                                Students
                            </p>
                            <p class="small fst-italic">Click to <a
                                    href="teacher_Banksearch2021.php?monthend=rent">Add</a> Rent
                                for All Students
                            </p>
                            <br><br>

                            <b>Select Grade</b> {$gradebuttons}
                            <br>


                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <td>Student #</td>
                                        <td>Student</td>
                                        <td>Grade</td>
                                        <td>Current Balance</td>
                                        <td>Coins</td>

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