using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
   public class AdminUserBLL
    {
        public AdminUserDAL AdminUser = new AdminUserDAL();

        /// <summary>
        /// 用户登录检测
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public bool UserLoginCheck(string userName, string password)
        {
            int count = Convert.ToInt32(AdminUser.GetUserCount(userName, password));
            //if (count == 1) return true;
            //return false;
            return count == 1;
        }
    }
}
