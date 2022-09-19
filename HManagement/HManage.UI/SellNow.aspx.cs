using HManage.BusinessLayer;
using HManage.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HManage.UI
{
    public partial class SellNow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sell_Now(object sender, EventArgs e)
        {
            try
            {
                HSell hSell = new HSell();
                hSell.SellId = int.Parse(txtsid.Text);
                hSell.HID = int.Parse(txthid.Text);
                hSell.SName = txtsname.Text;
                hSell.UserID = int.Parse(txtuid.Text);
                hSell.Sell= float.Parse(txtsprice.Text);
                SellService sellService = new SellService();
                sellService.AddSell(hSell);
                lbnmsg.Text = "Record Added";
            }
            catch (Exception ex)
            {

                lbnmsg.Text = ex.Message;
            }
        }
    }
}