using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SystemManage
{
    public partial class add_process : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DatasystemDataContext con = new DatasystemDataContext();
            Process P = new Process();
            P.Name_Processes = TextBox1.Text;

            con.Processes.InsertOnSubmit(P);
            con.SubmitChanges();
            Response.Redirect("Info_item.aspx");
        }
    }
}