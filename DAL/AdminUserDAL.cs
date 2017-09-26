using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Common;

namespace DAL
{
   public class AdminUserDAL
    {
        public object GetUserCount(string userName, string password)
        {
            string sql = $"select count(*)from Admin where name='{userName}'and pass='{password}'";
            return BlueTravel.SqlHelper.ExecScalar(sql);
        }
     
    }
}
