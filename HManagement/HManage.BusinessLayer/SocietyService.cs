using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HManage.Entities;
using HManage.DataLayer;

namespace HManage.BusinessLayer
{
    public class SocietyService
    {
        SocietyRepository repository;
        public SocietyService()
        {
            repository = new SocietyRepository();
        }
        public void AddSociety(Society society)
        {
            try
            {
                repository.AddSociety(society);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteSociety(int SocID)
        {
            try
            {
                repository.DeleteSociety(SocID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateSociety(int SocID, string SName, string Addres, string City, string Pincode, int NoHouse)
        {
            try
            {
                repository.UpdateSociety(SocID,SName,Addres,City,Pincode,NoHouse);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public Society GetSocietyById(int societyId)
        {
            try
            {
                return repository.GetSocietyById(societyId);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Society> GetSocieties()
        {
            try
            {
                return repository.GetAllSocieties();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
