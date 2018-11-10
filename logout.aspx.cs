using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       // Session.Clear();
        Session.Abandon();
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
        Response.Redirect("~/Guest/default.aspx");


    }
    
    //protected void Timer1_Tick1(object sender, EventArgs e)
    //{
        
        //string redirectUrl = FormsAuthentication.DefaultUrl + "?Returnurl=~/Guest/default.aspx";
        

       // FormsAuthentication.SignOut();
       // Response.Redirect("~/Guest/default.aspx");

        
   // }
}