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
    public class RentRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["FinalDBConn"].ConnectionString);
        SqlCommand command = null;
        public void AddRent(HRent hRent)
        {
            try
            {
                command = new SqlCommand($"insert into Rent values({hRent.RID},{hRent.HID},'{hRent.SName}',{hRent.UserID},{hRent.Rent})", connection);
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
        public void DeleteRent(int RID)
        {
            try
            {
                command = new SqlCommand($"Delete from Rent where RID={RID} ", connection);
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
        public void UpdateRent(int RID,int HID ,string SName,int UserID,double Rent)
        {
            try
            {
                command = new SqlCommand($"Update Rent set HID={HID},SName='{SName}',UserID={UserID},Rent={Rent} where RID={RID}", connection);
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
        public HRent GetRentById(int RID)
        {
            try
            {
                HRent hRent = null;
                command = new SqlCommand($"Select * from Rent where RID={RID}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    hRent = new HRent();
                    hRent.RID = (int)dr["RId"];
                    hRent.HID = (int)dr["HId"];
                    hRent.SName = dr["sname"].ToString();
                    hRent.UserID = (int)dr["UserId"];
                    hRent.Rent = (double)dr["Rent"];
                }
                return hRent;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<HRent> GetAllRents()
        {
            try
            {
                List<HRent> rents = new List<HRent>();
                command = new SqlCommand($"Select * from Rent", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    HRent hRent = new HRent();
                    hRent.RID = (int)dr["RId"];
                    hRent.HID = (int)dr["HId"];
                    hRent.SName = dr["sname"].ToString();
                    hRent.UserID = (int)dr["UserId"];
                    hRent.Rent = (double)dr["Rent"];
                    rents.Add(hRent);
                }
                return rents;
            }
            catch (Exception)
            {

                throw;
            }
           
        }
    }
}
