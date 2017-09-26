using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using MODel;
using Common;


namespace BlueTravel.Admin
{
    public partial class NewEdit : System.Web.UI.Page
    {
        public NewBLL news = new NewBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string action = Request["action"];
                if (action == "edit")
                {
                    string id = Request["id"];
                    //如果id为null或者空字符串就返回
                    if (string.IsNullOrEmpty(id)) return;
                    DataTable dt = news.FindNewById(id);
                    if (dt.Rows.Count == 0)
                    {
                        JsHelper.Alert("该新闻不存在！");
                        return;
                    }
                    tipe.Value = dt.Rows[0]["tipe"].ToString();
                    title.Value = dt.Rows[0]["title"].ToString();
                    content.Value = dt.Rows[0]["contents"].ToString();
                }
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            string action = Request["action"];
            if (action == "edit")
            {
                update();
            }
            else
            {
                post();
            }
        }
        /// <summary>
        /// 发布新闻
        /// </summary>
        private void post()
        {
            NewModel newModel = new NewModel()
            {
                title = title.Value,
                contents = content.Value,
                tipe = tipe.Value
            };
            if (news.PostNew(newModel) == 1)
            {
                title.Value = string.Empty;
                content.Value = string.Empty;
                JsHelper.Alert("发布成功！");
            }
            else
            {
                JsHelper.Alert("发布失败！");
            }
        }
        /// <summary>
        /// 更新新闻
        /// </summary>
        private void update()
        {
            NewModel newModel = new NewModel
            {
                id = Request["id"],
                title = title.Value,
                contents = content.Value,
                tipe = tipe.Value
            };
            if (news.UpdateNew(newModel) == 1)
            {
                JsHelper.Alert("更新成功！");
            }
            else
            {
                JsHelper.Alert("更新失败！");
            }
        }
    }
}