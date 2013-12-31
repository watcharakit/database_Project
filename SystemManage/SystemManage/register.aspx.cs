using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SystemManage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if ((username.Text != "") || (pass1.Text != "") || (pass2.Text != "") || (firstname.Text != "")
                || (lastname.Text != "") || (day.Text != "") ||(month.Text!="")
                ||(year.Text!="") || (email.Text != ""))
            {
                if (pass1.Text == pass2.Text)
                {
                    string date = year.Text + '/' + month.Text + '/' + day.Text ;
                    DateTime dt = Convert.ToDateTime(date);
                    DatasystemDataContext con = new DatasystemDataContext();
                    User_name user = new User_name();
                    user.ID_User = username.Text;
                    user.Pass = pass1.Text;
                    user.FirstName = firstname.Text;
                    user.LastName = lastname.Text;
                    user.Sex = sex_drop.Text;
                    user.birthday = dt;
                    user.email = email.Text;
                    user.Telephone = tele_b.Text;
                    con.User_names.InsertOnSubmit(user);
                    con.SubmitChanges();
                    //Response.Write(dt);

                }
                else {
                    Label1.Text = "พาสเวิร์ดไม่ตรงกัน";
                }
            }
            else {
                Label1.Text = "กรอกข้อมูลไม่ครบ";
            }
        }
    }
}