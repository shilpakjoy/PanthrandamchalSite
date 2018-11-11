using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_View_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("~/Guest/default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("sprmview", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 2);
        cmd.Parameters.Add("@status", "Approve");
        cmd.Parameters.Add("@roomno", Request.QueryString["id"].ToString());

        cmd.Parameters.Add("@username", Request.QueryString["id1"].ToString());
        cmd.ExecuteNonQuery();
        Response.Redirect("viewbooking.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("sprmview", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 2);
        cmd.Parameters.Add("@status", "Reject");
        cmd.Parameters.Add("@roomno", Request.QueryString["id"].ToString());

        cmd.Parameters.Add("@username", Request.QueryString["id1"].ToString());
        cmd.ExecuteNonQuery();
        Response.Redirect("viewbooking.aspx");
    }
}