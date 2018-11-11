using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Guest_reset_pwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("splogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 5);
        cmd.Parameters.Add("@password", TextBox1.Text);
        cmd.Parameters.Add("@username", Session["username"].ToString());
       
        SqlCommand cmd1 = new SqlCommand("spregister", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 3);
        cmd1.Parameters.Add("@password", TextBox1.Text);
        cmd1.Parameters.Add("@username", Session["username"].ToString());

       

        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        Response.Redirect("default.aspx");

    }
}