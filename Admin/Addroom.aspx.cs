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

public partial class Admin_AdminHome : System.Web.UI.Page
{
    protected bool Check_Size()
    {
        System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
        decimal size = Math.Round(((decimal)FileUpload1.PostedFile.ContentLength / (decimal)1024), 2);
        if (size > 100)
        {
            return false;
        }
        else
            return true;
    }
    protected bool Check_dimension()
    {
        System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
        int height = img.Height;
        int width = img.Width;
        if (height > 100 || width > 100)
        {
            return false;
        }
        else
            return true;

    }
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

        String filename = Path.Combine(Server.MapPath("~/Images/"), FileUpload1.FileName);

        SqlCommand cmd = new SqlCommand("sproom", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@roomno", txtroomno.Text);
        cmd.Parameters.Add("@type", RadioButtonList1.SelectedItem.Text);
        cmd.Parameters.Add("@bed", RadioButtonList2.SelectedItem.Text);
        cmd.Parameters.Add("@imagepath",ViewState["filepath"].ToString());
        cmd.Parameters.Add("@description", txtdesc.Text);
        cmd.Parameters.Add("@rate", txtrate.Text);
        cmd.ExecuteNonQuery();
        obj.closeconnect();
        clear();
        Response.Write("<script>alert('Registered Successfully')</script>");
    }
    protected void clear()
    {
        txtroomno.Text = "";
        RadioButtonList1.ClearSelection();
        RadioButtonList2.ClearSelection();
        Image1.ImageUrl = "";
        txtdesc.Text = "";
        txtrate.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {

            String filename = Path.Combine(Server.MapPath("~/Images/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".tmp" || strExtension == ".gif")
            {

                FileUpload1.SaveAs(filename);
                Image1.ImageUrl = "~/Images/" + FileUpload1.FileName;
                ViewState["filepath"] = Image1.ImageUrl;
            }
            else
            {
                Response.Write("<script>alert('Select a valid image')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please choose an image')</script>");
        }


    }
}