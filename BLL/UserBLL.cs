using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DAL;
using MODel;

namespace BLL
{
   public class UserBLL
    {
        AdminUserDAL adminUser = new AdminUserDAL();
        UserDAL admin = new UserDAL();
        //检测登录
        public bool admincheck(string userName, string userpass)
        {
            int count = Convert.ToInt32(adminUser.GetUserCount(userName, userpass));
            if (count == 1) return true;
            return false;
        }
        //修改密码
        public int UpdateUserpassBLL(string username, string userpass)
        {
            return admin.UpdateUserPassDAL(username, userpass);
        }
        //查询管理员
        public SqlDataReader SelectUserPassBLL(string username, string userpass)
        {
            return admin.SqlectUserPass(username, userpass);
        }
        //添加管理员
        public int AddUserBLL(string Username, string Userpass)
        {
            return admin.AddUser(Username, Userpass);
        }
        //管理员列表
        public DataTable SelectUserBLL()
        {
            return admin.SelectUserDAL();
        }
        public int DelUser(string id)
        {
            return admin.DelUser(id);
        }
        public DataTable selectid(string username, string userpass)
        {
            return admin.selectid(username, userpass);
        }
        public int CheckUser(string name)
        {
            return admin.CheckUser(name);
        }
    }
}
