function checkname(){
    var name=document.getElementById("name").value;
    var nullname=false;
    if(name==null||name==""){
            document.getElementById("nullname").innerHTML=("使用者名稱不能為空");
            nullname=false;
        }else{
            document.getElementById("nullname").innerHTML="";
            nullname=true;
    }  
    return nullname;
}


function checkmail(){
    var mail=document.getElementById("mail").value;
    var nullmail=false;
    var obj = document.getElementById("mail");
    var reg = new RegExp(/^\S+@\S+\.\S{2,}$/);
    if(mail==null||mail==""){
            document.getElementById("nullmail").innerHTML=("電子郵件不能為空");
            nullmail=false;
        }else if(!reg.test(obj.value)){
            document.getElementById("nullmail").innerHTML=("電子郵件格式錯誤");
}
        else{
            document.getElementById("nullmail").innerHTML="";
            nullmail=true;
    }  
    return nullmail;
}

function checkpass(){
    var password=document.getElementById("pwd").value;
    var nullpass=false;
    if(password==null||password==""){
            document.getElementById("nullpass").innerHTML=("密碼不能為空");
            nullpass=false;
        }else{
            document.getElementById("nullpass").innerHTML="";
            nullpass=true;
    }  
    return nullpass;
}


function datacheck(){
    var obj = document.getElementById("mail");
    var reg = new RegExp(/^\S+@\S+\.\S{2,}$/);
    if (user.name.value==""){
        window.alert("用戶名稱不得為空白！");
        focusto(0);
        return false;
    }
    if (user.mail.value==""){
        window.alert("信箱不得為空白！");
        focusto(2);
        return false;
    }
    if (user.pwd.value==""){
        window.alert("密碼不得為空白！");
        focusto(3);
        return false;
    }
    user.submit();
}

function focusto(x) { 
  // 將游標定位於某個表單(Form)欄位
  user.forms[0].elements[x].focus();
}