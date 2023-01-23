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
                            <h5 class="card-title">School List <span>| Today - {$todaydate}</span>

                            </h5>



                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">School #</th>
                                        <th scope="col">School</th>
                                        <th scope="col">Phone #</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">City</th>
                                        <th scope="col">State</th>
                                        <th scope="col">Type</th>
                                        <th scope="col">District</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$schoollist}

                                </tbody>
                            </table>

                        </div>

                    </div>
                </div><!-- End Recent Sales -->
            </div>
        </section>



    </main><!-- End #main -->
{include file="teacherfooter.tpl" }