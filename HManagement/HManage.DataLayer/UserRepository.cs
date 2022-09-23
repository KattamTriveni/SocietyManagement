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
    public class UserRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["FinalDBConn"].ConnectionString);
        SqlCommand command = null;
        public void AddUser(User user)
        {
            try
            {
                command = new SqlCommand($"insert into UserMst values({user.UserID},'{user.FullName}','{user.Email}','{user.Mobile}',{user.HID},'{user.SName}',{user.Member},'{user.UserName}','{user.Passwords}')", connection);
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

        public void DeleteUser(int UserId)
        {
            try
            {
                command = new SqlCommand($"Delete from UserMst where UserID={UserId})", connection);
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
        public void UpdateUser(int UserID, string FullName, string Email, string Mobile, int HID, string SName, int Member, string UserName, string Passwords)
        {
            try
            {
                command = new SqlCommand($"Update UserMst set FullName='{FullName}', Email='{Email}', Mobile='{Mobile}', HID={HID}, SName='{SName}', Member={Member}, UserName='{UserName}', Passwords='{Passwords}' where UserID={UserID}", connection);
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
        public User GetUserById(int UserId)
        {
            try
            {
                User user = null;
                command = new SqlCommand($"Select * from UserMst where UserId={UserId}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    user = new User();
                    user.UserID = (int)dr["UserId"];
                    user.FullName = dr["fullname"].ToString();
                    user.Email = dr["email"].ToString();
                    user.Mobile = dr["Mobile"].ToString();
                    user.HID = (int)dr["HID"];
                    user.SName = dr["SName"].ToString();
                    user.Member = (int)dr["Member"];
                    user.UserName = dr["UserName"].ToString();
                    user.Passwords = dr["passwords"].ToString();
                }
                return user;
            }
            catch (Exception)
            {

                throw;
            }

        }
        public List<User> GetAllUsers()
        {

            try
            {
                List<User> users = new List<User>();
                command = new SqlCommand($"Select * from UserMst", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    User user = new User();
                    user.UserID = (int)dr["UserId"];
                    user.FullName = dr["fullname"].ToString();
                    user.Email = dr["email"].ToString();
                    user.Mobile = dr["Mobile"].ToString();
                    user.HID = (int)dr["HID"];
                    user.SName = dr["SName"].ToString();
                    user.Member = (int)dr["Member"];
                    user.UserName = dr["UserName"].ToString();
                    user.Passwords = dr["passwords"].ToString();
                    users.Add(user);
                }
                return users;
            }
            catch (Exception)
            {

                throw;
            }


        }
        public bool ValidateUser(string uname, string pwd)
        {
            try
            {

                command = new SqlCommand($"select * from UserMst where UserName='{uname}' and Passwords='{pwd}'", connection);
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
        }
        public bool ValidateHouse(int HID, string SName)
        {
            try
            {

                command = new SqlCommand($"select * from House where HID={HID} and  SName='{SName}'", connection);
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
