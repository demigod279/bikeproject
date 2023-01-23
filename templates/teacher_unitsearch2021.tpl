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
                    <li class="breadcrumb-item active">{$title}</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->




        <section class="section profile">
            <div class="row">
                <div class="btn-group">
                    <a class="btn btn-primary" href="teacher_unitadd2021.php?search=add&classno={$classno}"
                        role="button">Add
                        Unit</a>&nbsp;&nbsp;
                    <a class="btn btn-primary" href="teacher_classview2021.php?search=add&classno={$classno}"
                        role="button">Class View</a>&nbsp;&nbsp;
                </div>
                <!-- Recent Sales -->
                <div class="col-12">
                    <div class="card recent-sales">

                        <div class="card-body">
                            <h5 class="card-title">Unit List | {$class}
                            </h5>
                            <p class="small fst-italic">Click to <a
                                    href="teacher_unitreport2021.php?classno={$classno}&search={$searchtype}"
                                    target="_blank">Print</a> results in a Report. <a
                                    href="teacher_unitreport2021.php?detail=true&classno={$classno}&search={$searchtype}"
                                    target="_blank">Detail Report</a>
                            </p>
                            <table class="table table-borderless datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">Category #</th>
                                        <th scope="col">Unit #</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">Grade</th>
                                        <th scope="col">Subject</th>
                                        <th scope="col">Start Date</th>
                                        <th scope="col">End Date</th>
                                        <th scope="col">Active</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {$unitlist}

                                </tbody>
                            </table>

                        </div>

                    </div>
                </div><!-- End Recent Sales -->
            </div>
        </section>



    </main><!-- End #main -->

{include file="teacherfooter.tpl" }