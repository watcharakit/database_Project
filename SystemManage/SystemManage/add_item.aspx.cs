using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SystemManage
{
    public partial class add_item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Item_in.aspx");
        }

        protected void create_Click(object sender, EventArgs e)
        {

            if ((nameitem.Text != null) && (DropDay.Text != null) && (DropMonth.Text != null)
                && (DropYear.Text != null) && (comment_T.Text != ""))
            {
                string date = DropYear.Text + '/' + DropMonth.Text + '/' + DropDay.Text;
                DateTime dt = Convert.ToDateTime(date);
                DatasystemDataContext con = new DatasystemDataContext();
                Sub_Project S = new Sub_Project();
                string textname = Application["name_P"].ToString();
                S.Subrasks_Project = nameitem.Text;
                S.Dead_Line = dt;
                S.Comment = comment_T.Text;
                S.ID_Project = textname;

                con.Sub_Projects.InsertOnSubmit(S);
                con.SubmitChanges();
                Response.Redirect("Item_in.aspx");
            }
            else {
                Label2.Text = "ข้อมูลไม่เพียงพอ";
            }
        }
    }
}