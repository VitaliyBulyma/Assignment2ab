using System;
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
                    if (teacher_id.InnerHtml == "0")
                    {
                        teacher_id.InnerHtml = "Not assigned";
                    }
                    else if (teacher_id.InnerHtml == "1")
                    {
                        teacher_id.InnerHtml = "Alexander Bennett";
                    }
                    else if (teacher_id.InnerHtml == "2")
                    {
                        teacher_id.InnerHtml = "Caitlin Cummings";
                    }
                    else if (teacher_id.InnerHtml == "3")
                    {
                        teacher_id.InnerHtml = "Linda Chan";
                    }
                    else if (teacher_id.InnerHtml == "4")
                    {
                        teacher_id.InnerHtml = "Lauren Smith";
                    }
                    else if (teacher_id.InnerHtml == "5")
                    {
                        teacher_id.InnerHtml = "Jessica Morris";
                    }
                    else if (teacher_id.InnerHtml == "6")
                    {
                        teacher_id.InnerHtml = "Thomas Hawkins";
                    }
                    else if (teacher_id.InnerHtml == "7")
                    {
                        teacher_id.InnerHtml = "Shannon Barton";
                    }
                    else if (teacher_id.InnerHtml == "8")
                    {
                        teacher_id.InnerHtml = "Dana Ford";
                    }
                    else if (teacher_id.InnerHtml == "9")
                    {
                        teacher_id.InnerHtml = "Cody Holland";
                    }
                    else if (teacher_id.InnerHtml == "10")
                    {
                        teacher_id.InnerHtml = "John Taram";
                    }
                    else {
                        teacher_id.InnerHtml = "There was a mistake finding teacher's name";
                    }; 
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