
<div class="checkout_area section-padding-80">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-7 ml-md-3">
                    <div class="row">
                        <div class="col checkout-paging mb-md-3">
                            <ul class="pagination pagination-lg justify-content-center">
                                <li class="page-item">
                                    <a class="page-link checkout-bag-btn active" div="checkout-bag">Giỏ</a>
                                </li>
                                <li class="page-item"><a class="page-link checkout-info-btn"  div="checkout-info">Địa chỉ</a></li>
                            </ul>
                        </div>
                        <div class="col-12 checkout-bag " data-aos="fade-right">
                        </div>
                        <div class="col-12 checkout-info" data-aos="fade-right">
                            <div id="checkOutAddress" class="checkout_details_area col-10 m-auto clearfix" data-aos="fade-right">
                                <div class="cart-page-heading mb-30">
                                    <h5>Thông tin giao hàng</h5>
                                </div>
                                <div class="checkOutAddress-error"></div>
                                <form action="#" method="post">
                                    <div class="row">
                                        <input type="hidden" name="userName" value>
                                        <input type="hidden" name="userId" value> 
                                        <div class="col-md-6 mb-3">
                                            <label for="first_name">Họ <span>*</span></label>
                                            <input type="text" class="form-control" name="firstName" value="" required>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="last_name">Tên <span>*</span></label>
                                            <input type="text" class="form-control" name="lastName" value="" required>
                                        </div>
                                        <div class="col-12 mb-3">
                                            <label for="country">Thành Phố <span>*</span></label>
                                            <select class="w-100 country">
                                                <option value="TP.Hồ Chí Minh">TP.Hồ Chí Minh</option>
                                                <option value="hà nội">Hà nội</option>
                                                <option value="Hải phòng">Hải phòng</option>
                                                <option value="Cần thơ">Cần Thơ</option>
                                                <option value="Đà nẵng">Đà nẵng</option>
                                                <option value="Huế">Huế</option>
                                                <option value="Nha Trang">Nha Trang</option>
                                                <option value="Vũng Tàu">Vũng Tàu</option>
                                                <option value="Long Xuyên">Long Xuyên</option>
                                            </select>
                                        </div>
                                        <div class="col-12 mb-3">
                                            <label for="street_address">Địa chỉ <span>*</span></label>
                                            <input type="text" class="form-control" name="street_address" value="">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <label for="phone_number">Số điện thoại <span>*</span></label>
                                            <input type="number" class="form-control" name="phone" min="0" value="">
                                        </div>
                                        <div class="col-12 mb-4">
                                            <label for="email_address">Email Address <span>*</span></label>
                                            <input type="email" class="form-control" name="email" value="">
                                        </div>
                                        <div class="col-12 mb-4">
                                            <label for="description">Ghi Chú</label>
                                            <textarea class="form-control" id="description" rows="10" name="description" ></textarea>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="col-12 col-md-12 col-lg-4 ">                    
                    <div class="order-details-confirmation">
                        <div class="cart-page-heading">
                            <h5>Giỏ hàng</h5>
                            <p>Chi tiết</p>
                        </div>

                        <ul class="order-details-form mb-4">
                            <li><span>Sản phẩm</span> <span>Tổng tiền</span></li>
                            <li><span>Cocktail Yellow dress</span> <span>$59.90</span></li>
                            <li><span>Subtotal</span> <span>$59.90</span></li>
                            <li><span>Shipping</span> <span>Free</span></li>
                            <li><span>Total</span> <span>$59.90</span></li>
                        </ul>

                        <div id="accordion" role="tablist" class="mb-4">
                            <div class="card">
                                <div class="card-header" role="tab" id="headingOne">
                                    <h6 class="mb-0" >
                                        <a data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne"><i class="fa fa-circle-o mr-3"></i>Paypal</a>
                                    </h6>
                                </div>

                                <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Chọn trả bằng ví điện tử</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingTwo">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-circle-o mr-3"></i>Tiền mặt</a>
                                    </h6>
                                </div>
                                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Nhận hàng trả tiền (COD)</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingThree">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree"><i class="fa fa-circle-o mr-3"></i>Thẻ ngân hàng</a>
                                    </h6>
                                </div>
                                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Chọn trả bằng thẻ ngân hàng</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingFour">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour"><i class="fa fa-circle-o mr-3"></i>Chuyển khoảng</a>
                                    </h6>
                                </div>
                                <div id="collapseFour" class="collapse show" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Xác nhận chuyển khoản</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <a href="#" id="checkOutConfirm" class="btn essence-btn ">Thanh toán</a>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <!-- ##### Checkout Area End ##### -->