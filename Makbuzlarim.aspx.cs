using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    
    public partial class Makbuzlarim : System.Web.UI.Page
    {
        tahsilat_verileriEntities4 baglantim = new tahsilat_verileriEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      


        protected void listele_Click(object sender, EventArgs e)
        {
            baglantim.tahsilatbilgileri.Load();
            GridView1.DataSource = baglantim.tahsilatbilgileri.Local;
            GridView1.DataBind();
        }
    }
}