using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Common;
using System.Data;
using System.Data.SqlClient;
using MODel;

namespace DAL
{
   public class NewsDAL
    {
        /// <summary>
        /// 查询首页的新闻动态
        /// </summary>
        /// <returns></returns>
    
        public DataTable SelectIndexNews()
        {
            string sql = "select title,time from photo where tipe='1' order by time desc";
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
        public DataTable SelectNews(string tipe = "-1", string title = "")
        {
            string sql = $"select * from photo where 1=1 ";
            if (tipe != "-1")
            {
                sql += $"and tipe={tipe}";
            }
            if (title != string.Empty)
            {
                sql += $"and title like'%{title}%'";
            }
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
        public int UpdateNewById(NewModel newmodel)
        {
            string updateField = string.Empty;
            //SqlParameter集合，把所有需要更新的字段，用SqlParameter封装起来，放进集合
            List<SqlParameter> sqlParameters = new List<SqlParameter>();
            if (newmodel.title != null)
            {
                updateField += "title=@title,";
                //封装SqlParameter的最简单方法
                SqlParameter parameter = new SqlParameter("title", SqlDbType.VarChar);
                parameter.Value = newmodel.title;
                //添加进我们的集合
                sqlParameters.Add(parameter);
            }
            if (newmodel.contents != null)
            {
                updateField += "contents=@contents,";
                SqlParameter parameter = new SqlParameter("contents", SqlDbType.Text);
                parameter.Value = newmodel.contents;
                sqlParameters.Add(parameter);
            }
            if (newmodel.hit != null)
            {
                updateField += "hit=@hit,";
                SqlParameter parameter = new SqlParameter("hit", SqlDbType.Int);
                parameter.Value = newmodel.hit;
                sqlParameters.Add(parameter);
            }
            if (newmodel.tipe != null)
            {
                updateField += "tipe =@tipe ,";
                SqlParameter parameter = new SqlParameter("tipe ", SqlDbType.NChar);
                parameter.Value = newmodel.tipe;
                sqlParameters.Add(parameter);
            }
            if (newmodel.time != null)
            {
                updateField += "time =@time ,";
                SqlParameter parameter = new SqlParameter("time ", SqlDbType.DateTime);
                parameter.Value = newmodel.time;
                sqlParameters.Add(parameter);
            }
            //删掉尾部的逗号
            updateField = updateField.TrimEnd(',');
            string sql = $"update photo set {updateField} where id={newmodel.id}";
            return BlueTravel.SqlHelper.ExcuteNoQuery(sql, sqlParameters.ToArray());
        }
        public int DeleteNewById(string id)
        {
            string sql = $"delete from photo where id={id}";
            return BlueTravel.SqlHelper.ExcuteNoQuery(sql);
        }

        public int InsertNew(NewModel newModel)
        {
            string sql = $"insert into photo(title,contents,tipe) values (@title,@contents,@tipe)";
            SqlParameter[] sqlParameters = new[]
            {
                new SqlParameter("title",SqlDbType.VarChar),
                new SqlParameter("contents",SqlDbType.Text),
                new SqlParameter("tipe",SqlDbType.Int)
            };
            sqlParameters[0].Value = newModel.title;
            sqlParameters[1].Value = newModel.contents;
            sqlParameters[2].Value = newModel.tipe;
            return BlueTravel.SqlHelper.ExcuteNoQuery(sql, sqlParameters);
        }

        public DataTable SelectNewById(string id)
        {
            string sql = $"select id,title,contents,tipe from photo where id={id}";
            return BlueTravel.SqlHelper.ExcuteTable(sql);
        }
    }
}
