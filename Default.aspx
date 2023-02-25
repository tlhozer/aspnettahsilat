<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<html lang="en"><head><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css"><script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script><style>/* Red: F24865, Light Gray: F4F4F4, Blue: 45CAE6, Green: 09C775, Dark Gray: 797979 */
@import url(https://fonts.googleapis.com/css?family=Quicksand:400,300,700);
* {
box-sizing: border-box;
font-family: Quicksand, sans-serif;
}
body {
background-color: #797979;
color: #444;
display: flex;
justify-content: center;
align-items: center;
font-size: 18px;
font-weight: 400;
margin: 0;
padding: 0;
}
.wrap {
margin: 15px;
max-width: 600px;
width: 100%;
}
.wrap form {
box-shadow: 0 1px 3px rgba(0,0,0,.3);
}
.form-header {
background-color: #45CAE6;
border-radius: 4px 4px 0 0;
padding: 1em;
}
.form-header h2 {
color: #fff;
font-weight: 700;
font-size: 1.75em;
margin: 0;
}
.form-body {
background-color: #fff;
padding: 1em;
}
.form-body label,
.form-body input,
.form-body select,
.form-body textarea {
display: block;
width: 100%;
}
.form-body label {
font-size: .8em;
font-weight: 700;
line-height: 1;
margin: .75em 0 .25em;
}
.form-body input,
.form-body select,
.form-body textarea {
                                                                                                                                                                                                                                                                                                                                                                                                                                                 border-style: none;
                                                                                                                                                                                                                                                                                                                                                                                                                                                     border-color: inherit;
                                                                                                                                                                                                                                                                                                                                                                                                                                                     border-width: medium;
                                                                                                                                                                                                                                                                                                                                                                                                                                                     background-color: #f4f4f4;
                                                                                                                                                                                                                                                                                                                                                                                                                                                     border-radius: 4px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                     padding: .25em;
                                                                                                                                                                                                                                                                                                                                                                                                                                                     height: 47px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
.form-body fieldset {
border: none;
margin: 0 0 1em;
padding: 0;
}
.form-body fieldset:last-of-type {
margin-bottom: 0;
}
.form-body fieldset legend {
font-size: 1.25em;
font-weight: 700;
}
.form-footer {
background-color: #e2e2e2;
border-radius: 0 0 4px 4px;
padding: 1em;
}
.form-footer input[type="submit"] {
background-color: #F24865;
border: none;
border-radius: 4px;
color: #fff;
padding: 1em 1.5em;
}
.sub-opts input[name="subscription"] {
display: none;
}
.sub-opts input[name="subscription"] + .sub-opt {
background-color: #f4f4f4;
border-radius: 4px;
font-weight: 700;
}
.sub-opts input[name="subscription"]:checked + .sub-opt {
background-color: #09C775;
color: #fff;
}
.sub-opts input[name="subscription"] + .sub-opt .sub-label .fa {
display: none;
}
.sub-opts input[name="subscription"]:checked + .sub-opt .sub-label .fa {
display: inline-block;
}
.sub-opts .sub-opt .sub-label {
display: block;
cursor: pointer;
font-size: 1em;
padding: 1em;
}
.sub-opts .sub-opt .sub-label span.price {
display: inline-block;
float: right;
}</style>


<meta charset="UTF-8">
<title>Tahsilat Merkezi</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="./style.css">
</head>
<body>

<div class="wrap">
    <form id="form1" runat="server">
<div class="form-header">
<h2>Tahsilat Makbuzu</h2>
    <h1 >
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </h1>

</div>
<div class="form-body"> 

<i class="fa fa-user"></i> Tahsilat Bilgileri
    <label for="makbuzno">Makbuz Numarası</label>
<input type="number" name="makbuzno">

<label for="firmadi">Şahıs/Firma Adı</label>
<input type="text" name="firmadi">

<label for="tahsilatyapanadi">Tahsilat Yapanın Adı Soyadı</label>
<input type="text" name="tahsilatyapanadi">

<label for="odemeyapanadi">Ödeme Yapanın Adı Soyadı</label>
<input type="text"  name="odemeyapanadi">


<label for="banka">Banka</label>
<select type="text" name="banka">
<option></option><option ="">Ziraat Bankası</option><option ="">Kuveyt Türk</option><option ="">Akbank</option><option ="">Türk Ekonami Bankası</option><option ="">Yapı Kredi Bankası</option><option ="">Türkiye Halk Bankası A.Ş.</option><option ="">DenizBank</option><option ="">TEB</option><option ="">Garanti BBVA</option><option ="">Türkiye İş Bankası</option><option ="">VakıfBank</option>
</select>


<label for="sube">Sube</label>
<input type="text" name="sube">

<label for="tahsilturu">Tahsilat Türü</label>
<select type="text" name="tahsilturu">
<option></option><option ="">Banka</option><option ="">Kredi</option><option ="">Çek</option><option ="">Nakit</option>
</select>

    <div class="inputNumber">
        <label for="tahsilatmiktari">Tahsilat Miktarı</label>
        <input type="text" id="inputNumber" name="tahsilatmiktari">
    </div>



<label for="hesapiban">Hesap/IBAN</label>
<input type="text"  name="hesapiban">

<label for="tarih">Tahsilat Tarihi</label>
<input type="date" name="tarih">

<label for="tutar">Tutar</label>
<input type="text"  name="tutar">
   

<label for="ssk">SSK</label>
<input type="text" name="ssk" >

<label for="bagkur">Bağkur</label>
<input type="text"  name="bagkur" >

<label for="kdv">KDV</label>
<input type="text" name="kdv" >

<label for="kdv2">KDV2</label>
<input type="text"  name="kdv2" >

<label for="muhtasar">Muhtasar</label>
<input type="text" name="muhtasar" >

<label for="gelirvergisi">Gelir Vergisi</label>
<input type="text" name="gelirvergisi" >

<label for="gecicivergi">Geçiçi Vergi</label>
<input type="text"  name="gecicivergi" >

<label for="kurumvergi">Kurumlar Vergisi</label>
<input type="text"  name="kurumvergi" >

<label for="yapiposet">Yapılandırma Poşet</label>
<input type="text" name="yapiposet" >


<label for="diger">Diğer</label>
<input type="text" name="diger">


<label for="digereski">Diğer Eski Yıllar</label>
<input type="text" name="digereski" >

<label for="cesitlitahsil">Çeşitli Tahsilat</label>
<input type="text" name="cesitlitahsil">
      
<label for="not">Not:</label>
<textarea id="not" name="not"></textarea>
    


<asp:Button ID="kaydetButton" runat="server" OnClick="kaydetButton_Click"
           CssClass="btn btn-primary btn-lg btn-block" Text="Kaydet" ForeColor="Black" BackColor="Gray"/>

<asp:Button ID="makbuzlarButton" runat="server" OnClick="makbuzlarButton_Click"
           CssClass="btn btn-secondary btn-lg btn-block" Text="Makbuzlar" ForeColor="Black" BackColor="Gray" BorderColor="Gray"/>
   

        </form>

   <script>
       document.getElementById("inputNumber").addEventListener("input", function (e) {
    this.value = formatNumber(this.value);
  });

  function formatNumber(input) {
    var formattedInput = input.toString();
    formattedInput = formattedInput.replace(/[^\d]+/g, "");

    var parts = formattedInput.split("");
    var formattedParts = [];
    for (var i = 0; i < parts.length; i++) {
      if (i > 0 && (parts.length - i) % 3 === 0) {
        formattedParts.push(".");
      }
      formattedParts.push(parts[i]);
    }

    return formattedParts.join("");
  }
   </script>
  </body>
</html>