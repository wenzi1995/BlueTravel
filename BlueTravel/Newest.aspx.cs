﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace BlueTravel
{
    public partial class Newest : System.Web.UI.Page
    {
        GtContent gt = new GtContent();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }

        public void bind()
        {
            int id = Convert.ToInt32(Request["id"]);
            Repeater1.DataSource = gt.a(id);
            Repeater1.DataBind();
        }
    }
}