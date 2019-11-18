﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ShowClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string classid = Request.QueryString["classid"];
            if (String.IsNullOrEmpty(classid)) valid = false;

            //We will attempt to get the record we need
            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> class_record = db.FindClass(Int32.Parse(classid));

                if (class_record.Count > 0)
                {
                    class_title_name.InnerHtml =class_record["CLASSNAME"];
                    class_code.InnerHtml = class_record["CLASSCODE"];
                    teacher_id.InnerHtml = class_record["TEACHERID"];
                    start_date.InnerHtml = class_record["STARTDATE"];
                    finish_date.InnerHtml = class_record["FINISHDATE"];
                    class_name.InnerHtml = class_record["CLASSNAME"];

                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                class_class.InnerHtml = "There was an error finding that class.";
            }
        }
    }
}