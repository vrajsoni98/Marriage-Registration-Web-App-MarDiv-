using System;
using System.Data.SqlClient;

public partial class admin_Webforms_Beforelogin_AdminBLLoginin : System.Web.UI.Page
{
    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True";

    SqlConnection con = new SqlConnection(strcon);
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUName.Focus();
    }




    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        string strSel;
        strSel = "Select UName,Passwd from AdminMaster where UName='" + txtUName.Text.Trim() + "'";
        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr;
        con.Open();
        dr = cmdSel.ExecuteReader();
        if (dr.Read() == true)
        {
            if (dr["Passwd"].ToString() == txtPasswd.Text.Trim())
            {
                lblErrMsg.Text = "Login Successfull...";
                Response.Redirect("../Afterlogin/AdminALHome.aspx");
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