using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SILHP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection koneksi = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ToString());
            koneksi.Open();
            string query = "select count(*) from distrik where distrik_nama = @distrik_nama and password = '"+password.Text+"'";

            SqlCommand command = new SqlCommand(query, koneksi);
            command.Parameters.AddWithValue("distrik_nama", DropDownListdistrik.SelectedItem.Value);
            string output = command.ExecuteScalar().ToString();

            if (output == "1")
            {
                Session["user"] = DropDownListdistrik.SelectedItem.Value;
                Response.Redirect("~/Page/Data/LaporanDistrik.aspx");
            }

            else
            {
                LoginStatus.Text = "Password Incorrect!";
            }
        }
    }
}