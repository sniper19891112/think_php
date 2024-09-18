<?php /*a:1:{s:83:"F:\xampp\htdocs\think_php\application\index\view\order\settlement_order_detail.html";i:1726689859;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('订单详情'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/order-detail.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="order-detail-header"><i class="material-icons-outlined" style="margin-right: 10px; cursor: pointer;" onclick="goBack()">                arrow_back
            </i>            Order details
        </div><div class="order-detail-container"><?php 
            $sub_total_amount = $order['goods_price'] * $order['goods_count'];
            $total_amount = $sub_total_amount + $order['commission'];
             ?><div class="order-detail-number"><div>The order number is <font style="font-weight: bold;"><?php echo htmlentities($order['id']); ?></font></div><div class="order-detail-time"><?php echo htmlentities(format_datetime($order['addtime'],'Y-m-d H:i:s')); ?></div></div><div class="order-detail-status"><div class="order-detail-status-line"></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status'] == 1 || $order['status'] == 2): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status'] == 1 || $order['status'] == 2): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">Placed an order</div></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status']==3 || $order['status']==4): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status']==3 || $order['status']==4): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">shipped</div></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status'] == 5 || $order['status'] == 6): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status'] == 5 || $order['status'] == 6): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">confirmed</div></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status'] == 7): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status'] == 7): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">Rated</div></div></div><div class="order-detail-commodity-information">                Commodity information
            </div><div class="order-detail-product-container"><img class="order-detail-product-img" src="<?php echo htmlentities($order['goods_pic']); ?>" /><div class="order-detail-product-title"><div class="order-detail-product-title-text"><?php echo htmlentities($order['goods_name']); ?></div><div class="order-detail-product-amount"><div style="font-size: 14px; color: #4F4F4F;">                            $<?php echo htmlentities($order['goods_price']); ?>&nbsp;&nbsp;X&nbsp;&nbsp;<?php echo htmlentities($order['goods_count']); ?></div><div style="font-size: 14px; color: #4F4F4F;">$<?php echo htmlentities($sub_total_amount); ?></div></div></div></div><div class="order-detail-information"><div class="text-14 color-2B2B2B">Order information</div><div style="margin-top: 10px;" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>subtotal</div><div>$<?php echo htmlentities($sub_total_amount); ?></div></div><div style="margin-top: 10px;" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>Delivery charge</div><div>$0.00</div></div><!-- <div style="margin-top: 10px;" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>favorable</div><div>$0.00</div></div> --><div style="margin-top: 10px; padding-bottom: 7px; border-bottom: 1px solid #E0E0E0;"
                    class="text-14 color-4F4F4F d-flex align-center justify-between"><div>commission</div><div>$<?php echo htmlentities($order['commission']); ?></div></div><div style="margin-top: 8px" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>total</div><div>$<?php echo htmlentities($total_amount); ?></div></div></div><div class="order-detail-delivery-container"><div class="text-14 color-2B2B2B">Delivery address</div><div style="margin-top: 14px;" class="text-14 color-4F4F4F"><?php echo htmlentities($order['username']); ?></div><div class="text-14 color-4F4F4F"><?php echo htmlentities($order['tel']); ?></div><div class="text-14 color-4F4F4F"><?php echo htmlentities($order['address']); ?></div></div><?php if($order['status'] >= 3): ?><div style="margin-top: 24px;"><div class="text-14 color-2B2B2B font-bold">Shipping Address</div><div style="margin-top: 14px;" class="text-14 color-4F4F4F"><font class="font-bold">CompanyName: </font><?php echo htmlentities($order['company_name']); ?></div><div class="text-14 color-4F4F4F"><font class="font-bold">Tracking Number: </font><?php echo htmlentities($order['tracking_number']); ?></div></div><?php endif; if($order['status'] > 4): ?><div class="commodity-evaluation-container"><div class="text-14 color-2B2B2B">Commodity evaluation</div><div class="d-flex align-center"><div class="text-14 color-4F4F4F" style="margin-top: 8px; width: 120px;">1. Quality of goods</div><div id="good-quality-rating" style="margin-left: 24px;"><span class="stars <?php if($order['good_quality'] >= 1): ?>selected<?php endif; ?>" data-value="1">&#9733;</span><span class="stars <?php if($order['good_quality'] >= 2): ?>selected<?php endif; ?>" data-value="2">&#9733;</span><span class="stars <?php if($order['good_quality'] >= 3): ?>selected<?php endif; ?>" data-value="3">&#9733;</span><span class="stars <?php if($order['good_quality'] >= 4): ?>selected<?php endif; ?>" data-value="4">&#9733;</span><span class="stars <?php if($order['good_quality'] >= 5): ?>selected<?php endif; ?>" data-value="5">&#9733;</span></div></div><div class="d-flex align-center"><div class="text-14 color-4F4F4F" style="margin-top: 8px; width: 120px;">2. Goods service</div><div id="good-service-rating" style="margin-left: 24px;"><span class="stars <?php if($order['good_service'] >= 1): ?>selected<?php endif; ?>" data-value="1">&#9733;</span><span class="stars <?php if($order['good_service'] >= 2): ?>selected<?php endif; ?>" data-value="2">&#9733;</span><span class="stars <?php if($order['good_service'] >= 3): ?>selected<?php endif; ?>" data-value="3">&#9733;</span><span class="stars <?php if($order['good_service'] >= 4): ?>selected<?php endif; ?>" data-value="4">&#9733;</span><span class="stars <?php if($order['good_service'] >= 5): ?>selected<?php endif; ?>" data-value="5">&#9733;</span></div></div><div class="d-flex align-center"><div class="text-14 color-4F4F4F" style="margin-top: 8px; width: 120px;">3. Attitude service</div><div id="attitude-service-rating" style="margin-left: 24px;"><span class="stars <?php if($order['attitude_service'] >= 1): ?>selected<?php endif; ?>" data-value="1">&#9733;</span><span class="stars <?php if($order['attitude_service'] >= 2): ?>selected<?php endif; ?>" data-value="2">&#9733;</span><span class="stars <?php if($order['attitude_service'] >= 3): ?>selected<?php endif; ?>" data-value="3">&#9733;</span><span class="stars <?php if($order['attitude_service'] >= 4): ?>selected<?php endif; ?>" data-value="4">&#9733;</span><span class="stars <?php if($order['attitude_service'] >= 5): ?>selected<?php endif; ?>" data-value="5">&#9733;</span></div></div><div class="buyer-show-upload" id="uploadArea"><div class="text-center" id="buyer_show_upload" style="display: <?php if(!$order['buyer_show_img']): ?>block<?php else: ?>none<?php endif; ?>;"><i class="material-icons-outlined color-C2C2C2" style="font-size: 48px;">image</i><div class="color-C2C2C2">Please upload the buyer show first</div></div><img src="<?php echo htmlentities($order['buyer_show_img']); ?>" id="buyer_show_img" style="display: <?php if($order['buyer_show_img']): ?>block<?php else: ?>none<?php endif; ?>;" width="100" height="100" /><input type="file" id="fileInput" style="display: none;" /><input type="hidden" value="" id="buyer_show_url" /></div></div><?php endif; if($order['status'] == 3 || $order['status'] == 4): ?><button class="order-detail-confirm-receipt" onclick="confirmReceipt('<?php echo htmlentities($order['id']); ?>')">                Confirm receipt of goods
            </button><?php elseif($order['status'] == 5 || $order['status'] == 6): ?><button class="order-detail-confirm-receipt" onclick="submitEvaluation('<?php echo htmlentities($order['id']); ?>')">                Submit evaluation
            </button><?php endif; ?></div></div></body><script type="application/javascript">    var goodQualityRating = 0;
    var goodServiceRating = 0;
    var attitudeServiceRating = 0;
    function goBack() {
        window.history.go(-1);
    }
    // Get references to the elements
    const uploadArea = document.getElementById("uploadArea");
    const fileInput = document.getElementById("fileInput");

    // When clicking the upload area, trigger the file input dialog
    uploadArea.addEventListener("click", function () {
        fileInput.click();  // Open file dialog
    });

    // Display the selected file name
    fileInput.addEventListener("change", function () {
        const file = fileInput.files[0];
        if (file) {
            uploadFile(file);
        }
    });

    // Function to upload file using AJAX
    function uploadFile(file) {
        // Create FormData object to send the file data
        const formData = new FormData();
        formData.append('file', file);
        // Perform AJAX request
        $.ajax({
            url: '/index/my/upload',  // Replace with your server upload URL
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                $("#buyer_show_img").attr('src', response.url).show();
                $("#buyer_show_upload").hide();
                $("#buyer_show_url").val(response.url);
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });
    }
    function confirmReceipt(id) {
        $.ajax({
            url: "/index/order/confirm_receipt",
            type: "POST",
            dataType: "JSON",
            data: { order_id: id },
            success: function (res) {
                if (res.code == 0) {
                    $(document).dialog({ infoText: "success" });
                    setTimeout(function () {
                        location.href = "<?php echo url('order/order'); ?>"
                    }, 3000);
                } else {
                    $(document).dialog({ infoText: res.info });
                }
            },
            error: function (err) {
                $(document).dialog({ infoText: "error" });
            }
        })
    }
    function submitEvaluation(id) {
        if (goodQualityRating < 4) {
            $(document).dialog({ infoText: "you need to click on more than 4 stars to rate" });
            return
        }
        if (goodServiceRating < 4) {
            $(document).dialog({ infoText: "you need to click on more than 4 stars to rate" });
            return
        }
        if (attitudeServiceRating < 4) {
            $(document).dialog({ infoText: "you need to click on more than 4 stars to rate" });
            return
        }
        $.ajax({
            url: "/index/order/submit_evaluation",
            type: "POST",
            dataType: "JSON",
            data: { order_id: id, "good_quality": goodQualityRating, "good_service": goodServiceRating, "attitude_service": attitudeServiceRating, "buyer_show_img": $("#buyer_show_url").val() },
            success: function (res) {
                if (res.code == 0) {
                    $(document).dialog({ infoText: "success" });
                    setTimeout(function () {
                        location.href = "<?php echo url('order/order'); ?>"
                    }, 3000);
                } else {
                    $(document).dialog({ infoText: res.info });
                }
            },
            error: function (err) {
                $(document).dialog({ infoText: "error" });
            }
        })
    }

    $(document).ready(function () {

        // Event listener for hover effect
        $('#good-quality-rating .stars').on('mouseover', function () {
            const value = $(this).data('value');
            highlightGoodQualityStars(value);
        });

        // Event listener for click to select rating
        $('#good-quality-rating .stars').on('click', function () {
            goodQualityRating = $(this).data('value');
            $('#rating-value').text(goodQualityRating);
        });

        // Event listener to reset the stars if the user stops hovering
        $('#good-quality-rating').on('mouseleave', function () {
            highlightGoodQualityStars(goodQualityRating);  // Keep the selected rating
        });

        function highlightGoodQualityStars(stars) {
            $('#good-quality-rating .stars').each(function () {
                const value = $(this).data('value');
                if (value <= stars) {
                    $(this).addClass('selected');
                } else {
                    $(this).removeClass('selected');
                }
            });
        }

        // Event listener for hover effect
        $('#good-service-rating .stars').on('mouseover', function () {
            const value = $(this).data('value');
            highlightGoodServiceStars(value);
        });

        // Event listener for click to select rating
        $('#good-service-rating .stars').on('click', function () {
            goodServiceRating = $(this).data('value');
            $('#rating-value').text(goodServiceRating);
        });

        // Event listener to reset the stars if the user stops hovering
        $('#good-service-rating').on('mouseleave', function () {
            highlightGoodServiceStars(goodServiceRating);  // Keep the selected rating
        });

        function highlightGoodServiceStars(stars) {
            $('#good-service-rating .stars').each(function () {
                const value = $(this).data('value');
                if (value <= stars) {
                    $(this).addClass('selected');
                } else {
                    $(this).removeClass('selected');
                }
            });
        }

        // Event listener for hover effect
        $('#attitude-service-rating .stars').on('mouseover', function () {
            const value = $(this).data('value');
            highlightAttitudeServiceStars(value);
        });

        // Event listener for click to select rating
        $('#attitude-service-rating .stars').on('click', function () {
            attitudeServiceRating = $(this).data('value');
            $('#rating-value').text(attitudeServiceRating);
        });

        // Event listener to reset the stars if the user stops hovering
        $('#attitude-service-rating').on('mouseleave', function () {
            highlightAttitudeServiceStars(attitudeServiceRating);  // Keep the selected rating
        });

        function highlightAttitudeServiceStars(stars) {
            $('#attitude-service-rating .stars').each(function () {
                const value = $(this).data('value');
                if (value <= stars) {
                    $(this).addClass('selected');
                } else {
                    $(this).removeClass('selected');
                }
            });
        }
    });
</script></html>