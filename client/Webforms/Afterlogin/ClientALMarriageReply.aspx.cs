using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_Webforms_Afterlogin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetCookie();
    }
    void GetCookie()
    {

        HttpCookie marInfo = Request.Cookies["MarRegInfo"];
        lblRegNo.Text = marInfo["RegNo"].ToString();
        lblPlace.Text = marInfo["Place"].ToString();
        lblRoomnm.Text = marInfo["RoomNo"].ToString();
        lblDate.Text = marInfo["RegDate"].ToString();
        lblTime.Text = marInfo["RegTime"].ToString();
        lblRegUnder.Text = marInfo["RegUnder"].ToString();
        
    }
}