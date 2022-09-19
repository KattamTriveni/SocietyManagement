using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HManage.UI
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Admin_Login(object sender, EventArgs e)
        {
            string uname = txtun.Text;
            string pwd = txtpwd.Text;
            if (uname == "Triveni" && pwd == "1234")
            {
                Response.Redirect("AddSociety1.aspx");
            }
            else
            {
                lbn1.Text = "Invalid User details";
            }
        }
    }
}