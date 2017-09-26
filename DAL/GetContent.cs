using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class GetContent
    {
        public DataTable banners()
        {
            string sql = "select images from photo where tipe='banner'";
            DataTable bn = BlueTravel.SqlHelper.ExcuteTable(sql);
            return bn;
        }
        public DataTable Biaoti1()
        {
            string sql = "select image,title,contents from indexs where type='1'";
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
        public DataTable Biaoti2()
        {
            string sql = "select image,title,contents from indexs where type='2'";
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
        public DataTable Biaoti3()
        {
            string sql = "select image,title,contents from indexs where type='3'";
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
        public DataTable xiuli()
        {
            string sql = "select images from photo where tipe='12'";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }
        public DataTable fengjing()
        {
            string sql = "select images,title from photo where tipe='11'";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }
        public DataTable lvyou()
        {
            string sql = "select images,title from photo where tipe='12'";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }
        public DataTable meishi()
        {
            string sql = "select images,title from photo where tipe='13'";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }
        public DataTable tesecai()
        {
            string sql = "select images,title from photo where tipe='13'";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }
        public DataTable dongtai()
        {
            string sql = "select * from photo where tipe='0'";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }

        public DataTable zuixindongtai()
        {
            string sql = "select * from photo where tipe='1'";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }
        public DataTable a(int id)
        {
            string sql = $"select* from photo where id ={id}";
            DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
            return dt;
        }
        //public DataTable tdjs()
        //{
        //    string sql = "select conte,image from Article where type='团队介绍'";
        //    DataTable dt = BlueTravel.SqlHelper.ExcuteTable(sql);
        //    return dt;
        //}

    }
}
