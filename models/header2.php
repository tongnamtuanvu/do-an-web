
<!-- Form Đăng nhập -->
<div class="modal fade" id="login" role="dialog" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
    <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Đăng nhập</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="login-error"></div>
            <div class="modal-body">
            <form id="login-form" action="../XuLy/validateuser.php" method="post">
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <label for="user">Tên đăng nhập<span>*</span></label>
                        <input type="text" name="username" class="form-control" id="user" value="" required="" placeholder="Tên đăng nhập">
                    </div>
                    <div class="form-group col-md-12 mb-3">
                        <label for="password">Mật khẩu<span>*</span></label>
                        <div class="input-group" id="show_hide_password">
                            <input type="password" name="password" class="form-control" id="password" value="" required="" placeholder="Mật khẩu">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-eye-slash" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-3 mt-3">
                        <input type="submit" class="form-control" value="Đăng nhập">
                    </div>
                </div>
            </form>
            </div>
            <div class="modal-footer justify-content-center">
                <p>Tạo tài khoản ? <span style="cursor:pointer;" class="changeUpIn">Đăng ký</span></p>
            </div>
        </div>
    </div>
</div>
<!-- Form Đăng ký -->
<div class="modal fade" id="register" role="dialog" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
    <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Đăng ký</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
            <form id="DK" action="" method="post">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="last_name">Họ*<span class="error"></span></label>
                        <input type="text" class="form-control" name="firstName" value="" placeholder="Nguyễn Văn">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="last_name">Tên*<span class="error"></span></label>
                        <input type="text" class="form-control" name="lastName" value="" placeholder="A">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="last_name">Tên đăng nhập*<span class="error"></span></label>
                        <input type="text" class="form-control" name="user" value="" placeholder="Tên đăng nhập">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="last_name">Email*<span class="error"></span></label>
                        <input type="text" class="form-control" name="email" value="" placeholder="admin1234@gmail.com">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="last_name">Mật khẩu*<span class="error"></span></label>
                        <input type="password" class="form-control" name="password" value="" placeholder="Mật khẩu">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="last_name">Nhập lại mật khẩu*<span class="error"></span></label>
                        <input type="password" class="form-control" name="confirmpassword" value="" placeholder="Mật khẩu">
                    </div>
                    <div class="col-md-12 mb-3 mt-3">
                        <input type="submit" class="form-control" value="Đăng ký" name="submit">
                    </div>
                </div>
            </form>
            </div>
            <div class="modal-footer justify-content-center">
                <p>Đă có tài khoản ? <span style="cursor:pointer;" class="changeUpIn">Đăng nhập</span></p>
            </div>
        </div>
    </div>
</div>
<!-- Form đăng xuất -->
<div class="modal fade" id="logout" role="dialog" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
    <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Thông tin</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div  id="user-login-info" class="modal-body user-info">
            <?php
                $output = include("..//WEB2/XuLy/header.php");
                echo $output->userInfo;
            ?> 
            <a class="btn btn-primary mb-1" href="./customerReceipt.php">Xem các đơn hàng</a>
            <button type="button" onclick="editUser()" class="btn btn-primary mb-1">Sửa thông tin</button>
            <button type="button" onclick="changePass()" class="btn btn-primary mb-1">Thay mật khẩu</button>
            <form id="logout-form">
                <div class="row">
                    <div class="col-md-12 mb-3 mt-3">
                        <input type="submit" class="form-control" value="Đăng xuất">
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div> 
<!-- Form Sửa thông tin -->
<div class="modal fade" id="editUser" role="dialog" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
    <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Sửa thông tin</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="editUser-error"></div>
            <div class="modal-body">
            <form id="edituser" action="" method="post">
                <div class="row">
                    <input type="hidden" class="form=control" name="userId" value="">
                    <div class="col-md-6 mb-3">
                        <label for="last_name">Họ*<span class="error"></span></label>
                        <input type="text" class="form-control" name="firstName" value="" placeholder="Nguyễn Văn">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="last_name">Tên*<span class="error"></span></label>
                        <input type="text" class="form-control" name="lastName" value="" placeholder="A">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="last_name">Email*<span class="error"></span></label>
                        <input type="text" class="form-control" name="email" value="" placeholder="admin1234@gmail.com">
                    </div>
                    <div class="col-md-12 mb-3 mt-3">
                        <input type="submit" class="form-control" value="Xác nhận" name="submit">
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
<!-- Form thay password -->
<div class="modal fade" id="changePass" role="dialog" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
    <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Thay mật khẩu</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="changePass-error"></div>
            <div class="modal-body">
            <form id="changepass" action="" method="post">
                <div class="row">
                    <input type="hidden" name="userName" value>
                    <input type="hidden" name="userId" value>
                    <div class="form-group col-md-12 mb-3">
                        <label for="password">Mật khẩu hiện tại<span>*</span></label>
                        <div class="input-group" id="show_hide_password">
                            <input type="password" name="oldPass" class="form-control" value="" placeholder="Mật khẩu">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fa fa-eye-slash" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="last_name">Mật khẩu mới</label>
                        <input type="password" class="form-control" name="newPass" value="" placeholder="Mật khẩu">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="last_name">Nhập lại mật khẩu*</label>
                        <input type="password" class="form-control" name="confirmPass" value="" placeholder="Mật khẩu">
                    </div>
                    <div class="col-md-12 mb-3 mt-3">
                        <input type="submit" class="form-control" value="Xác nhận">
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
<header class="header_area">
    <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
        <!-- Classy Menu -->
        <nav class="classy-navbar" id="essenceNav">
            <!-- Logo -->
            <a class="nav-brand" href="index.php" id="logo"><img src="./img/logoG.png" alt="" width="200px"></a>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
                <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
            <!-- Menu -->
            <div class="classy-menu">
                <!-- close btn -->
                <div class="classycloseIcon">
                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                </div>
                <!-- Nav Start -->
                <div class="classynav">
                    <ul>
                        <li><a href="#">Sản phẩm</a>
                            <div class="megamenu">
                                <ul class="single-mega cn-col-4">
                                    <li class="title">Bàn Phím</li>
                                    <li><a href="shop.php?cetorgry=001">All</a></li>
                                    <li><a href="shop.php?brand=001?cetorgry=001">Razer</a></li>
                                    <li><a href="shop.php?brand=003?cetorgry=001">Logitech</a></li>
                                    <li><a href="shop.php?brand=002?cetorgry=001">Asus</a></li>
                                    <li><a href="shop.php?brand=004?cetorgry=001">Corsair</a></li>
                                    <li><a href="shop.php?brand=005?cetorgry=001">Steelseries</a></li>
                                </ul>
                                <ul class="single-mega cn-col-4">
                                    <li class="title">Chuột</li>
                                    <li><a href="shop.php?cetorgry=002">All</a></li>
                                    <li><a href="shop.php?brand=001?cetorgry=002">Razer</a></li>
                                    <li><a href="shop.php?brand=003?cetorgry=002">Logitech</a></li>
                                    <li><a href="shop.php?brand=002?cetorgry=002">Asus</a></li>
                                    <li><a href="shop.php?brand=004?cetorgry=002">Corsair</a></li>
                                    <li><a href="shop.php?brand=005?cetorgry=002">Steelseries</a></li>
                                </ul>
                                <ul class="single-mega cn-col-4">
                                    <li class="title">Tai Nghe</li>
                                    <li><a href="shop.php?cetorgry=003">All</a></li>
                                    <li><a href="shop.php?brand=001?cetorgry=003">Razer</a></li>
                                    <li><a href="shop.php?brand=003?cetorgry=003">Logitech</a></li>
                                    <li><a href="shop.php?brand=002?cetorgry=003">Asus</a></li>
                                    <li><a href="shop.php?brand=004?cetorgry=003">Corsair</a></li>
                                    <li><a href="shop.php?brand=005?cetorgry=003">Steelseries</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="contact.php">Liên hệ</a></li>
                        <?php
                            if(isset($_SESSION['isLOGIN']) && $_SESSION["isLOGIN"] == 1 && ($_SESSION["AUTHENTICATION"] == 0 || $_SESSION["AUTHENTICATION"] == 1))
                            {
                                if($_SESSION["AUTHENTICATION"] == 0)
                                {
                                    echo '<li><a href="./dashboard/userTable.php">Quản trị</a><li>';
                                }
                                else if ($_SESSION["AUTHENTICATION"] == 1)
                                {
                                    echo '<li><a href="./dashboard/admin.php">Quản trị</a><li>';
                                }
                            }
                        ?>
                        
                    </ul>
                </div>
                <!-- Nav End -->
            </div>
        </nav>

        <!-- Header Meta Data -->
        <div class="header-meta d-flex clearfix justify-content-end">
            <!-- Search Area -->
            <div class="search-area">
                <form id="search-box" action="#" method="post">
                    <?php
                        function searchvalue()
                        {
                            $search = "";
                            if(isset($_GET['search']))
                            {
                                $search = $_GET['search'];
                            }
                            echo 'value="'.$search.'"';
                        }
                    ?>
                    <input type="search" name="search" id="headerSearch" placeholder="Tìm kiếm ......" <?php searchvalue(); ?> >
                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
            </div>
            <!-- Favourite Area -->
            <div id="user-info">
            <!-- User Login Info -->
                <?php
                    $output = include("../WEB2/XuLy/header.php");
                    echo $output->user;
                ?>
            </div>
            <!-- Cart Area -->
            <div class="cart-area">
                <a href="#" id="essenceCartBtn"><img src="img/core-img/bag.svg" alt=""> <span class="sizeBag"></span></a>
            </div>
        </div>

    </div>
 
</header>
<script>

    // SHOW PASSWORD
    $(document).ready(function() {
    $("#show_hide_password span").on('click', function(event) {
        event.preventDefault();
        if($('#show_hide_password input').attr("type") == "text"){
            $('#show_hide_password input').attr('type', 'password');
            $('#show_hide_password i').addClass( "fa-eye-slash" );
            $('#show_hide_password i').removeClass( "fa-eye" );
        }else if($('#show_hide_password input').attr("type") == "password"){
            $('#show_hide_password input').attr('type', 'text');
            $('#show_hide_password i').removeClass( "fa-eye-slash" );
            $('#show_hide_password i').addClass( "fa-eye" );
        }
    });
    });

    function editUser()
    {
        $("#editUser").modal("toggle");
        $("#logout").modal("toggle")
    }
    function changePass()
    {
        $("#changePass").modal("toggle");
        $("#logout").modal("toggle")
    }
</script>