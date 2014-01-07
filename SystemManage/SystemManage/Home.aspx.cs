using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace SystemManage
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string textUser = Application["User"].ToString();
                DatasystemDataContext con = new DatasystemDataContext();
                var queryM = from M in con.Manages
                             where textUser == M.ID_User
                             select new { M.ID_Project, M.ID_User, M.Status };

                Gridshow1.DataSource = queryM;
                Gridshow1.DataBind();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CreateProject.aspx");
        }

        protected void SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = Gridshow1.SelectedRow;

            // Display the first name from the selected row.
            // In this example, the third column (index 2) contains
            // the first name.
            //MessageLabel.Text = "You selected " + row.Cells[1].Text + ".";
            //Response.Write(row.Cells[1].Text);
            Application["name_P"] = row.Cells[1].Text;
            Application["status"] = row.Cells[2].Text;
            Response.Redirect("Item_in.aspx");
        }

        protected void SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            // Get the currently selected row. Because the SelectedIndexChanging event
            // occurs before the select operation in the GridView control, the
            // SelectedRow property cannot be used. Instead, use the Rows collection
            // and the NewSelectedIndex property of the e argument passed to this 
            // event handler.
            GridViewRow row = Gridshow1.Rows[e.NewSelectedIndex];

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string textUser = Application["User"].ToString();
            DatasystemDataContext con = new DatasystemDataContext();
            var queryM = from M in con.Manages
                         where "Manager" == M.Status && textUser == M.ID_User
                         select new { M.ID_Project, M.ID_User, M.Status };

            Gridshow1.DataSource = queryM;
            Gridshow1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string textUser = Application["User"].ToString();
            DatasystemDataContext con = new DatasystemDataContext();
            var queryM = from M in con.Manages
                         where "Manager" != M.Status && textUser == M.ID_User
                         select new { M.ID_Project, M.ID_User, M.Status };

            Gridshow1.DataSource = queryM;
            Gridshow1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string textUser = Application["User"].ToString();
            DatasystemDataContext con = new DatasystemDataContext();
            var queryM = from M in con.Manages
                         where textUser == M.ID_User
                         select new { M.ID_Project, M.ID_User, M.Status };

            Gridshow1.DataSource = queryM;
            Gridshow1.DataBind();
        }
    }
}