using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;

namespace BLL
{
    public class GtContent
    {
        GetContent gc = new GetContent();
        public DataTable banners()
        {
            return gc.banners();
        }
        public DataTable xiuli()
        {
            return gc.xiuli();
        }
        public DataTable Biaoti1()
        {
            return gc.Biaoti1();
        }
        public DataTable Biaoti2()
        {
            return gc.Biaoti2();
        }
        public DataTable Biaoti3()
        {
            return gc.Biaoti3();
        }
        public DataTable fengjing()
        {
            return gc.fengjing();
        }
        public DataTable lvyou()
        {
            return gc.lvyou();
        }
        public DataTable meishi()
        {
            return gc.meishi();
        }
        public DataTable tesecai()
        {
            return gc.tesecai();
        }
        public DataTable dongtai()
        {
            return gc.dongtai();
        }
        public DataTable zuixindongtai()
        {
            return gc.zuixindongtai();
        }
        public DataTable a(int id)
        {
            return gc.a(id);
        }
        //public DataTable tdjs()
        //{
        //    return gc.tdjs();
        //}

    }
}
