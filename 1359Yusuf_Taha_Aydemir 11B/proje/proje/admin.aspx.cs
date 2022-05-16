﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace proje
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urun.accdb"));
                baglanti.Open();
                OleDbDataAdapter adap = new OleDbDataAdapter("select * from urunler", baglanti);
                DataTable dt = new DataTable();
                adap.Fill(dt);
                tekrar.DataSource = dt;
                tekrar.DataBind();
                baglanti.Close();
            }
        }
    }
}