using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.Entity;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Globalization;
using System.Drawing;

namespace WebApp
{
    public partial class Default : System.Web.UI.Page
    {
      tahsilat_verileriEntities4 baglantim =new tahsilat_verileriEntities4();       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void kaydetButton_Click(object sender, EventArgs e)
        {
            string firmadi = Request.Form["firmadi"];
            string tahsilatyapanadi = Request.Form["tahsilatyapanadi"];
            string odemeyapanadi = Request.Form["odemeyapanadi"];
            string banka = Request.Form["banka"];
            string sube = Request.Form["sube"];
            string tahsilturu = Request.Form["tahsilturu"];
            string tahsilatmiktari = Request.Form["tahsilatmiktari"];
            string hesapiban = Request.Form["hesapiban"];
            string tarih = Request.Form["tarih"];
            string tutar = Request.Form["tutar"];
            string ssk = Request.Form["ssk"];
            string bagkur = Request.Form["bagkur"];
            string kdv = Request.Form["kdv"];
            string kdv2 = Request.Form["kdv2"];
            string muhtasar = Request.Form["muhtasar"];
            string gelirvergisi = Request.Form["gelirvergisi"];
            string gecicivergi = Request.Form["gecicivergi"];
            string kurumvergi = Request.Form["kurumvergi"];
            string yapiposet = Request.Form["yapiposet"];
            string diger = Request.Form["diger"];
            string digereski = Request.Form["digereski"];
            string cesitlitahsil = Request.Form["cesitlitahsil"];
            string not = Request.Form["not"];
        
           tahsilatbilgileri tahsilekle = new tahsilatbilgileri();
            try
            {
                tahsilekle.Firma_Adi = firmadi;
                tahsilekle.Tahsil_Yapan = tahsilatyapanadi;
                tahsilekle.Odeme_Yapan = odemeyapanadi;
                tahsilekle.Banka = banka;
                tahsilekle.Sube = sube;
                tahsilekle.Tahsilat_Turu = tahsilturu;
                tahsilekle.Tahsilat_Miktari = decimal.Parse(tahsilatmiktari);
                tahsilekle.Hesap_Iban = hesapiban;
                tahsilekle.Tarih = DateTime.Now;
                tahsilekle.Tutar = decimal.Parse(tutar);
                tahsilekle.Ssk = decimal.Parse(ssk);
                tahsilekle.Bagkur = decimal.Parse(bagkur);
                tahsilekle.Kdv = decimal.Parse(kdv);
                tahsilekle.Kdv_2 = decimal.Parse(kdv2);
                tahsilekle.Muhtasar = decimal.Parse(muhtasar);
                tahsilekle.Gelir_Vergisi = decimal.Parse(gelirvergisi);
                tahsilekle.Gecici_Vergi = decimal.Parse(gecicivergi);
                tahsilekle.Kurumlar_Vergisi = decimal.Parse(kurumvergi);
                tahsilekle.Yapılandırma_Poset = decimal.Parse(yapiposet);
                tahsilekle.Diger = decimal.Parse(diger);
                tahsilekle.Diger_Eski_Yillar = decimal.Parse(digereski);
                tahsilekle.Cesitli_Tahsilat = decimal.Parse(cesitlitahsil);
                tahsilekle.Not = not;
            }
            catch
            {

            }
            try
            {
                Label1.Visible = true;
                Label1.ForeColor = Color.Green;
                Label1.Text = "Makbuz kaydedildi";
                baglantim.tahsilatbilgileri.Add(tahsilekle);
                baglantim.SaveChanges();
            }
            catch (Exception)
            {
                Label1.Visible = true;
                Label1.ForeColor = Color.Red;
                Label1.Text = "Kayıt tamamlanamadı.";
            }
        }
        protected void makbuzlarButton_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://localhost:50973/Makbuzlarim.aspx");
        }
    }
}