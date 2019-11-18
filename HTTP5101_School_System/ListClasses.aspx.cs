using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ListClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            classes_result.InnerHtml = "";

            string searchkey = "";
            if (Page.IsPostBack)
            {
                
                searchkey = class_search.Text;
            }


            string query = "select * from CLASSES";

            if (searchkey != "")
            {
                query += " WHERE CLASSCODE like '%" + searchkey + "%' ";
                query += " or TEACHERID like '%" + searchkey + "%' ";
                query += " or STARTDATE like '%" + searchkey + "%' ";
                query += " or FINISHDATE like '%" + searchkey + "%' ";
                query += " or CLASSNAME like '%" + searchkey + "%' ";
            }
            sql_debugger.InnerHtml = query;

            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                classes_result.InnerHtml += "<div class=\"listitem\">";

                string classid = row["CLASSID"];

                string classcode = row["CLASSCODE"];
                classes_result.InnerHtml += "<div class=\"col5\"><a href=\"ShowClass.aspx?classid=" + classid + "\">" + classcode + "</a></div>";

                string teacherid = row["TEACHERID"];
                classes_result.InnerHtml += "<div class=\"col5\">" + teacherid + "</div>";

                string startdate = row["STARTDATE"];
                classes_result.InnerHtml += "<div class=\"col5\">" + startdate + "</div>";

                string finishdate = row["FINISHDATE"];
                classes_result.InnerHtml += "<div class=\"col5\">" + finishdate + "</div>";

                string classname = row["CLASSNAME"];
                classes_result.InnerHtml += "<div class=\"col5last\">" + classname + "</div>";

                classes_result.InnerHtml += "</div>";
            }
        }
    }
}