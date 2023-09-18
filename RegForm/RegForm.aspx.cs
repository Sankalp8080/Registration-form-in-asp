using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegForm
{
    public partial class RegForm : System.Web.UI.Page
    {
       // public SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-U4IAT8L\SQLEXPRESS;Initial Catalog=RegNew;Integrated Security=True");
        public SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-M9NQE000\SQLEXPRESS;Initial Catalog=RegNew;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                LoadData();
            }
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
        }
        public void LoadData() {
            SqlCommand cmd = new SqlCommand("SELECT email  FROM [RegTable] where email = @email", conn);
            cmd.Parameters.AddWithValue("email", Session["email"].ToString());
            conn.Open();
            string username = Convert.ToString(cmd.ExecuteScalar());
            conn.Close();
            string pt = @"@\w+\.\w+";
            string nuser = Regex.Replace(username,pt, "");
            Label3.Text= nuser;
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string statuss=string.Empty;
            if (CheckBox1.Checked)
            {
                statuss = "Active";

            }
            else
            {
                statuss = "Inactive";
            }
            string nuser = Label3.Text;
            SqlCommand cmd = new SqlCommand("usp_newRegInsert",conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("firstname", TextBox1.Text);
            cmd.Parameters.AddWithValue("lastname", TextBox2.Text);
            cmd.Parameters.AddWithValue("mobileno", TextBox3.Text);
            cmd.Parameters.AddWithValue("email", TextBox4.Text);
            cmd.Parameters.AddWithValue("cpassword", TextBox5.Text);
            cmd.Parameters.AddWithValue("addresss", TextArea1.Value);
            cmd.Parameters.AddWithValue("gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("pincode", TextBox7.Text);
            cmd.Parameters.AddWithValue("country", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("statuss", statuss);
            cmd.Parameters.AddWithValue("createdBy", nuser);
           conn.Open();
            int result=cmd.ExecuteNonQuery();
            if (result != 0)
            {            
                Response.Write("<script>alert('Data inserted')</script>");
                Response.Redirect("Display.aspx");
            }
            conn.Close();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Display.aspx");
        }
     }
}