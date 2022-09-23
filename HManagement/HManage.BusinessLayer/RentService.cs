using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HManage.Entities;
using HManage.DataLayer;

namespace HManage.BusinessLayer
{
    public class RentService
    {
        RentRepository rentRepository;
        public RentService()
        {
            rentRepository = new RentRepository();
        }
        public void AddRent(HRent hRent)
        {
            try
            {
                rentRepository.AddRent(hRent);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteRent(int RID)
        {
            try
            {
                rentRepository.DeleteRent(RID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateRent(int RID,int HID,string SName,int UserID,double Rent)
        {
            try
            {
                rentRepository.UpdateRent(RID,HID,SName,UserID,Rent);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public HRent GetRentById(int RID)
        {
            try
            {
                return rentRepository.GetRentById(RID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<HRent> GetHRents()
        {
            try
            {
                return rentRepository.GetAllRents();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool ValidateRent(int HID, string SName,int UserID)
        {
            try
            {
                return rentRepository .ValidateRent(HID, SName,UserID);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
