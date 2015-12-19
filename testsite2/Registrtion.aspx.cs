using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registrtion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            try
            {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "select count(*) from UserData UserName ='"+TextBoxUN.Text+"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("user already exists");
                }       
                 

            conn.Close();
             }
            catch (Exception ee)
            {
                Response.Write("Error:" + ee.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            String insertQuery = "insert into UserData (ID,UserName,Email,Password,Country) values (@ID ,@uname ,@mail ,@pwd ,@country)";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@mail", TextBoxMail.Text);
            com.Parameters.AddWithValue("@pwd", TextBoxPWD.Text);
            com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
            com.ExecuteNonQuery();

            conn.Close();
            Response.Redirect("Manager.aspx");
            Response.Write("Your Registration is Successful");
        }
        catch(Exception ex)
        {
            Response.Write("Error:"+ex.ToString());
        }
    }
}