<ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fa fa-handshake-o" aria-hidden="true"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Pemilihan | Ciputat</div>
    </a>

    <?php if (in_groups('admin')) : ?>
        <hr class="sidebar-divider">
        <!-- desborad -->
        <div class="sidebar-heading">
            My List
        </div>

        <!-- Nav Item - Profile -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('Admin/desboard'); ?>">
                <i class="fa fa-users" aria-hidden="true"></i>
                <span>Desboard</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('Admin/saksi'); ?>">
                <i class="fa fa-users" aria-hidden="true"></i>
                <span>Saksi TPS</span></a>
        </li>

    <?php endif; ?>

    <!-- Divider -->
    <?php if (in_groups('user')) : ?>
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            My Profile
        </div>

        <!-- Nav Item - Profile -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('User'); ?>">
                <i class="fa fa-user" aria-hidden="true"></i>
                <span>Profile</span></a>
        </li>

        <!-- Nav Item - Regis -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('User/form'); ?>">
                <i class="fas fa-fw fa-table"></i>
                <span>Form Regis</span></a>
        </li>
    <?php endif; ?>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('logout'); ?>">
            <i class="fa fa-sign-out"></i>
            <span>Logout</span></a>
    </li>
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>