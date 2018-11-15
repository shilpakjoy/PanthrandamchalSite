using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_room : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("~/Guest/default.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Booking.aspx?id=" + GridView1.SelectedRow.Cells[0].Text);
        //Class1 obj = new Class1();
        //obj.getconnect();
        //SqlCommand cmd = new SqlCommand("sprmview", obj.con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@flag", 0);
        //cmd.Parameters.Add("@roomno", GridView1.SelectedRow.Cells[0].Text);
        //cmd.Parameters.Add("@username", Session["username"].ToString());
        //cmd.Parameters.Add("@status", "waiting");
        //cmd.ExecuteNonQuery();

    }
}