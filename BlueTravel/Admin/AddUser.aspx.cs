using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Data.SqlClient;
using Common;


namespace BlueTravel.Admin
{
    public partial class AddUser : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            AdminUserBLL adminuserbll = new AdminUserBLL();
            UserBLL userbll = new UserBLL();
            string Userpass = pwd.Value;
            string Username = user.Value;
            if (Username == "" || Userpass == "")
            {
                Response.Write("<script language='javascript'> alert('不能为空');</script>");
                return;
            }
            if(userbll.CheckUser(Username)==1)
            {
                JsHelper.Alert("管理员不能重复");
                user.Value = null;
                return;
            }
            int i = userbll.AddUserBLL(Username, Userpass);
            if (i == 1)
            {
                Response.Write("<script langeuage='javascript'>alert('添加成功');</script>");

                user.Value = null;
                pwd.Value = null;
                return;
            }
            else
            {
                Response.Write("添加失败！");
                user.Value = "";
                pwd.Value = "";
                return;
            }
        }
    }
}