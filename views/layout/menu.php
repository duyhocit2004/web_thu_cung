<!-- Start Header Area -->
<header class="header-area header-wide">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top bdr-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message">
                            <p> ban chu cung </p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-right">
                        <div class="header-top-settings">
                            <ul class="nav align-items-center justify-content-end">
                                <li class="curreny-wrap">
                                    <i class="fas fa-user"></i> Tài Khoản
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list">
                                        <?php if (!isset($_SESSION['user_client'] )) {?>
                                        <li><a href="<?= BASE_URL . '?act=login' ?>">Hãy đăng nhập</a></li>
                                        <?php }else{?>


                                        <li><a href="#">Hồ Sơ</a></li>
                                        <li><a href="<?= BASE_URL . '?act=logout' ?>">Đăng Xuất</a></li>
                                        <?php  }?>
                                    </ul>
                                </li>
                                <li class="curreny-wrap">
                                    <i class="fa-solid fa-user-tie"></i> Admin
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list curreny-list">
                                        <li><a href="<?= BASE_URL_ADMIN . '?act=danh-muc' ?>">Trang Admin</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header top end -->

        <!-- header middle area start -->
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">

                    <!-- start logo area -->
                    <div class="col-lg-3 ">
                        <div class="logo">
                            <a href="<?= BASE_URL ?>">
                                <img src="uploads/logo/dog.png" width="60px" alt="Logo">
                                <img src="uploads/logo/LOGO.png" width="130px" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- main menu area start -->
                    <div class="col-lg-5 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li><a href="<?= BASE_URL ?>"><i class="fa-solid fa-house"></i>
                                                Trang Chủ
                                            </a>

                                        </li>
                                        <li><a href="<?= BASE_URL . '?act=all-san-pham'?>"><i
                                                    class="fa-solid fa-blender"></i> Sản
                                                Phẩm <i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown">
                                                <?php foreach ($listDanhMuc as $danhMuc):?>
                                                <li><a
                                                        href="<?= BASE_URL . '?act=all-san-pham'?>"><?= $danhMuc['ten_danh_muc']?></a>
                                                </li>
                                                <?php endforeach ?>
                                            </ul>
                                        </li>
                                        <li><a href="<?= BASE_URL . '?act=gioi-thieu' ?>"><i
                                                    class="fa-solid fa-credit-card"></i> Giới
                                                Thiệu</a></li>
                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
                    <!-- main menu area end -->

                    <!-- mini cart area start -->
                    <div class="col-lg-4">
                        <div class="d-flex align-items-center justify-content-end">
                            <div class="header-configure-area ">


                                <ul class="nav justify-content-end">
                                    <label for="">
                                        <?php if (isset($_SESSION['user_client'])) {?>
                                        Xin Chào <?php echo $_SESSION['user_client'] ?>
                                        <?php } ?>
                                    </label>
                                    <li class="user-hover">

                                        <a href="#">
                                            <i class="pe-7s-user"></i>
                                        </a>
                                        <ul class="dropdown-list">
                                            <?php if (!isset($_SESSION['user_client'])) {?>
                                            <li><a href="<?= BASE_URL . '?act=login' ?>">Đăng Nhập</a></li>
                                            <li><a href="<?= BASE_URL . '?act=register' ?>">Đăng Ký</a></li>
                                            <?php }else{

                                           ?>

                                            <li><a href="my-account.html">Hồ Sơ Tài khoản</a></li>
                                            <?php  }?>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="<?= BASE_URL. '?act=gio-hang' ?>" class="minicart-btn">
                                            <i class="pe-7s-shopbag"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- mini cart area end -->

                </div>
            </div>
        </div>
        <!-- header middle area end -->
    </div>
    <!-- main header start -->


</header>
<!-- end Header Area -->