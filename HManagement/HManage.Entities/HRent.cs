using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HManage.Entities
{
    public class HRent
    {
        public int RID { get; set; }
        public int HID { get; set; }
        public string SName { get; set; }
        public int UserID { get; set; }
        public double Rent { get; set; }
    }
}
