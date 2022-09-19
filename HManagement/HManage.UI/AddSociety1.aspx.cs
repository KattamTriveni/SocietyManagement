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
    public partial class AddSociety1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Society(object sender, EventArgs e)
        {
            try
            {
                Society society = new Society();
                society.SocID = int.Parse(txtId.Text);
                society.SName = txtname.Text;
                society.Addres = txtadderss.Text;
                society.City = txtcity.Text;
                society.Pincode = txtpin.Text;
                society.NoHouse = int.Parse(txtno.Text);
                SocietyService societyService = new SocietyService();
                societyService.AddSociety(society);
                lbn1.Text = "Record Added";
            }
            catch (Exception ex)
            {

                lbn1.Text = ex.Message;
            }
        }
    }
}