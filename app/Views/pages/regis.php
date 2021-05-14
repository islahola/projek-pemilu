<?= $this->extend('pages/tamplate/index'); ?>
<?= $this->section('content'); ?>
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center  ">

        <div class="col-xl-10 col-lg-12 col-md-9 ">

            <div class="card o-hidden border-0 shadow-lg my-5 ">
                <div class="card-body p-0 mt-3">
                    <!-- Nested Row within Card Body -->
                    <div class="row d-flex align-items-center">
                        <div class="col-lg-6 bg-danger align-items-center d-flex justify-content-center">
                            <img class="pt-4 pb-4" style="width : 250px; height: 250px;" src="\img\logo.png" alt="">
                            <div class="teks text-white">
                                <h2>Komisi pemilihan umum</h2>
                                <p>kota tanggerang selatan</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Silahkan Registrasi</h1>
                                </div>
                                <?= view('Myth\Auth\Views\_message_block') ?>
                                <form action="<?= route_to('register') ?>" method="post">
                                    <?= csrf_field() ?>
                                    <div class="form-group">
                                        <label for="username">NIK</label>
                                        <input type="text" class="form-control <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" placeholder="Masukan NIK anda" value="<?= old('username') ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="email">Nama Lengkap</label>
                                        <input type="text" class="form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" name="email" aria-describedby="emailHelp" placeholder="Masukan nama lengkap anda" value="<?= old('email') ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="password"><?= lang('Auth.password') ?></label>
                                        <input type="password" name="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>" autocomplete="off">
                                    </div>

                                    <div class="form-group">
                                        <label for="pass_confirm"><?= lang('Auth.repeatPassword') ?></label>
                                        <input type="password" name="pass_confirm" class="form-control <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.repeatPassword') ?>" autocomplete="off">
                                    </div>

                                    <br>

                                    <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.register') ?></button>
                                </form>

                                <hr>
                                <div class="text-center">
                                    <?php if ($config->allowRegistration) : ?>
                                        <p><a href="<?= route_to('register') ?>"><?= lang('Auth.needAnAccount') ?></a></p>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
<?= $this->endSection(); ?>