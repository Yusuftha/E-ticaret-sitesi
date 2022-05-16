using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
namespace proje
{
    public partial class arama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            String gelenid = Request.QueryString["id"].ToString();
            if (gelenid == "")
            {
                hata.Text = "Aramanızla eşleşen sonuc yok.";
                ara.Visible = true;
                

            }
            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbDataAdapter da = new OleDbDataAdapter("Select * From urunler where urunadı like '%" + gelenid + "%'", baglanti);
               
                DataTable dt = new DataTable();
               
                da.Fill(dt);
                
                tekrar.DataSource = dt;
                tekrar.DataBind();
                baglanti.Close();
            }
		
        }
    }
}