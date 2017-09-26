using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Common;
using System.Data;

namespace BlueTravel.Admin
{
    public partial class denglu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {UserBLL User = new UserBLL();
            AdminUserBLL adminUser = new AdminUserBLL();
            
            string userName = user.Value;
            string password = pwd.Value;
            DataTable dt = User.selectid(userName, password);
            if (userName == ""&& password=="")
            {
                JsHelper.Alert("账号或密码不能为空!");
                return;
            }
            Session["ID"] = dt.Rows[0]["id"];
            if (adminUser.UserLoginCheck(userName, password))
            {
                Session["UserName"] = userName;
                Response.Redirect("indexs.aspx");
            }
            else
            {
                JsHelper.Alert("账号或密码不正确!");
            }
        }
    }
}