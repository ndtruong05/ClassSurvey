/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function checkFormStudent(){
    var _stt = document.all.txtstt.value;
    if(_stt == '') {
        alert('Bạn cần nhập Số thứ tự !');
        document.all.txtstt.focus();
        return;
    }
    var _username = document.all.txtusername.value;
    if(_username == '') {
        alert('Bạn cần nhập Mã sinh viên !');
        document.all.txtusername.focus();
        return;
    }
    var _pass = document.all.txtpassword.value;
    if(_pass == '') {
        alert('Bạn cần nhập Mật khẩu !');
        document.all.txtpassword.focus();
        return;
    }
    var _fullname = document.all.txtfullname.value;
    if(_fullname == '') {
        alert('Bạn cần nhập Họ và tên !');
        document.all.txtfullname.focus();
        return;
    }
    var _email = document.all.txtvnuemail.value;
    if(_email == '') {
        alert('Bạn cần nhập VNU email !');
        document.all.txtvnuemail.focus();
        return;
    }
    var _training = document.all.txttraining.value;
    if(_training == '') {
        alert('Bạn cần nhập Khóa đào tạo !');
        document.all.txttraining.focus();
        return;
    }
}

