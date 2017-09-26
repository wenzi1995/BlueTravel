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
    public partial class SelUser : System.Web.UI.Page
    {
        AdminUserBLL adminuser = new AdminUserBLL();
        UserBLL userbll = new UserBLL();
        public UserBLL user = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {  /* DataTable dt = userbll.SelectUserBLL();*/
            LVuser.DataSource = userbll.SelectUserBLL();
            LVuser.DataKeyNames = new[] {"id"};
            LVuser.DataBind();
        }
        protected void LVuser_ItemDeleting(object sender, ListViewDeleteEventArgs e)
      {
           

        }

        protected void LVuser_ItemDeleting1(object sender, ListViewDeleteEventArgs e)
        {
            string  id = Convert.ToString(e.Keys["id"]);
            string UserName = Convert.ToString(Session["name"]);
            if (id != Convert.ToString(Session["id"]))
            {
                if (user.DelUser(id) == 1)
                {
                    LVuser.EditIndex = -1;

                    Response.Write("<script>alert('删除成功！')</script>");
                  
                }
                else
                {
                    Response.Write("<script>alert('删除失败！')</script>");
                    return;
                }
                    LVuser.DataSource = userbll.SelectUserBLL();
                    LVuser.DataKeyNames = new[] { "id" };
                    LVuser.DataBind();
                }
            else
            {
                Response.Write("<script>alert('您不能删除自己哦！')</script>");
            
            }
          
        }
    }
}