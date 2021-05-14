<?= $this->extend('templates/index'); ?>
<?= $this->section('content'); ?>
<div class="container ">
    <div class="box d-flex">
        <div class="totalPartai mx-5 d-flex">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title mt-4">Jumlah Saksi</h5>
                    <h5 class="card-title">TPS</h5>
                </div>
            </div>
            <div class="card" style="width: 8rem;">
                <div class="card-body">
                    <h5 class="card-title mx-3 mt-5"><?= $tot_saksi; ?></h5>
                </div>
            </div>
        </div>
        <div class="totalTps">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Saksi TPS Kosong</h5>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title mx-3 mt-3">XXX TPS</h5>
                </div>
            </div>
        </div>
    </div>
    <table style="width: 750px !important ;" class="table table-bordered table-light mt-4 mx-5">
        <thead>
            <tr>
                <th colspan="3" class="text-center bg-danger text-white" scope="col">Daftar Nama Saksi TPS</th>
            </tr>
        </thead>
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Nama</th>
                <th scope="col">Kel/TPS</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($formulir as $form) :  ?>
                <tr>
                    <td><?= $form['nik']; ?></td>
                    <td><?= $form['user-id']; ?></td>
                    <td><?= $form['kelurahan']; ?> / <?= $form['tps']; ?></td>
                </tr>

            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<?= $this->endSection(); ?>