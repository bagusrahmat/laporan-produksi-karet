using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SILHP.Page.Data
{
    public partial class LaporanDistrik : System.Web.UI.Page
    {
        public SqlConnection koneksi;
        public SqlCommand command;
        public SqlDataAdapter da;
        public DataTable dt;
        string sql, sqlcon;

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon = WebConfigurationManager.ConnectionStrings["koneksi"].ToString();
            koneksi = new SqlConnection(sqlcon);

            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

            else
            {
                distriktxt.Text = Session["user"].ToString();
                tampildata();
            }
        }

        public void tampildata()
        {
            koneksi.Open();
            sql = "select laporan_tebu.no_laporan as 'No Laporan', komoditi as 'Komoditi', uraian as 'Uraian', tahun as 'Tahun', jumlah_ts as 'Jml Tebu Sendiri', jumlah_tr as 'Jml Tebu Rakyat', jumlah_kut as 'Jml KUT', total as 'Total' from distrik, laporan, laporan_tebu where distrik.distrik_id = laporan.distrik_id and laporan_tebu.no_laporan = laporan.no_laporan and distrik_nama = @distrik_nama order by laporan_tebu.no_laporan desc, uraian asc";
            command = new SqlCommand(sql, koneksi);
            command.Parameters.AddWithValue("distrik_nama", Session["user"].ToString());
            da = new SqlDataAdapter();
            dt = new DataTable();
            da.SelectCommand = command;
            SqlCommandBuilder sbc = new SqlCommandBuilder(da);
            da.Fill(dt);
            GridViewData.DataSource = dt;
            GridViewData.DataBind();
            koneksi.Close();
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("~/Login.aspx");
        }
    }
}