<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?= BASE_URL_ADMIN ?>" class="brand-link">
        <img src="uploads/logo/LOGO.png" alt=" Logo" class="brand-image" style="opacity: .8">
        <span class="brand-text font-weight-light">Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-5">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="<?= BASE_URL_ADMIN ?>" class="nav-link">
                        <i class="fas fa-home"></i>
                        <p>
                            Home
                        </p>
                    </a>
                </li>
                <li class="nav-item menu-open">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Quản Lý
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= BASE_URL_ADMIN . '?act=danh-muc'?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Quản Lý Danh Mục</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= BASE_URL_ADMIN . '?act=san-pham'?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Quản Lý Sản Phẩm</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item menu-open">
                    <a href="#" class="nav-link">
                        <i class="fas fa-users"></i>
                        <p>
                            Tài Khoản
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= BASE_URL_ADMIN . '?act=list-tai-khoan-quan-tri'?>" class="nav-link">
                                <i class="fas fa-user-circle"></i>
                                <p> Quản Trị Viên</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= BASE_URL_ADMIN . '?act=list-tai-khoan-khach-hang'?>" class="nav-link">
                                <i class="fas fa-user-circle"></i>
                                <p> Khách Hàng</p>
                            </a>
                        </li>
                        <!-- <li class="nav-item">
                            <a href="<?= BASE_URL_ADMIN . '?act=form-sua-thong-tin-ca-nhan-quan-tri' ?>"
                                class="nav-link">
                                <i class="fas fa-user-circle"></i>
                                <p> Cá Nhân</p>
                            </a>
                        </li> -->
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="<?= BASE_URL_ADMIN . '?act=don-hang'?>" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Quản Lý Đơn Hàng
                        </p>
                    </a>
                </li>


            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>