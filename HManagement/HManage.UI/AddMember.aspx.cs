using HManage.BusinessLayer;
using HManage.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HManage.UI
{
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Member(object sender, EventArgs e)
        {
            try
            {
                User user = new User();
                user.UserID = int.Parse(txtuid.Text);
                user.FullName = txtname.Text;
                user.Email = txtemail.Text;
                user.Mobile = txtmoblie.Text;
                user.HID = int.Parse(txthid.Text);
                user.SName = txtsname.Text;
                user.Member = int.Parse(txtmembers.Text);
                user.UserName = txtuname.Text;
                user.Passwords = txtpwd.Text;
                UserService userService = new UserService();
                bool result = userService.ValidateHouse(user.HID,user.SName);
                if (result)
                {
                    userService.AddUser(user);
                    lbnmsg.Text = "Member details are added";
                }
                else
                    lbnmsg.Text = "invalid Details";
              
            }
            catch (Exception ex)
            {

                lbnmsg .Text = ex.Message;
            }
        }
    }
}