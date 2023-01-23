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
                            <br>
                            <h3 class="content-title"> Stock Summary for {$studentname}</h3> </br>

                            <div class="panel panel-default">


                                <div class="panel-body">
                                    <table class="table">
                                        <tbody>

                                            {$BankStatementSummary}

                                        </tbody>
                                    </table>
                                </div>


                            </div>



                            <h3 class="content-title"> Detail Stock Transactions for {$UserName}</h3> </br>

                            <div class="panel panel-default">


                                <div class="panel-body">
                                    <br>
                                    <h5 class="card-title">Bank Statement as of <span>| Today - {$todaydate}</span></h5>

                                    <table class="table table-borderless datatable">
                                        <thead>
                                            <tr>
                                                <td>Buy/Sell</td>
                                                <td>Symbol</td>
                                                <td>Company</td>
                                                <td>Shares</td>
                                                <td>Price</td>
                                                <td>Buy Price</td>
                                                <td>Sell Price</td>
                                                <td>Date</td>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            {$BankStatement}

                                        </tbody>
                                    </table>




                                </div>


                            </div>

                        </div>

                    </div>
                </div><!-- End Recent Sales -->
            </div>
        </section>



    </main><!-- End #main -->

{include file="teacherfooter.tpl" }