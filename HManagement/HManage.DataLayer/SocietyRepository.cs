using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using HManage.Entities;
using System.Net.Sockets;

namespace HManage.DataLayer
{
    public class SocietyRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["FinalDBConn"].ConnectionString);
        SqlCommand command = null;
        public void AddSociety(Society society)
        {
            try
            {
                command = new SqlCommand($"insert into Society values({society.SocID},'{society.SName}','{society.Addres}','{society.City}','{society.Pincode}',{society.NoHouse})", connection);
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
        public void DeleteSociety(int SocID)
        {
            try
            {
                command = new SqlCommand($"Delete from Society where SocID={SocID}", connection);
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
        public void UpdateSociety(int SocID,string SName,string Addres,string City,string Pincode,int NoHouse)
        {
            try
            {
                command = new SqlCommand($"Update Society set SName='{SName}',Addres='{Addres}',City='{City}',Pincode='{Pincode}',NoHouse={NoHouse} where SocID={SocID}", connection);
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
        public Society GetSocietyById(int societyId)
        {
            try
            {
                Society society = null;
                command = new SqlCommand($"Select * from Society where SocId={societyId}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    society = new Society();
                    society.SocID = (int)dr["SocId"];
                    society.SName = dr["SName"].ToString();
                    society.Addres = dr["Addres"].ToString();
                    society.City = dr["City"].ToString();
                    society.Pincode = dr["Pincode"].ToString();
                    society.NoHouse = (int)dr["NoHouse"];
                }
                return society;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Society> GetAllSocieties()
        {
            try
            {
                List<Society> societies = new List<Society>();
                command = new SqlCommand($"Select * from Society", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Society society = new Society();
                    society.SocID = (int)dr["SocId"];
                    society.SName = dr["SName"].ToString();
                    society.Addres = dr["Addres"].ToString();
                    society.City = dr["City"].ToString();
                    society.Pincode = dr["Pincode"].ToString();
                    society.NoHouse = (int)dr["NoHouse"];
                    societies.Add(society);
                }
                return societies;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
