using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SILHP.Page.Data
{
    public partial class DistrikData : System.Web.UI.Page
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
                distriknamatxt.Text = Session["user"].ToString();
            }
        }

        protected void ButtonOK_Click(object sender, EventArgs e)
        {
            
            PilihData.Text = "";
            tampildata();
        }

        public void tampildata()
        {
            koneksi.Open();
            sql = "select uraian as 'Uraian', jumlah_ts as 'Jml Tebu Sendiri', jumlah_tr as 'Jml Tebu Rakyat', jumlah_kut as 'Jumlah KUT', total as 'Total' from distrik, laporan, laporan_tebu where distrik.distrik_ID=laporan.distrik_ID and laporan_tebu.no_laporan=laporan.no_laporan and distrik_nama = @distrik_nama and komoditi = @komoditi order by laporan.no_laporan, uraian";
            command = new SqlCommand(sql, koneksi);
            command.Parameters.AddWithValue("distrik_nama", DropDownList1.SelectedItem.Value);
            command.Parameters.AddWithValue("komoditi", DropDownListKomoditi.SelectedItem.Value);
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