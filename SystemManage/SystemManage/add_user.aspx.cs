using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SystemManage
{
    public partial class add_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            string namepro = Application["name_P"].ToString();
            DatasystemDataContext con = new DatasystemDataContext();
            Manage M = new Manage();
            M.ID_Project = namepro;
            M.ID_User = Dropuser.Text;
            M.Status = prosition_text.Text;

            con.Manages.InsertOnSubmit(M);
            con.SubmitChanges();
            Response.Redirect("Item_in.aspx");
        }

    }
}