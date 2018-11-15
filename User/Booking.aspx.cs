using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("sprmview", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@roomno", Request.QueryString["id"].ToString());
        cmd.Parameters.Add("@username", Session["username"].ToString());
        cmd.Parameters.Add("@status", "waiting");
        cmd.Parameters.Add("@date", TextBox1.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registered Successfully')</script>");

    }

  
}