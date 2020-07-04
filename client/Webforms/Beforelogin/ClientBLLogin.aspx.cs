using System;
using System.Data.SqlClient;

public partial class client_Webforms_Beforelogin_ClientBLLogin : System.Web.UI.Page
{
    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True";

    SqlConnection con = new SqlConnection(strcon);
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUName.Focus();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string strSel;
        strSel = "Select * from ClientMaster where UName= '" + txtUName.Text.Trim() + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr;
        con.Open();
        dr = cmdSel.ExecuteReader();
        if (dr.Read() == true)
        {
            if (dr["Passwd"].ToString() == txtPasswd.Text.Trim())
            {
                //lblErrMsg.Text = "Login Successfull...";
                Session["FirstName"] = dr["FirstName"].ToString();
                Session["LastName"] = dr["LastName"].ToString();
                Response.Redirect("../Afterlogin/ClientALHome.aspx");
            }
            else
            {
                lblErrMsg.Text = "Invalid Password";
                txtPasswd.Text = "";
                txtPasswd.Focus();
            }
        }
        else
        {
            lblErrMsg.Text = "Invalid UserName";
            txtUName.Text = "";
            txtUName.Focus();
        }


    }
}