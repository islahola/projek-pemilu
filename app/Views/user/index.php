<?= $this->extend('templates/index'); ?>
<?= $this->section('content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <?php if (in_groups('user')) : ?>
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Hallo, Selamat Datang!</h4>
            <p>Terimakasi telah mendaftar sebagai saksi, kami sangat senang anda telah berpartisipasi atas pemilihan tahun ini.</p>
            <hr>
            <p class="mb-0">Lakukan Registrasi formulir saksi jika anda belum melakukan, klik tombol dibawah ini</p>
            <button type="button" class="btn btn-primary mt-4">From regis</button>

        </div>
    <?php endif; ?>
    <?php if (in_groups('admin')) : ?>
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Hallo, Selamat Datang Admin!</h4>
            <p>Ini merupakan halaman Administator </p>
            <hr>
            <p class="mb-0">Untuk melihat desborad klik tombol dibawah ini</p>
            <a class="btn btn-primary mt-4" href="<?= base_url('Admin'); ?>">Desboard</a>

        </div>
    <?php endif; ?>
</div>
<?= $this->endSection(); ?>