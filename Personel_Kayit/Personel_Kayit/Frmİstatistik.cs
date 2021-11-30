using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Personel_Kayit
{
    public partial class Frmİstatistik : Form
    {
        public Frmİstatistik()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-J4S8AL7\\SQLEXPRESS;Initial Catalog=PersonelVeriTabanii;Integrated Security=True");

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void Frmİstatistik_Load(object sender, EventArgs e)
        {
            //Toplam Personel Sayısı
            baglanti.Open();
            SqlCommand komut1 = new SqlCommand("Select count(*) from Tbl_Personel", baglanti);

            SqlDataReader dr1 = komut1.ExecuteReader();//veri okuma olayı oluyor
            while (dr1.Read())
            {
                lbltoplampersonel.Text = dr1[0].ToString();

            }
            baglanti.Close();
            //Evli Personel Sayısı
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Select count(*) from Tbl_Personel where PerDurum=1", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                lblevlipersonel.Text = dr2[0].ToString();
            }
            baglanti.Close();
            //Bekar Personel Sayısı
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("select count(*) from Tbl_Personel where PerDurum=0", baglanti);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                lblbekarpersonel.Text = dr3[0].ToString();
            }
            baglanti.Close();
            //Şehir Sayısı
            baglanti.Open();
            SqlCommand komut4 = new SqlCommand("select count(distinct(PerSehir)) from Tbl_Personel", baglanti);
            SqlDataReader dr4 = komut4.ExecuteReader();
            while (dr4.Read())
            {
                lblsehirsayisi.Text = dr4[0].ToString();

            }
            baglanti.Close();
            //Toplam Maaş
            baglanti.Open();
            SqlCommand komut5 = new SqlCommand("select sum(PerMaas) from Tbl_Personel", baglanti);
            SqlDataReader dr5 = komut5.ExecuteReader();
            while (dr5.Read())
            {
                lbltoplammaas.Text = dr5[0].ToString();

            }
            baglanti.Close();
            //Ortalama Maaş
            baglanti.Open();
            SqlCommand komut6 = new SqlCommand("select avg(PerMaas) from Tbl_Personel", baglanti);
            SqlDataReader dr6 = komut6.ExecuteReader();
            while (dr6.Read())
            {
                lblortmaas.Text = dr6[0].ToString();

            }
            baglanti.Close();




            


        }
    }
}
