using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                TxtOgrid.Text = id.ToString();
                DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
                TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAİL;
                TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                TxtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;
            }
            catch (Exception)
            {
                TxtOgrFoto.Text = "Link Girin";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();
        dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFoto.Text,
           Convert.ToInt32(TxtOgrid.Text));
        Response.Redirect("Default.aspx");
    }
}