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

                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">



                        <div class="card-body">
                            <h5 class="card-title">Device List <span>| Today - {$todaydate}</span>
                                <br> <br>
                                <p class="small fst-italic">Click to <a href="indexdeviceprofileadd2021.php">Add</a> a
                                    New Device
                                </p>
                                <p class="small fst-italic">Click to <a href="teacher_devicereport2021.php"
                                        target="_blank">Print</a> a
                                    Report
                                </p>

                            </h5>



                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Action</th>
                                        <th scope="col">System #</th>
                                        <th scope="col">Device #</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Serial #</th>
                                        <th scope="col">Date Purchased</th>
                                        <th scope="col">Type</th>
                                        <th scope="col">Active</th>


                                    </tr>
                                </thead>
                                <tbody>

                                    {$devicelist}

                                </tbody>
                            </table>

                        </div>

                    </div>
                </div><!-- End Recent Sales -->
            </div>
        </section>



    </main><!-- End #main -->
{include file="teacherfooter.tpl" }