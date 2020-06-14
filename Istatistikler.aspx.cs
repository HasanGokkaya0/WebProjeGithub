using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Istatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCİ1TableAdapter dt = new DataSetTableAdapters.TBL_OGRENCİ1TableAdapter();
        TextBox1.Text ="Toplam Öğrenci Sayısı:  " + dt.İstatistik1().ToString();
        TextBox2.Text = "Toplam Öğretmen Sayısı:  " + dt.İstatistik2().ToString();
        TextBox3.Text = "Toplam Ders Sayısı:  " + dt.İstatistik3().ToString();
        TextBox4.Text = "Toplam Mesaj Sayısı:  " + dt.İstatistik4().ToString();
        TextBox5.Text = "Toplam Duyuru Sayısı:  " + dt.İstatistik5().ToString();
        


    }
}