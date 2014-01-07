using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace SystemManage
{
    public partial class Info_item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = Application["status"].ToString();
            if (text == "Manager")
            {
                string textitem = Application["Name_I"].ToString();
                string textpro = Application["Name_P"].ToString();
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=GUN;Initial Catalog=SystemManage;Integrated Security=true";
                con.Open();

                string query = "SELECT Comment FROM Sub_Project WHERE Subrasks_Project='" + textitem + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                string actresult = ((string)cmd.ExecuteScalar());
                labeltext.Text = actresult.ToString();
            }
            else {
                Label1.Visible = false;
                Label2.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;
                string textitem = Application["Name_I"].ToString();
                string textpro = Application["Name_P"].ToString();
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=GUN;Initial Catalog=SystemManage;Integrated Security=true";
                con.Open();

                string query = "SELECT Comment FROM Sub_Project WHERE Subrasks_Project='" + textitem + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                string actresult = ((string)cmd.ExecuteScalar());
                labeltext.Text = actresult.ToString();
            }

        }

        protected void save_Click(object sender, EventArgs e)
        {
            string textitem = Application["Name_I"].ToString();
            System.Data.SqlClient.SqlConnection sqlConnection1 =
            new System.Data.SqlClient.SqlConnection("Data Source=GUN;Initial Catalog=SystemManage;Integrated Security=true");
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE Sub_Project SET [username] =@user,[Name_Processes]=@process,Issue=@issue WHERE Subrasks_Project =@item";
            cmd.Parameters.AddWithValue("@user", DropDown.Text);
            cmd.Parameters.AddWithValue("@process", DropDown1.Text);
            cmd.Parameters.AddWithValue("@item", textitem);
            cmd.Parameters.AddWithValue("@issue", TextBox1.Text);
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();
            //Response.Write(DropDown.Text);
            Response.Redirect("Item_in.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_process.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string textitem = Application["Name_I"].ToString();
            System.Data.SqlClient.SqlConnection sqlConnection1 =
            new System.Data.SqlClient.SqlConnection("Data Source=GUN;Initial Catalog=SystemManage;Integrated Security=true");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "DELETE Sub_Project WHERE Subrasks_Project =@item";
            cmd.Parameters.AddWithValue("@item", textitem);
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();
            Response.Redirect("Item_in.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Item_in.aspx");
        }

    }
}