using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Common;


namespace BlueTravel.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            AdminUserBLL adminUser = new AdminUserBLL();
            string userName = user.Value;
            string password = pwd.Value;
            if (adminUser.UserLoginCheck(userName, password))
            {
                Session["UserName"] = userName;
                Response.Redirect("index.aspx");
            }
            else
            {
                JsHelper.Alert("账号或密码不正确!");
            }
        }
    }
}