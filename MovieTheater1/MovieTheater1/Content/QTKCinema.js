//check tai khoan
function CheckUser() {
    var username = $("#username").val();
    $.ajax({
        type: "POST",
        url: "/NguoiDung/CheckUsername",
        data: '{username: "' + username + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var message = $("#messageUser");
            if (response) {
                //Email available.
                message.css("color", "red");
                message.html("Tên đăng nhập đã tồn tại");
            }
            else {
                //Email not available.
                message.css("color", "green");
                message.html("Tên đăng nhập có thể sử dụng");
            }
        }
    });
};

function ClearMessageUser() {
    $("#messageUser").html("");
};
//check email
function CheckEmail() {
    var email = $("#email").val();
    $.ajax({
        type: "POST",
        url: "/NguoiDung/CheckEmail",
        data: '{email: "' + email + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var message = $("#messageEmail");
            if (response) {
                message.css("color", "red");
                message.html("Email đã tồn tại");
            }
            else {
                message.css("color", "green");
                message.html("Email có thể sử dụng");
            }
        }
    });
};

function ClearMessageEmail() {
    $("#messageEmail").html("");
};


function CheckVoucher() {
    var voucher = $("#voucher").val();
    $.ajax({
        type: "POST",
        url: "/QKTCinema/CheckVoucher",
        data: '{voucher: "' + voucher + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var btnMuaVe = $("#btnMuave");
            var message = $("#messageVoucher");

            if (response) {
                message.css("color", "red");
                message.html(" Voucher không hợp lệ ");
                btnMuaVe.attr("disabled", true);
            }
            else {
                message.css("color", "green");
                message.html("Voucher có thể sử dụng");
                btnMuaVe.attr("disabled", false);
            }
        }
    });
};

function ClearMessageVoucher() {
    $("#messageVoucher").html("");
};


function SelectItem1() {

    document.getElementById("txtTenPhim").value = document.getElementById("tenPhim").value;
    document.getElementById("tenRap").disabled = false;
}

function SelectItem2() {

    document.getElementById("txtTenRap").value = document.getElementById("tenRap").value;
    document.getElementById("ngayChieu").disabled = false;
}

function SelectItem3() {

    document.getElementById("txtNgayChieu").value = document.getElementById("ngayChieu").value;
    document.getElementById("suatChieu").disabled = false;
}

function SelectItem4() {

    $("#btn-mua-ve-nhanh").attr("disabled", false);
    document.getElementById("txtSuatChieu").value = document.getElementById("suatChieu").value;

}

$(document).ready(function () {
    document.getElementById("tenRap").disabled = true;
    document.getElementById("ngayChieu").disabled = true;
    document.getElementById("suatChieu").disabled = true;
});