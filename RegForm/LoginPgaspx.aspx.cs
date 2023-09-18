using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace RegForm
{
    public partial class LoginPgaspx : System.Web.UI.Page
    {
       // public SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-U4IAT8L\SQLEXPRESS;Initial Catalog=RegNew;Integrated Security=True");
        public SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-M9NQE000\SQLEXPRESS;Initial Catalog=RegNew;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        { 
          SqlCommand cmd = new SqlCommand("usp_logincheck", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("email", TextBox2.Text);
            cmd.Parameters.AddWithValue("cpassword", TextBox3.Text);
           SqlDataAdapter adapter = new SqlDataAdapter(cmd);   
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            conn.Open();         
            if (dataTable.Rows.Count > 0)
            {
                Session["email"] = TextBox2.Text;
                FormsAuthentication.RedirectFromLoginPage(TextBox2.Text,true);
                Response.Write("<script>alert('Login Successfully')</script>");            
            }
            else
            {
                Response.Write("<script>alert('Invalid email id or password ')</script>");
            }
            conn.Close();
        }
    }
}