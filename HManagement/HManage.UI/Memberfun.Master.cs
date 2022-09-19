using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HManage.UI
{
    public partial class Memberfun : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddRent.aspx");
        }

        protected void btnsell_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellNow.aspx");
        }

        protected void btnaccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("RentReport.aspx");
        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberHome.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnSellReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellReport.aspx");
        }
    }
}