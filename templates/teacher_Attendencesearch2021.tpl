{include file="headerteacher.tpl" }

<style>
    .option-input.radio {
        border-radius: 50%
    }

    .option-input.radio::after {
        border-radius: 50%
    }
</style>


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


                    <a class="btn btn-primary"
                        href="teacher_attendencesearch2021.php?attendance=allpresent&grade={$grade}&date={$date}"
                        role="button">Mark All Present</a>&nbsp;&nbsp;&nbsp;
                    <a class="btn btn-primary"
                        href="teacher_attendencesearch2021.php?attendance=clear&grade={$grade}&date={$date}"
                        role="button">Clear All</a>&nbsp;&nbsp;&nbsp;
                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">




                        <div class="card-body">
                            <h5 class="card-title">Student List <span>| Today - {$todaydate}</span>
                                <p class="small fst-italic">Click to <a
                                        href="teacher_attendencereport2021.php?teacherno={$teacherno}&search={$searchtype}&grade={$grade}&date={$date}"
                                        target="_blank">Print</a> Attendance Report
                                </p>
                                <p class="small fst-italic">Click to <a
                                        href="teacher_lunchreport2021.php?teacherno={$teacherno}&search={$searchtype}&grade={$grade}&date={$date}"
                                        target="_blank">Print</a> Lunch Report
                                </p>

                                <p class="small">Select Grade Filter - {$gradebuttons} </p>

                                <form action="teacher_attendencesearch2021.php" method="post" id="tab_date">


                                    <div class="w-200 p-3">
                                        <p class="small w-200 p-3"> {$attendancedate} </p>&nbsp;&nbsp;&nbsp;

                                        <input type="hidden" value="{$grade}" id="grade" name="grade" />

                                        <button type="submit" value="search" id="search" name="search"
                                            class="btn btn-primary">Select Date
                                        </button>
                                    </div>
                                </form>




                        </div>
                        </h5>

                        <form action="teacher_attendencesearch2021.php" method="post" id="tab_SUBMIT">

                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Student</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Lunch</th>
                                        <th scope="col">Special</th>
                                        <th scope="col">Salad</th>
                                        <th scope="col">Drink</th>
                                        <th scope="col">Absent</th>
                                        <th scope="col">Tardy</th>
                                        <th scope="col">Present</th>
                                        <th scope="col">Date</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$studentlist}

                                </tbody>
                            </table>

                            <input type="hidden" value="{$grade}" id="grade" name="grade" />
                            <input type="hidden" value="{$date}" id="attendancedate" name="attendancedate" />

                            <button type="submit" value="update" id="update" name="update" class="btn btn-primary">Save
                                Attendance </button>

                        </form>
                    </div>

                </div>
            </div><!-- End Recent Sales -->
            </div>
        </section>




    </main><!-- End #main -->
{include file="teacherfooter.tpl" }