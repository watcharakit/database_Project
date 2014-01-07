using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SystemManage
{
    public partial class Page_1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=GUN;Initial Catalog=SystemManage;Integrated Security=true";
            con.Open();

            string textUser = Application["User"].ToString();

            string query = "SELECT FirstName FROM User_name WHERE ID_User='" + textUser + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            string actresult = ((string)cmd.ExecuteScalar());
            nameUser.Text = actresult.ToString();
            Application["firstname"] = actresult.ToString();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}