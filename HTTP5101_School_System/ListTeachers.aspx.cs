using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101_School_System
{
    public partial class ListTeachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            teachers_result.InnerHtml = "";

            string searchkey = "";
            if (Page.IsPostBack)
            {
                
                searchkey = teacher_search.Text;           }


            string query = "select * from TEACHERS";

            if (searchkey != "")
            {
                query += " WHERE TEACHERFNAME like '%" + searchkey + "%' ";
                query += " or TEACHERLNAME like '%" + searchkey + "%' ";
                query += " or EMPLOYEENUMBER like '%" + searchkey + "%' ";
                query += " or HIREDATE like '%" + searchkey + "%'";
                query += " or SALARY like '%" + searchkey + "%'";
            }
            sql_debugger.InnerHtml = query;

            var db = new SCHOOLDB();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                teachers_result.InnerHtml += "<div class=\"listitem\">";

                string teacherid = row["TEACHERID"];

                string teacherfirstname = row["TEACHERFNAME"];
                teachers_result.InnerHtml += "<div class=\"col5\"><a href=\"ShowTeacher.aspx?teacherid=" + teacherid + "\">" + teacherfirstname + "</a></div>";

                string teacherlastname = row["TEACHERLNAME"];
                teachers_result.InnerHtml += "<div class=\"col5\">" + teacherlastname + "</div>";

                string employeenumber = row["EMPLOYEENUMBER"];
                teachers_result.InnerHtml += "<div class=\"col5\">" + employeenumber + "</div>";

                string hiredate = row["HIREDATE"];
                teachers_result.InnerHtml += "<div class=\"col5\">" + hiredate + "</div>";

                string salary = row["SALARY"];
                teachers_result.InnerHtml += "<div class=\"col5last\">" + salary + "</div>";

                teachers_result.InnerHtml += "</div>";
            }


        }
    }
}