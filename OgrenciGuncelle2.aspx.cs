using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["Numara"];
        if (Page.IsPostBack==false)
        {
            
        }
       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
        dt.OgrenciSifreGuncelle(TextBox2.Text, TextBox1.Text);
        Response.Redirect("OgrenciDefault.aspx?NUMARA="+TextBox1.Text);
    }
}