<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home | User</title>

    <!-- Custom fonts for this template-->
    <link href="<?= base_url(); ?>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url(); ?>/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <div class="container d-flex justify-content-center pt-5 px-5">
        <div class="card " style="width: 28rem;">
            <div class="card-body">
                <h5 class="card-title text-center">Formulir Pendaftaran</h5>
                <hr class="sidebar-divider d-none d-md-block">
                <h6 class="card-subtitle mb-2 text-center text-muted"><?= $_POST['kelurahan']; ?> / <?= $_POST['tps']; ?></h6>
                <hr class="sidebar-divider d-none d-md-block">
                <div style="margin-left:-0.1rem;" class="partai d-flex justify-content-center">
                    <p style="padding-right:2.9rem;">Partai: </p>
                    <p><?= $_POST['partai']; ?></p>
                </div>
                <div style="margin-left:0.3rem;" class="calon d-flex justify-content-center">
                    <p style="padding-right:2rem;">Calon 1 : </p>
                    <p><?= $_POST['calon1']; ?></p>
                </div>
                <div class="calon d-flex justify-content-center">
                    <p style="padding-right:2rem;">Calon 2 : </p>
                    <p><?= $_POST['calon2']; ?></p>
                </div>
                <div class="calon d-flex justify-content-center">
                    <p style="padding-right:2rem;">Calon 3 : </p>
                    <p><?= $_POST['calon3']; ?></p>
                </div>
                <div style="margin-left:-1rem;" class="status d-flex justify-content-center">
                    <p style="padding-right:2.5rem;">Status : </p>
                    <p><?= $_POST['status']; ?></p>
                </div>
                <a style="margin-left:17.5rem;" class="btn btn-primary" href="<?= base_url('logout'); ?>">Logout</a>

            </div>

        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url(); ?>/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url(); ?>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url(); ?>/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url(); ?>/js/sb-admin-2.min.js"></script>

</body>

</html>