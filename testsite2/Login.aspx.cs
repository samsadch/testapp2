using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "select count(*) from UserData UserName ='"+TextBoxUser.Text+"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
           
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    conn.Open();
                    string checkpwd = "select password from UserData where username='" + TextBoxUser.Text + "'";
                    SqlCommand passcom = new SqlCommand(checkpwd, conn);
                    string password = passcom.ExecuteScalar().ToString().Replace(" ", "");

                    if (password == TextBoxPass.Text)
                    {
                        Session["New"] = TextBoxUser.Text;
                        Response.Write("Password is matching");
                    }
                    else
                    {
                        Response.Write("Password does not matching");
                    }

                }
                else
                {
                    Response.Write("Username  is not matching");
                }
                conn.Close();
            }
        catch(Exception eee)
        {
            Response.Write("Error occured Error:" + eee.ToString());
        }
                 

            
     }
    
}
