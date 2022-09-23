using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HManage.Entities;
using HManage.DataLayer;
namespace HManage.BusinessLayer
{
    public class HouseService
    {
        HouseRepository houseRepository;
        public HouseService()
        {
            houseRepository = new HouseRepository();
        }
        public void AddHouse(House house)
        {
            try
            {
                houseRepository.AddHouse(house);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteHouse(int HID)
        {
            try
            {
                houseRepository.DeleteHouse(HID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateHouse(int HID, int BlockNo, string Typ, string SName)
        {
            try
            {
                houseRepository.UpdateHouse(HID,BlockNo,Typ,SName);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public House GetHouseById(int HID)
        {
            try
            {
               return houseRepository.GetHouseById(HID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<House> GetHouses()
        {
            try
            {
                return houseRepository.GetAllHouses();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool ValidateSociety(string sname)
        {
            try
            {
                return houseRepository.ValidateSociety(sname);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
