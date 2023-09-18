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

    public partial class Display : System.Web.UI.Page
    {
      //public  SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-U4IAT8L\SQLEXPRESS;Initial Catalog=RegNew;Integrated Security=True");
   public SqlConnection conn= new SqlConnection(@"Data Source=LAPTOP-M9NQE000\SQLEXPRESS;Initial Catalog=RegNew;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            tableField.Visible = false;
            if (Session["email"] != null)
            {
                LoadName();
            }
            if(!IsPostBack)
                Bind();
           Panel1.Visible = false;
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
        }
        public void Bind()
        {
            SqlCommand cmd = new SqlCommand("usp_selectQuery", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            
            GridView1.DataBind();
            

        }
        public void LoadName()
        {
            SqlCommand cmd = new SqlCommand("usp_FetchEmail", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("email", Session["email"].ToString()); 
            conn.Open();
            string username = Convert.ToString(cmd.ExecuteScalar());
            conn.Close(); string pt = @"@\w+\.\w+";
            Label1.Text = Regex.Replace(username, pt, "");

        }
             protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string statuss = string.Empty;
            if (CheckBox1.Checked)
            {
                statuss = "Active";

            }
            else
            {
                statuss = "Inactive";
            }
            string nuser = Label1.Text;
           SqlCommand cmd = new SqlCommand("usp_updateRecord", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("firstname", TextBox8.Text);
            cmd.Parameters.AddWithValue("lastname", TextBox2.Text);
            cmd.Parameters.AddWithValue("mobileno", TextBox3.Text);
            cmd.Parameters.AddWithValue("email", TextBox4.Text);
            cmd.Parameters.AddWithValue("cpassword", TextBox5.Text);
            cmd.Parameters.AddWithValue("addresss", TextArea1.Value);
            cmd.Parameters.AddWithValue("gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("pincode", TextBox7.Text);
            cmd.Parameters.AddWithValue("country", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("statuss", statuss);
            cmd.Parameters.AddWithValue("ModifedBy", nuser);
            cmd.Parameters.AddWithValue("slno", HiddenField1.Value);
            cmd.Parameters.AddWithValue("uniquekey", HiddenField2.Value);

            conn.Open();
            int result = cmd.ExecuteNonQuery();
            if (result != 0)
            {

                Response.Write("<script>console.log('Data updateed')</script>");
                Response.Redirect("Display.aspx");

            }
            conn.Close();

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            tableField.Visible= false;
            gridd.Visible = true;
        }

        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Button btn = (sender as Button);
            string[] cmdarg = btn.CommandArgument.Split(',');
            HiddenField1.Value = cmdarg[0];
            HiddenField2.Value = cmdarg[1];
            int rowid = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            emailLbl.Text = GridView1.Rows[rowid].Cells[5].Text;           
        }
        protected void Button2_Click(object sender, EventArgs e)
        { 
            string nuser = Label1.Text;           
            SqlCommand sqlCommand = new SqlCommand("usp_deleteRecord", conn);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("email", emailLbl.Text);
            sqlCommand.Parameters.AddWithValue("remark", TextBox1.Text);
            sqlCommand.Parameters.AddWithValue("slno", HiddenField1.Value);
            sqlCommand.Parameters.AddWithValue("uniquekey", HiddenField2.Value);
            sqlCommand.Parameters.AddWithValue("DeletedBy", nuser);
            conn.Open();
            int result = sqlCommand.ExecuteNonQuery();
            if (result != 0)
            {

                Response.Write("<script>console.log('Data updateed')</script>");
                Response.Redirect("Display.aspx");

            }
            conn.Close();
            Panel1.Visible = false;
        }

        protected void regButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegForm.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btn = (sender as Button);
            string[] cmdarg = btn.CommandArgument.Split(',');
            HiddenField1.Value = cmdarg[0];
            HiddenField2.Value = cmdarg[1];           
           regButton.Visible = false;
            int rowid = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;   
                TextBox8.Text = GridView1.Rows[rowid].Cells[2].Text;
                TextBox2.Text = GridView1.Rows[rowid].Cells[3].Text;
                TextBox3.Text = GridView1.Rows[rowid].Cells[4].Text;
                TextBox4.Text = GridView1.Rows[rowid].Cells[5].Text;
                TextBox5.Text = GridView1.Rows[rowid].Cells[6].Text;
                TextArea1.Value = GridView1.Rows[rowid].Cells[7].Text;
                RadioButtonList1.SelectedValue = GridView1.Rows[rowid].Cells[8].Text;
                TextBox7.Text = GridView1.Rows[rowid].Cells[9].Text;
                DropDownList1.SelectedValue = GridView1.Rows[rowid].Cells[10].Text;
                CheckBox1.Text = GridView1.Rows[rowid].Cells[11].Text;
                if (CheckBox1.Text == "Active")
                {
                    CheckBox1.Checked = true;
                }
                else
                {
                    CheckBox1.Checked = false;
                }
            gridd.Visible = false;
            tableField.Visible = true;
        }            
        }   
}