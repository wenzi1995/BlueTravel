using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MODel;
using Common;

namespace BlueTravel.Admin
{
    public partial class NewList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lvNewList.DataBind();           }
        }
        public void BindNewList()
        {
            NewBLL newsBll = new NewBLL();
            lvNewList.DataSource = newsBll.GetNewList(searchType.Value, searchTitle.Value);
            lvNewList.DataKeyNames = new[] { "id" };
            lvNewList.DataBind();
        }

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            BindNewList();
        }

        protected void lvNewList_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            lvNewList.EditIndex = e.NewEditIndex;
            BindNewList();
        }

        protected void lvNewList_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            lvNewList.EditIndex = -1;
            BindNewList();
        }
        /// <summary>
        /// 编辑
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void lvNewList_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            NewModel newModel = new NewModel();
            newModel.id = e.Keys["id"].ToString();
            newModel.title = e.NewValues["title"].ToString();
            //newModel.hit = e.NewValues["hit"].ToString();
            //newModel.tipe = e.NewValues["tipe"].ToString();
            newModel.time = e.NewValues["time"].ToString();

            NewBLL newsBll = new NewBLL();
            if (newsBll.UpdateNew(newModel) == 1)
            {
                lvNewList.EditIndex = -1;
                BindNewList();
                return;
            }
            JsHelper.Alert("更新失败");
        }

        protected void lvNewList_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            NewBLL newsBll = new NewBLL();
            if (newsBll.RemoveNew(e.Keys["id"].ToString()) == 1)
            {
                lvNewList.EditIndex = -1;
                BindNewList();
                return;
            }
            JsHelper.Alert("删除失败");
        }

    }
}