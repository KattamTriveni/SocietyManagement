using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HManage.Entities;
using HManage.DataLayer;

namespace HManage.BusinessLayer
{
    public class SellService
    {
        SellRepository sellRepository;
        public SellService()
        {
            sellRepository = new SellRepository();
        }
        public void AddSell(HSell hSell)
        {
            try
            {
                sellRepository.AddSell(hSell);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteSell(int SellId)
        {
            try
            {
                sellRepository.DeleteSell(SellId);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateSell(int SellId, int HID, string SName, int UserID, int Sell)
        {
            try
            {
                sellRepository.UpdateSell(SellId,HID,SName,UserID,Sell);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public HSell GetSellById(int SellId)
        {
            try
            {
                return sellRepository.GetSellById(SellId);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<HSell> GetHSells()
        {
            try
            {
                return sellRepository.GetAllSells();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
