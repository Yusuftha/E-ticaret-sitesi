using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class sablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null )
            {
                kull.InnerText = "";
                giris.Visible = true;
                cikis.Visible = false;
            }
            else
            {
                kull.InnerText = "" + Session["kullaniciad"];
                
                giris.Visible = false;
                cikis.Visible = true;
                uyeol.Visible = false;
            }
            if (Session["admin"] != null)
            {
                kull.InnerText = "Admin: " +Session["admin"];
                giris.Visible = false;
                cikis.Visible = true;
                uyeol.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("arama.aspx?id=" + txtarama.Text.Trim());
        }
        
    }
}
          
            