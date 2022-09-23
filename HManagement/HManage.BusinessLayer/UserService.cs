using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HManage.Entities;
using HManage.DataLayer;
namespace HManage.BusinessLayer
{
    public class UserService
    {
        UserRepository userRepository;
        public UserService()
        {
            userRepository = new UserRepository();
        }
        public void AddUser(User user)
        {
            try
            {
                userRepository.AddUser(user);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteUser(int UserID)
        {
            try
            {
                userRepository.DeleteUser(UserID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateUser(int UserID, string FullName, string Email, string Mobile, int HID, string SName, int Member, string UserName, string Passwords)
        {
            try
            {
                userRepository.UpdateUser(UserID,FullName,Email,Mobile,HID,SName,Member,UserName,Passwords);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public User GetUserById(int UserID)
        {
            try
            {
                return userRepository.GetUserById(UserID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<User> GetUsers()
        {
            try
            {
                return userRepository.GetAllUsers();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool ValidateUser(string uname,string pwd)
        {
            try
            {
                return userRepository.ValidateUser(uname, pwd);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool ValidateHouse(int HID,string SName)
        {
            try
            {
                return userRepository.ValidateHouse(HID,SName);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
