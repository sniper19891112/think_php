<?php /*a:1:{s:63:"F:\xampp\htdocs\think_php\application\index\view\my\wallet.html";i:1726924921;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('我的'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/wallet.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script></head><body><div id="app"><div class="wallet-header"><i class="material-icons-outlined" style="margin-right: 10px; cursor: pointer;" onclick="goBack()">                arrow_back
            </i>            My wallet
        </div><div class="wallet-container"><div class="wallet-balance"><div class="text-14 font-800 color-white">Account balance</div><div class="text-20 font-800 color-white text-center"
                    style="margin-top: 12px; border-bottom: 1px solid;">                    USDT<font class="text-56"><?php echo htmlentities($balance); ?></font></div><div class="d-flex align-center justify-around" style="margin-top: 24px;"><div class="text-14 font-800 color-white cursor-pointer" id="depositOpenModal">deposit</div><div class="text-14 font-800 color-white cursor-pointer" id="withdrawOpenModal">withdraw</div></div></div><div class="wallet-log-container"><?php if(is_array($logs) || $logs instanceof \think\Collection || $logs instanceof \think\Paginator): $i = 0; $__LIST__ = $logs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;
                $title = "";
                $amount = "";
                if ($item['type'] == 1) {
                    $title = "Recharge amount";
                    $amount = "+".$item['num'];
                }
                if ($item['type'] == 2) {
                    $title = "Customer orders";
                    $amount = $item['status']  == 2 ? "-".$item['num'] : "+".$item['num'];
                }
                if ($item['type'] == 3) {
                    $title = "Receive orders and return commission";
                    $amount = "+".$item['num'];
                }
                if ($item['type'] == 6) {
                    $title = "Subcommission";
                    $amount = "+".$item['num'];
                }
                if ($item['type'] == 7) {
                    $title = "Withdrawal amount";
                    $amount = "-".$item['num'];
                }
                 ?><div class="wallet-log-item"><div><div class="text-18 color-4F4F4F"><?php echo htmlentities($title); ?></div><div class="text-10 color-666666" style="margin-top: 8px;"><?php echo htmlentities(format_datetime($item['addtime'],'Y-m-d H:i:s')); ?></div></div><div class="text-16 <?php if($item['type']  == 2 || $item['type'] == 7): ?>color-00FF33<?php else: ?>color-FF0000<?php endif; ?> font-bold"><?php echo htmlentities($amount); ?></div></div><?php endforeach; endif; else: echo "" ;endif; ?><!-- Display pagination links --><div><?php echo $pagination; ?></div></div></div><!-- wallet Modal Structure --><div class="modal-overlay" id="modalOverlay"><div class="wallet-modal"><div class="wallet-modal-item" id="online_recharge">Online recharge</div><div class="wallet-modal-item" style="margin-top: 8px;" id="bitcoin">Bitcoin</div><a href="/index/my/top_up?wallet=erc20"><div class="wallet-modal-item" style="margin-top: 8px;" id="usdt_erc20">USDT(ERC20)</div></a><a href="/index/my/top_up?wallet=trc20"><div class="wallet-modal-item" style="margin-top: 8px;" id="usdt_trc20">USDT(TRC20)</div></a><div class="wallet-modal-item" style="margin-top: 8px;" id="eth">ETH</div><div class="wallet-modal-item" style="margin-top: 8px;" id="usdc_erc20">USDC(ERC20)</div></div></div><!-- withdraw wallet Modal Structure --><div class="modal-overlay" id="withdrawModalOverlay"><div class="wallet-modal"><div class="wallet-modal-item" id="online_recharge">Online Withdraw</div><div class="wallet-modal-item" style="margin-top: 8px;" id="bitcoin">Bitcoin</div><a href="/index/my/withdraw?wallet=erc20"><div class="wallet-modal-item" style="margin-top: 8px;" id="usdt_erc20">USDT(ERC20)</div></a><a href="/index/my/withdraw?wallet=trc20"><div class="wallet-modal-item" style="margin-top: 8px;" id="usdt_trc20">USDT(TRC20)</div></a><div class="wallet-modal-item" style="margin-top: 8px;" id="eth">ETH</div><div class="wallet-modal-item" style="margin-top: 8px;" id="usdc_erc20">USDC(ERC20)</div></div></div></div></body><script type="application/javascript">    function goBack() {
        // window.history.go(-1);
        location.href = "<?php echo url('my/index'); ?>"
    }
    // jQuery logic to open and close the modal
    $(document).ready(function () {
        // Open the modal when the button is clicked
        $("#depositOpenModal").on("click", function () {
            $("#modalOverlay").show();
        });
        // Open the modal when the button is clicked
        $("#withdrawOpenModal").on("click", function () {
            $("#withdrawModalOverlay").show();
        });

        // Close the modal when the close button is clicked
        $("#closeModal").on("click", function () {
            $("#modalOverlay").hide();
            $("#withdrawModalOverlay").hide();
        });

        // Close the modal when clicking outside the modal (on the overlay)
        $("#modalOverlay").on("click", function (event) {
            if ($(event.target).is("#modalOverlay")) { // Check if the click was on the overlay
                $(this).hide();
            }
        });

        // Close the modal when clicking outside the modal (on the overlay)
        $("#withdrawModalOverlay").on("click", function (event) {
            if ($(event.target).is("#withdrawModalOverlay")) { // Check if the click was on the overlay
                $(this).hide();
            }
        });
    });
</script></html>