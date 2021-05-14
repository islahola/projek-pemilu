<?= $this->extend('templates/index'); ?>
<?= $this->section('content'); ?>
<div class="container px-5">

    <!-- Page Heading -->
    <h2 class="text-center">Formulir Pemungutan Suara</h2>
    <form action="/User/save" method="POST">
        <?= csrf_field(); ?>
        <div class="mb-3">
            <input type="hidden" value="<?= user()->email; ?>" class="form-control" name="user-id">
        </div>
        <div class="mb-3">
            <input type="hidden" value="<?= user()->username; ?>" class="form-control" name="nik">
        </div>
        <div class="mb-3">
            <label for="kelurahan" class="form-label">kelurahan</label>
            <input type="text" class="form-control" name="kelurahan" id="kelurahan">
        </div>
        <div class="mb-3">
            <label for="tps" class="form-label">TPS</label>
            <input type="text" class="form-control" name="tps" id="tps">
        </div>
        <div class="mb-3">
            <label for="partai" style="padding-right:2.8rem;" class="form-label ">Partai</label>
            <select id="partai" name="partai" class="form-select ps-5">
                <option>partai kuning</option>
                <option>partai Merah</option>
                <option>partai Hitam</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="calon1" style="padding-right:2rem;" class="form-label">Calon 1</label>
            <select id="calon1" name="calon1" class="form-select ">
                <option>Asep kuning</option>
                <option>Kurniawan Merah</option>
                <option>Rangga Hitam</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="Calon2 " style="padding-right:2rem;" class="form-label ">Calon 2</label>
            <select id="Calon2" name="calon2" class="form-select ps-5">
                <option>Asep kuning</option>
                <option>Kurniawan Merah</option>
                <option>Rangga Hitam</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="calon3" style="padding-right:2rem;" class="form-label ">Calon 3</label>
            <select id="calon3" name="calon3" class="form-select ps-5">
                <option>Asep kuning</option>
                <option>Kurniawan Merah</option>
                <option>Rangga Hitam</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="status" style="padding-right:2.5rem;" class="form-label ">Status</label>
            <select id="status" class="form-select ps-5" name="status">
                <option>Sah</option>
                <option>Tidak Sah</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Kirim</button>
    </form>
</div>
<?= $this->endSection(); ?>