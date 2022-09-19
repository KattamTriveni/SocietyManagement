using HManage.BusinessLayer;
using HManage.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace HManage.UI
{
    public partial class AddRent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Rent(object sender, EventArgs e)
        {
            try
            {
                HRent hRent = new HRent();
                hRent.RID = int.Parse(txtrentId.Text);
                hRent.HID = int.Parse(txthouseId.Text);
                hRent.SName = txtsname.Text;
                hRent.UserID = int.Parse(txtuid.Text);
                hRent.Rent = float.Parse(txtrent.Text);
                RentService rentService = new RentService();
                rentService.AddRent(hRent);
                lbnmsg.Text = "Record Added";
                
            }
            catch (Exception ex)
            {

                lbnmsg.Text = ex.Message;
            }
        }
    }
}