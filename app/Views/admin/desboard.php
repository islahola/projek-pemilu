<?= $this->extend('templates/index'); ?>
<?= $this->section('content'); ?>
<div class="container ">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            Partai
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="#">Partai Kuning</a></li>
            <li><a class="dropdown-item" href="#">Partai Merah</a></li>
            <li><a class="dropdown-item" href="#">Partai Hitam</a></li>
        </ul>
    </div>
    <div class="box d-flex">
        <div class="totalPartai mx-5 d-flex">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title mt-4">Total Suara</h5>
                    <h5 class="card-title">Partai</h5>
                </div>
            </div>
            <div class="card" style="width: 8rem;">
                <div class="card-body">
                    <h5 class="card-title mx-3 mt-5">XXX</h5>
                </div>
            </div>
        </div>
        <div class="totalTps">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Total TPS</h5>
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
                <th scope="col">Jumlah</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($formulir as $form) :  ?>
                <tr>
                    <th scope="row">1</th>
                    <td><?= $form['partai']; ?></td>
                    <td>100</td>
                </tr>
            <?php endforeach; ?>

        </tbody>
    </table>

</div>
<?= $this->endSection(); ?>