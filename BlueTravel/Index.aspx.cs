using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace BlueTravel
{
    public partial class Index : System.Web.UI.Page
    {
        GtContent gt = new GtContent();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind1();
                bind2();
                bind3();
                bindxl();
            }
        }
        public void bind1()
        {

            Rep1.DataSource = gt.Biaoti1();
            Rep1.DataBind();
        }
        public void bind2()
        {
            Rep2.DataSource = gt.Biaoti2();
            Rep2.DataBind();
        }
        public void bind3()
        {
            Rep3.DataSource = gt.Biaoti3();
            Rep3.DataBind();
        }
        public void bindxl()
        {

            repxl.DataSource = gt.xiuli();
            repxl.DataBind();
        }


    }
}