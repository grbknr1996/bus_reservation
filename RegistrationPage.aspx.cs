using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            {
              /* SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Registration1ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from [user] where Uname='"+uname.Text+"'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if(temp==1)
                {
                    Response.Write("user already exists");
                }



                conn.Close();*/


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["userRegistrationString"].ConnectionString);
                conn.Open();
                string insertquery = "INSERT into [user] (uname,e-mail,password,mobile) values (@uname,@email,@pass,@mobile)";
                SqlCommand com = new SqlCommand(insertquery, conn);
                com.Parameters.AddWithValue("@uname",uname.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@pass", pass.Text);
                com.Parameters.AddWithValue("@mobile", mobile.Text);
                com.ExecuteNonQuery();
                Response.Write("Registration is succesful");
                Response.Redirect("Manager.aspx");


                conn.Close();
            }catch(Exception ex)
            {
                Response.Write("error:"+ex.ToString());
            }


        }
    }
}