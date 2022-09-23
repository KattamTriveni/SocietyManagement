using HManage.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace HManage.DataLayer
{
    public class HouseRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["FinalDBConn"].ConnectionString);
        SqlCommand command = null;
        public void AddHouse(House house)
        {
            try
            {
                command = new SqlCommand($"insert into House values({house.HID},{house.BlockNo},'{house.Typ}','{house.SName}')", connection);
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
        public void DeleteHouse(int HID)
        {
            try
            {
                command = new SqlCommand($"Delete from House where HID={HID} ", connection);
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
        public void UpdateHouse(int HID,int BlockNo,string Typ,string SName)
        {
            try
            {
                command = new SqlCommand($"Update House set BlockNo={BlockNo},Typ={Typ},SName={SName} where HID={HID}", connection);
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
        public House GetHouseById(int HID)
        {
            try
            {
                House house = null;
                command = new SqlCommand($"Select * from House where HId={HID}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    house = new House();
                    house.HID = (int)dr["HID"];
                    house.BlockNo = (int)dr["BlockNo"];
                    house.Typ = dr["Typ"].ToString();
                    house.SName = dr["SName"].ToString();
                }
                return house;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<House> GetAllHouses()
        {
            try
            {
                List<House> houses = new List<House>();
                command = new SqlCommand($"Select * from House", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    House house = new House();
                    house.HID = (int)dr["HID"];
                    house.BlockNo = (int)dr["BlockNo"];
                    house.Typ = dr["Typ"].ToString();
                    house.SName = dr["SName"].ToString();
                    houses.Add(house);
                }
                return houses;
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

                command = new SqlCommand($"select * from Society where SName='{sname}'", connection);
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
