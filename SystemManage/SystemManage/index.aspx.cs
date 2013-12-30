using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SystemManage
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=GUN;Initial Catalog=SystemManage;Integrated Security=true";
            con.Open();

            string query = "SELECT * FROM User_name WHERE ID_User=@user and Pass=@pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add(new SqlParameter("@user", textid.Text));
            cmd.Parameters.Add(new SqlParameter("@pass", textpass.Text));

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {

                //Application["User"] = Textid.Text;
                //Application["Pass"] = Textpass.Text;
                Application["User"] = textid.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }

        protected void register_B_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}