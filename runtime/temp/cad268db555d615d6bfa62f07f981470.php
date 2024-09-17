<?php /*a:1:{s:83:"F:\xampp\htdocs\think_php\application\index\view\order\settlement_order_detail.html";i:1726588206;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('订单详情'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/order-detail.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="order-detail-header"><i class="material-icons-outlined" style="margin-right: 10px; cursor: pointer;" onclick="goBack()">                arrow_back
            </i>            Order details
        </div><div class="order-detail-container"><?php 
            $sub_total_amount = $order['goods_price'] * $order['goods_count'];
            $total_amount = $sub_total_amount + $order['commission'] + 5;
             ?><div class="order-detail-number"><div>The order number is <font style="font-weight: bold;"><?php echo htmlentities($order['id']); ?></font></div><div class="order-detail-time"><?php echo htmlentities(format_datetime($order['addtime'],'Y-m-d H:i:s')); ?></div></div><div class="order-detail-status"><div class="order-detail-status-line"></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status'] == 0): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status'] == 0): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">Placed an order</div></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status'] == 1): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status'] == 1): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">confirmed</div></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status'] == 2): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status'] == 2): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">shipped</div></div><div style="z-index: 2;"><div
                        class="order-detail-status-checkbox <?php if($order['status'] == 3): ?>bg-FF5035<?php else: ?>bg-FFFFFF<?php endif; ?> mg-auto"><i
                            class="material-icons-outlined <?php if($order['status'] == 3): ?>color-FFFFFF<?php else: ?>color-FF5035<?php endif; ?>">check</i></div><div class="order-detail-status-text">Rated</div></div></div><div class="order-detail-commodity-information">                Commodity information
            </div><div class="order-detail-product-container"><img class="order-detail-product-img" src="<?php echo htmlentities($order['goods_pic']); ?>" /><div class="order-detail-product-title"><div class="order-detail-product-title-text"><?php echo htmlentities($order['goods_name']); ?></div><div class="order-detail-product-amount"><div style="font-size: 14px; color: #4F4F4F;">                            $<?php echo htmlentities($order['goods_price']); ?>&nbsp;&nbsp;X&nbsp;&nbsp;<?php echo htmlentities($order['goods_count']); ?></div><div style="font-size: 14px; color: #4F4F4F;">$<?php echo htmlentities($sub_total_amount); ?></div></div></div></div><div class="order-detail-information"><div class="text-14 color-2B2B2B">Order information</div><div style="margin-top: 10px;" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>subtotal</div><div>$<?php echo htmlentities($sub_total_amount); ?></div></div><div style="margin-top: 10px;" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>Delivery charge</div><div>$5.00</div></div><div style="margin-top: 10px;" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>favorable</div><div>$0.00</div></div><div style="margin-top: 10px; padding-bottom: 7px; border-bottom: 1px solid #E0E0E0;"
                    class="text-14 color-4F4F4F d-flex align-center justify-between"><div>commission</div><div>$<?php echo htmlentities($order['commission']); ?></div></div><div style="margin-top: 8px" class="text-14 color-4F4F4F d-flex align-center justify-between"><div>total</div><div>$<?php echo htmlentities($total_amount); ?></div></div></div><div class="order-detail-delivery-container"><div class="text-14 color-2B2B2B">Delivery address</div><div style="margin-top: 14px;" class="text-14 color-4F4F4F">Little bamboo shoots</div><div class="text-14 color-4F4F4F">15800000000</div><div class="text-14 color-4F4F4F">                    Beijing here is the detailed receiving address information,
                    up to two lines of folding
                </div></div><?php if($order['status'] == 0): ?><button class="order-detail-confirm-receipt" onclick="confirmReceipt('<?php echo htmlentities($order['id']); ?>')">                Confirm receipt of goods
            </button><?php endif; ?></div></div></body><script type="application/javascript">    function goBack() {
        window.history.go(-1);
    }

    function confirmReceipt(id) {
        $.ajax({
            url: "/index/order/confirm_receipt",
            type: "POST",
            dataType: "JSON",
            data: { order_id: id },
            success: function (res) {
                $(document).dialog({ infoText: "success" });
            },
            error: function (err) {
                $(document).dialog({ infoText: "error" });
            }
        })
    }
</script></html>