using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["NUMARA"].ToString();
        DataSetTableAdapters.TBL_OGRENCİTableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİTableAdapter();

        TextBox2.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRAD + " " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSOYAD;
        TextBox3.Text = "Mail Adresi: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRMAİL;
        TextBox4.Text = "Telefon Numarası: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRTELEFON;
        TextBox5.Text = "Şifre: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSIFRE;
        TextBox6.Text = "Fotoğraf Linki: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRFOTOGRAF;



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrenciGuncelle2.aspx?NUMARA=" + TextBox1.Text);
    }
}