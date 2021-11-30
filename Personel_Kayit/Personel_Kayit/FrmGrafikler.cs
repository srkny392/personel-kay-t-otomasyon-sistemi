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
    public partial class FrmGrafikler : Form
    {
        public FrmGrafikler()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-J4S8AL7\\SQLEXPRESS;Initial Catalog=PersonelVeriTabanii;Integrated Security=True");

        private void FrmGrafikler_Load(object sender, EventArgs e)
        {
            //Grafik 1
            baglanti.Open();
            SqlCommand komutg1 = new SqlCommand("select PerSehir,count(*) from Tbl_Personel group by PerSehir", baglanti);
            SqlDataReader kg1 = komutg1.ExecuteReader();
            while (kg1.Read())
            {
                chart1.Series["Sehirler"].Points.AddXY(kg1[0], kg1[1]);
            }
            baglanti.Close();
            //Grafik 2
            baglanti.Open();
            SqlCommand komutg2 = new SqlCommand("select PerMeslek,avg(PerMaas) from Tbl_Personel group by PerMeslek", baglanti);
            SqlDataReader kg2 = komutg2.ExecuteReader();
            while (kg2.Read())
            {
                chart2.Series["Meslek-Maas"].Points.AddXY(kg2[0], kg2[1]);
            }
            baglanti.Close();

        }
    }
}
