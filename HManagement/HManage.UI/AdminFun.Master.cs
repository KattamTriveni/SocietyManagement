using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HManage.UI
{
    public partial class AdminFun : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            
        protected void linkbtnAddSoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddSociety1.aspx");
        }

        protected void linkbtnAddHouse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddHouse.aspx");
        }

        protected void linkbtnAlcHouse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddMember.aspx");
        }

        protected void linkbtnSocReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SocietyReport.aspx");
        }
        protected void linkbtnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }

       
}