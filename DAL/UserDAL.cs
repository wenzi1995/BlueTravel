using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Common;
using System.Data;
using System.Data.SqlClient;
using MODel;

namespace DAL
{
   public class UserDAL
    {
        /// <summary>
        /// 检测
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="userpass"></param>
        /// <returns></returns>
        public object Getusercount(string userName, string userpass)
        {
            string sql = $"select count(*) from Admin where name='{userName}'and pass='{userpass}'";
            return BlueTravel.SqlHelper.ExecScalar(sql);
        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="userPass"></param>
        /// <returns></returns>
        public int UpdateUserPassDAL(string userName, string userpass)
        {
            string sql = $"update Admin set pass='{userpass}' where name='{userName}'";
            return BlueTravel.SqlHelper.ExcuteNoQuery(sql);
        }
        /// <summary>
        /// 查询管理员
        /// </summary>
        /// <param name="username"></param>
        /// <param name="userpass"></param>
        /// <returns></returns>
        public SqlDataReader SqlectUserPass(string username, string userpass)
        {
            string sql = $"select * from Admin where name='{username}'and pass='{userpass}'";
            return BlueTravel.SqlHelper.ExReader(sql);
        }
        /// <summary>
        /// 添加管理员
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Userpass"></param>
        /// <returns></returns>
        public int AddUser(string Username, string Userpass)
        {
            string sql = $"insert into Admin (name,pass) values('{Username}','{Userpass}')";
            return BlueTravel.SqlHelper.ExcuteNoQuery(sql);
        }
        public DataTable SelectUserDAL()
        {
            string sql = $"select id,name,time from Admin";
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
        public int DelUser(string id)
        {
            string sql = $"delete from Admin where id={id}";
            return BlueTravel.SqlHelper.ExcuteNoQuery(sql);
        }
        public DataTable selectid(string username, string userpass)
        {
            string sql = $"select * from Admin where name='{username}'and pass='{userpass}'";
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
        /// <summary>
        /// 检测账号是否存在
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public int CheckUser(string name)
        {
            string sql = $"select count(*) from Admin where name='{name}'";
            return Convert.ToInt32( BlueTravel.SqlHelper.ExecScalar(sql));
        } 
    }
}
