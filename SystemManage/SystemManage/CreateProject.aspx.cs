using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SystemManage
{
    public partial class CreateProject : System.Web.UI.Page
    {
        DatasystemDataContext con = new DatasystemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string fname = Application["firstname"].ToString();
            string textUser = Application["User"].ToString();
            //Response.Write(fname);
            if (nameP.Text != null)
            {
                DatasystemDataContext con = new DatasystemDataContext();
                Project P = new Project();

                P.Name_Project = nameP.Text;
                P.ID_Project = fname +'/'+ nameP.Text;

                con.Projects.InsertOnSubmit(P);
                con.SubmitChanges();

                Manage M = new Manage();
                M.ID_Project = fname +'/'+ nameP.Text;
                M.ID_User = textUser;
                M.Status = "Manager";

                con.Manages.InsertOnSubmit(M);
                con.SubmitChanges();

                Response.Redirect("Home.aspx");
            }
        }
    }
}