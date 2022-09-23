using HManage.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HManage.DataLayer
{
    public class SellRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["FinalDBConn"].ConnectionString);
        SqlCommand command = null;
        public void AddSell(HSell hSell)
        {
            try
            {
                command = new SqlCommand($"insert into Sell values({hSell.SellId},{hSell.HID},'{hSell.SName}',{hSell.UserID},{hSell.Sell})", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public void DeleteSell(int SellID)
        {
            try
            {
                command = new SqlCommand($"Delete from Sell where SellId={SellID} ", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public void UpdateSell(int SellId,int HID,string SName,int UserID,int Sell)
        {
            try
            {
                command = new SqlCommand($"Update Sell set HID={HID},SName='{SName}',UserID={UserID},Sell={Sell} where SellId={SellId}", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public HSell GetSellById(int SellId)
        {
            try
            {
                HSell hSell = null;
                command = new SqlCommand($"Select * from HSell where SellId={SellId}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    hSell = new HSell();
                    hSell.SellId = (int)dr["sellID"];
                    hSell.HID = (int)dr["HId"];
                    hSell.SName = dr["sname"].ToString();
                    hSell.UserID = (int)dr["UserId"];
                    hSell.Sell = (double)dr["sell"];
                }
                return hSell;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<HSell> GetAllSells()
        {
            try
            {
                List<HSell> sells = new List<HSell>();
                command = new SqlCommand($"Select * from Sell", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    HSell hSell = new HSell();
                    hSell = new HSell();
                    hSell.SellId = (int)dr["sellID"];
                    hSell.HID = (int)dr["HId"];
                    hSell.SName = dr["sname"].ToString();
                    hSell.UserID = (int)dr["UserId"];
                    hSell.Sell = (double)dr["sell"];
                    sells.Add(hSell);
                }
                return sells;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool ValidateSell(int HID, string SName, int UserID)
        {
            try
            {

                command = new SqlCommand($"select * from UserMst where HID={HID} and  SName='{SName}' and UserID={UserID}", connection);
                connection.Open();
                command.ExecuteNonQuery();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {

                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
