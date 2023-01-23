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
                            <h5 class="card-title">Training Videos and Podcasts <span>| Today - {$todaydate}</span>


                            </h5>



                            <p><iframe
                                    src="https://anchor.fm/earley-life-science/embed/episodes/Introduction-to-iLearningSystem-for-Teachers-e1heflu"
                                    width="400px" height="102px" frameborder="0" scrolling="no"></iframe></p>

                        </div>

                    </div>
                </div><!-- End Recent Sales -->
            </div>
        </section>



    </main><!-- End #main -->
{include file="teacherfooter.tpl" }