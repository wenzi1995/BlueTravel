using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
using MODel;

namespace BLL
{
    public class NewBLL
    {
        public NewsDAL News = new NewsDAL();
        public DataTable GetIndexNewsTable()
        {
            return News.SelectIndexNews();
        }
        public DataTable GetNewList(string tipe, string title)
        {
            return News.SelectNews(tipe, title);
        }
        public int UpdateNew(NewModel newModel)
        {
            return News.UpdateNewById(newModel);
        }
        public int RemoveNew(string id)
        {
            return News.DeleteNewById(id);
        }
        public int PostNew(NewModel newModel)
        {
            return News.InsertNew(newModel);
        }
        public DataTable FindNewById(string id)
        {
            return News.SelectNewById(id);
        }
    }
}
