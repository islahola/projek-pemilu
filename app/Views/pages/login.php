<?= $this->extend('pages/tamplate/index'); ?>
<?= $this->section('content'); ?>
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center mt-5 ">

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
                                    <h1 class="h4 text-gray-900 mb-4">Silahkan Login</h1>
                                </div>
                                <?= view('Myth\Auth\Views\_message_block') ?>
                                <form action="<?= route_to('login') ?>" method="post">
                                    <?= csrf_field() ?>

                                    <?php if ($config->validFields === ['username']) : ?>
                                        <div class="form-group">
                                            <label for="login">NIK</label>
                                            <input type="email" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" placeholder="Masukan NIK anda">
                                            <div class="invalid-feedback">
                                                <?= session('errors.login') ?>
                                            </div>
                                        </div>
                                    <?php else : ?>
                                        <div class="form-group">
                                            <label for="login">Masukan NIK anda</label>
                                            <input type="text" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" placeholder="Masukan NIK anda">
                                            <div class="invalid-feedback">
                                                <?= session('errors.login') ?>
                                            </div>
                                        </div>
                                    <?php endif; ?>

                                    <div class="form-group">
                                        <label for="password"><?= lang('Auth.password') ?></label>
                                        <input type="password" name="password" class="form-control  <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>">
                                        <div class="invalid-feedback">
                                            <?= session('errors.password') ?>
                                        </div>
                                    </div>

                                    <?php if ($config->allowRemembering) : ?>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked <?php endif ?>>
                                                <?= lang('Auth.rememberMe') ?>
                                            </label>
                                        </div>
                                    <?php endif; ?>

                                    <br>

                                    <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.loginAction') ?></button>
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