using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace Common
{
    public static class JsHelper
    {
        private static string JsStart = "<script>";
        private static string JsEnd = "</script>";

        /// <summary>
        /// 弹出警告框
        /// </summary>
        /// <param name="msg"></param>
        public static void Alert(string msg)
        {
            string js = $"{JsStart} alert('{msg}');{JsEnd}";
            HttpContext.Current.Response.Write(js);
        }
    }

}
