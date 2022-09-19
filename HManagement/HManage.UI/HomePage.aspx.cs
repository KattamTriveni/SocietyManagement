using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using HManage.Entities;
using HManage.BusinessLayer;
using System.Net.Sockets;

namespace HManage.UI
{
    public partial class HomePage : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void User_Login(object sender, EventArgs e)
        {
            try
            {
                User user = new User();
                user.UserName = txtuname.Text;
                user.Passwords = txtpwd.Text;
                UserService userService = new UserService();
                bool result=userService.ValidateUser(user.UserName, user.Passwords);
                if (result) 
                    Response.Redirect("MemberHome.aspx");
                else
                    lbn1.Text = "invalid details";


            }
            catch (Exception ex)
            {

                lbn1.Text = ex.Message;
            }
        }
    }
}