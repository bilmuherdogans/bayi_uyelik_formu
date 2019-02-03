<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Bayilik Ön Başvuru Formu</title>
</head>
<body>

<div class="ortaBlok">

<form action="../store" method="post" class="formElemani">

<fieldset>
<div  style="padding:5px; background-color: #ffffff;" align="center">Bayilik Ön Başvuru Formu</div>

<div class="pozisyon">

<div class="blok"><a>İSİM SOYİSİM: </a><input name="isim"  style="margin-left:15px;" type="text" size="20"> </div>

<div class="blok"><a>TC KİMLİK:</a> <input name="tcKimlikNo" style="margin-left:30px;" type="text" size="20"></div>

<div class="blok"><a>ADRES:</a><input name="adres" style="margin-left:59px;"  type="text" size="20"></div>

<div class="blok"><a>TELEFON:</a><input name="telefon" style="margin-left:42px;" type="text" size="20"></div>
<div class="blok"><a>E- POSTA:</a><input  name="eposta" style="margin-left:45px;" type="text" size="20"></div>
<div class="blok"><a>DOĞUM TARİHİ: </a><input name="dogumTarihi" style="margin-left:2px;" type="text" size="20"></div>
<div class="blok"><a>PERAKENDE TİCARETİ İLE UĞRAŞTINIZ MI ? Evet  <input type="radio" value="Evet" name="sonuc">-- Hayır <input type="radio" value="Hayir" name="sonuc"> </a> </div>

</div>
<div class="blok" ><a>LOKUMCU BABA’YI TERCİH ETMENİZİN SEBEBİ NEDİR?</a></div>
<div class="blok2">
<textarea  class="textArelar" name="tercihSebebi"></textarea>
</div>
<div class="blok"><a>HANGİ İL/İLÇE/SEMT İÇİN LOKUMCU BABA </a><br><a>İŞLETMECİLİĞİ DÜŞÜNÜYORSUNUZ? </a></div>

<div class="blok">

<a>İl </a>
<input name="il" style=" width:80px; margin-left:10px;" type="text" size="40">
İlçe
<input name="ilce" style="width:80px;margin-left:5px;" type="text" size="40">
Semt
<input name="semt" style="width:80px; margin-left:5px;" type="text" size="40">

</div>

<div class="blok">
<a>YATIRIM MİKTARINIZ NEDİR?</a>
<input name="yatirimMiktari" style="margin-left: 8px" type="text" size="22">
</div>

<div class="blok"><a>EKLEMEK İSTEDİKLERİNİZ</a></div>
<div class="blok2">
<textarea  class="textArelar" name="eklemekIstedikleriniz" ></textarea>
</div>


<div  class="blok2" >

<input class="butonlar" type="reset" value="Temizle">

<input class="butonlar" id="b2" type="submit" title="sd" value="Bayilik Başvurusunu Kaydet">

</div>


</fieldset>
</form>

</div>
</body>
</html>


<style type="text/css">
@CHARSET "UTF-8";
*{
	
	padding: 0px;
	margin: 0px;
	font-family: "Times New Roman", Times, serif;
	font-size: 12px;
	font-weight: bold;
}
.ortaBlok{
	padding:0;
	width: 27%;
	height: 600px;
	margin: 0 auto;
	background-color: #6987b5;
		border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
}
.formElemani{
	margin: 0 auto;
}
.blok{
	background-color: #6987b5;
	width: 390px;
	height: 20px;
	padding-top: 15px;

}
.blok2
{
	background-color: #6987b5;
}
.textArelar{
	margin-top:2px;
	margin-left: 20px;
    width:86%;
	height: 60px;
}
.butonlar{
	
	margin:0 auto;
	margin-top:8px;
	width: 165px;
	height: 30px;
	margin-left: 20px;	
	margin-bottom: 20px;
}
#b2{
	margin-left: 3px;
}
.blok a{
	margin-left: 20px;
}
</style>