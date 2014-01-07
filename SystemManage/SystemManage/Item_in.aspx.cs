using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SystemManage
{
    public partial class Item_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string status = Application["status"].ToString();
            if (status == "Manager")
            {
                string textnameP = Application["Name_P"].ToString();
                DatasystemDataContext con = new DatasystemDataContext();
                var querys = from S in con.Sub_Projects
                             where textnameP == S.ID_Project
                             select new { S.Subrasks_Project, S.Dead_Line, S.Name_Processes, S.username, S.Issue };

                Gridshow.DataSource = querys;
                Gridshow.DataBind();
            }
            else {
                new0.Visible = false;
                adduser0.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                string textuser = Application["Name_P"].ToString();
                DatasystemDataContext con = new DatasystemDataContext();
                var querys = from S in con.Sub_Projects
                             where textuser == S.ID_Project
                             select new { S.Subrasks_Project, S.Dead_Line, S.Name_Processes, S.username, S.Issue };

                Gridshow.DataSource = querys;
                Gridshow.DataBind();
            }
        }

        protected void selectchange(object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = Gridshow.SelectedRow;

            // Display the first name from the selected row.
            // In this example, the third column (index 2) contains
            // the first name.
            //MessageLabel.Text = "You selected " + row.Cells[1].Text + ".";
            //Response.Write(row.Cells[1].Text);
            Application["name_I"] = row.Cells[1].Text;
            Response.Redirect("Info_item.aspx");
        }

        protected void selectchangeing(object sender, GridViewSelectEventArgs e)
        {
            // Get the currently selected row. Because the SelectedIndexChanging event
            // occurs before the select operation in the GridView control, the
            // SelectedRow property cannot be used. Instead, use the Rows collection
            // and the NewSelectedIndex property of the e argument passed to this 
            // event handler.
            GridViewRow row = Gridshow.Rows[e.NewSelectedIndex];

            // You can cancel the select operation by using the Cancel
            // property. For this example, if the user selects a customer with 
            // the ID "ANATR", the select operation is canceled and an error message
            // is displayed.
            if (row.Cells[1].Text == "ANATR")
            {
                e.Cancel = true;
                //MessageLabel.Text = "You cannot select " + row.Cells[1].Text + ".";
            }
        }

        protected void new_Click(object sender, EventArgs e)
        {
            string textstatus = Application["status"].ToString();
            if (textstatus == "Manager")
            {
                Response.Redirect("add_item.aspx");
            }
            else {
                Label2.Text = "คุณไม่สามารถใช้งานในส่วนนี้ได้";
            }
        }

        protected void adduser_Click(object sender, EventArgs e)
        {
            string status = Application["status"].ToString();
            if (status == "Manager")
            {
                Response.Redirect("add_user.aspx");
            }
            else {
                Label2.Text = "คุณไม่สามารถใช้งานในส่วนนี้ได้";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string status = Application["status"].ToString();
            if(status == "Manager"){
            string textpro = Application["Name_P"].ToString();
            System.Data.SqlClient.SqlConnection sqlConnection1 =
            new System.Data.SqlClient.SqlConnection("Data Source=GUN;Initial Catalog=SystemManage;Integrated Security=true");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "DELETE Manage WHERE ID_Project =@item";
            cmd.Parameters.AddWithValue("@item", textpro);
            cmd.Connection = sqlConnection1;

            System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand();
            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.CommandText = "DELETE Project WHERE ID_Project =@item";
            cmd1.Parameters.AddWithValue("@item", textpro);
            cmd1.Connection = sqlConnection1;

            System.Data.SqlClient.SqlCommand cmd2 = new System.Data.SqlClient.SqlCommand();
            cmd2.CommandType = System.Data.CommandType.Text;
            cmd2.CommandText = "DELETE Sub_Project WHERE ID_Project =@item";
            cmd2.Parameters.AddWithValue("@item", textpro);
            cmd2.Connection = sqlConnection1;

            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            sqlConnection1.Close();
            Response.Redirect("Home.aspx");
            }
            else
            {
                Label2.Text = "คุณไม่สามารถใช้งานส่วนนี้ได้";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("remove.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                string textP = Application["Name_P"].ToString();
                DatasystemDataContext con = new DatasystemDataContext();
                var querys = from S in con.Sub_Projects
                             where textP == S.ID_Project && TextBox1.Text == S.username //&& textP == S.Subrasks_Project
                             select new { S.Subrasks_Project, S.Dead_Line, S.Name_Processes, S.username, S.Issue };

                Gridshow.DataSource = querys;
                Gridshow.DataBind();
            }
            else {
                string textP = Application["Name_P"].ToString();
                DatasystemDataContext con = new DatasystemDataContext();
                var querys = from S in con.Sub_Projects
                             where textP == S.ID_Project && null == S.username //&& textP == S.Subrasks_Project
                             select new { S.Subrasks_Project, S.Dead_Line, S.Name_Processes, S.username, S.Issue };

                Gridshow.DataSource = querys;
                Gridshow.DataBind();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string textP = Application["Name_P"].ToString();
            DatasystemDataContext con = new DatasystemDataContext();
            var querys = from S in con.Sub_Projects
                         where textP == S.ID_Project 
                         select new { S.Subrasks_Project, S.Dead_Line, S.Name_Processes, S.username, S.Issue };

            Gridshow.DataSource = querys;
            Gridshow.DataBind();
        }
    }
}