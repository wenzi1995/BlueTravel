using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Data.SqlClient;

namespace BlueTravel.Admin
{
    public partial class xgUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            AdminUserBLL updatepass = new AdminUserBLL();
            UserBLL userbll = new UserBLL();
            string oldpass = oldpwd.Value;//旧密码
            string newspass = newspwd.Value;//新密码
            if (string.IsNullOrEmpty(oldpass) && string.IsNullOrEmpty(newspass))
            {
                Response.Write("原密码或新密码不能为空！");
                return;
            }
            if (newspass == oldpass)
            {
                Response.Write("新密码不能和原始密码相同!");
                return;
            }
            SqlDataReader dr = userbll.SelectUserPassBLL(Session["username"].ToString(), oldpass);
            if (dr.Read() == true)
            {
                int i = userbll.UpdateUserpassBLL(Session["username"].ToString(), newspass);
                if (i == 1)
                {
                    Response.Write("修改密码成功!");

                    Response.Redirect("denglu.aspx");
                }
                else
                {
                    Response.Write("修改密码错误!");
                    return;
                }
            }
            else
            {
                Response.Write("原密码错误，请重新输入!");

                return;
            }
        }
    }
}