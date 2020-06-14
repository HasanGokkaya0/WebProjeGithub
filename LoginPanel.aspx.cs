using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPanel : System.Web.UI.Page
{

    SqlConnection baglanti = new SqlConnection(@"Data Source=localhost;Initial Catalog=OkulDB;Integrated Security=True");



    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("SELECT * FROM TBL_OGRENCi WHERE NUMARA=@p1 and OGRSIFRE=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
        komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("NUMARA", TxtNumara.Text);
            Response.Redirect("OgrenciDefault.aspx");


        }
        else
        {
            TxtSifre.Text = "Hatalı Şifre";
        }
        baglanti.Close();
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("SELECT * FROM TBL_OGRETMEN WHERE OGRTNUMARA=@p1 and OGRTSIFRE=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
        komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("OGRTNUMARA", TxtNumara.Text);
            Response.Redirect("Default.aspx");


        }
        else
        {
            TxtSifre.Text = "Hatalı Şifre";
        }
        baglanti.Close();

    }
}