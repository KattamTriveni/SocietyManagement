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
    public partial class AddHouse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_House(object sender, EventArgs e)
        {
            try
            {
                House house = new House();
                house.HID = int.Parse(txtid.Text);
                house.BlockNo = int.Parse(txtblockno.Text);
                house.Typ = txttype.Text;
                house.SName = txtsname.Text;
                HouseService houseService = new HouseService();
                bool result =houseService.ValidateSociety (house.SName);
                if (result)
                {
                    houseService.AddHouse(house);
                    lbnmsg .Text = "Record Added";
                }     
                else
                    lbnmsg .Text = "invalid details";
            }
            catch (Exception ex)
            {

                lbnmsg .Text = ex.Message;
            }
        }
    }
}