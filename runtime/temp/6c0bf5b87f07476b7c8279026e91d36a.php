<?php /*a:1:{s:69:"F:\xampp\htdocs\think_php\application\index\view\my\top_up_erc20.html";i:1726582197;}*/ ?>
<!DOCTYPE html><html><head><meta charset="utf-8" /><meta name="viewport"
        content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1" /><meta name="apple-mobile-web-app-capable" content="yes" /><meta content="telephone=yes" name="format-detection" /><meta name="apple-mobile-web-app-status-bar-style" content="white" /><meta name="x5-fullscreen" content="true" /><meta name="apple-touch-fullscreen" content="yes" /><title><?php echo lang('我的'); ?></title><link rel="stylesheet" href="/statics/css/global.css" /><link rel="stylesheet" href="/web/css/top_up_erc20.css" /><link rel="stylesheet" href="/static_new/css/public.css"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"><script charset="utf-8" src="/static_new/js/jquery.min.js"></script><script charset="utf-8" src="/static_new/js/dialog.min.js"></script><script charset="utf-8" src="/static_new/js/common.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script></head><body><div id="app"><div class="top-up-header"><i class="material-icons-outlined" style="margin-right: 10px; cursor: pointer;" onclick="goBack()">                arrow_back
            </i>            top-up
        </div><div class="top-up-container"><div class="address-container"><div class="erc20-header">USDT(ERC20)</div><div class="text-center text-12 color-999999" style="padding-top: 52px;">                    Minimum deposit is 20USDT(ERC20)
                </div><div id="qrcode" class="qrcode-img"></div><div class="wallet-address" id="wallet_address"><?php echo htmlentities($address); ?></div><div class="text-center"><button class="wallet-address-copy-btn" onclick="copyWalletAddress()">copy</button></div></div><div class="recharge-container"><div class="text-16 font-800 color-2B2B2B">Recharge amount</div><div class="recharge-amount-input-form"><input class="recharge-amount-input" id="recharge_amount" type="text" placeholder="Please enter the recharge amount!" /></div><div style="margin-top: 24px;" class="text-16 font-800 color-2B2B2B">Top-up certificate</div><div class="d-flex align-center" style="margin-top: 16px;"><div class="certificate-upload" id="uploadArea"><i class="material-icons-outlined certificate-upload-add">                            add
                        </i><input type="file" id="fileInput" style="display: none;" /><input type="hidden" value="" id="img_url" /></div><div class="uploaded-img"><img id="uploaded_img" src="" style="width: 100%; height: 100%; display: none;" /></div></div></div><div style="margin-top: 24px;"><button class="submit-btn" onclick="submitRecharge()">submit</button></div></div></div></body><script type="application/javascript">    function goBack() {
        window.history.go(-1);
    }
    function submitRecharge() {
        if (!$("#recharge_amount").val().trim()) {
            $(document).dialog({infoText: 'Please input recharge amount'});
            return;
        }
        if (!$("#img_url").val().trim()) {
            $(document).dialog({infoText: 'Please upload top up certificate'});
            return;
        }
        $.ajax({
            url: "/index/my/user_recharge",
            type: "POST",
            dataType: "JSON",
            data: { type: 2, recharge_amount: $("#recharge_amount").val(), pic: $("#img_url").val(), address: $("#wallet_address").text()},
            success: function (res) {
                $(document).dialog({ infoText: "success" });
            },
            error: function (err) {
                $(document).dialog({ infoText: "error" });
            }
        })
    }
    // jQuery function to generate QR code when button is clicked
    $(document).ready(function () {
        $("#qrcode").empty();
        new QRCode(document.getElementById("qrcode"), {
            text: '${address}',  // Content for the QR code
            width: 168,       // Width of the QR code
            height: 168       // Height of the QR code
        });
    });
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
            xhr: function () {
                const xhr = new window.XMLHttpRequest();
                // Event listener for upload progress
                xhr.upload.addEventListener('progress', function (e) {
                    if (e.lengthComputable) {
                        // const percentComplete = Math.round((e.loaded / e.total) * 100);
                        // progressBar.val(percentComplete);
                        // progressPercent.text(percentComplete);
                    }
                }, false);
                return xhr;
            },
            success: function (response) {
                console.log(response);
                $("#uploaded_img").attr('src', response.url).show();
                $("#img_url").val(response.url);
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });
    }

    function copyWalletAddress() {
        // Copy text to clipboard using Clipboard API
        navigator.clipboard.writeText($("#wallet_address").text()).then(function () {
            console.log("success")
        }).catch(function (err) {
            console.error('Error copying text: ', err);
        });
    }
</script></html>