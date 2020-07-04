using System;
using System.Data.SqlClient;

public partial class admin_Webforms_Beforelogin_AdminBLChangePassword : System.Web.UI.Page
{
    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True";
    SqlConnection con = new SqlConnection(strcon); 
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUName.Focus();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string strSel;
        strSel = "Select UName,Passwd from AdminMaster where UName = '" + txtUName.Text + "'";
        con.Open();

        SqlCommand cmdSel = new SqlCommand(strSel, con);
        SqlDataReader dr;
        dr = cmdSel.ExecuteReader();

        if (dr.Read())
        {
            if (dr["Passwd"].ToString() == txtOPasswd.Text)
            {
                con.Close();
                string strUpdt;
                strUpdt = "Update AdminMaster set Passwd = '" + txtNPasswd.Text +
                "' where UName = '" + txtUName.Text + "' and Passwd = '" + txtOPasswd.Text + "'";

                SqlCommand cmdUpdt = new SqlCommand(strUpdt, con);
                con.Open();
                cmdUpdt.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AdminBLChangePasswordConfirm.aspx");
            }
            else
            {
                lblErrMsg.Text = "Invalid Password...";
                txtOPasswd.Focus();
            }
        }
        else
        {
            lblErrMsg.Text = "Invalid UserName...";
            txtUName.Focus();
        }
    }
}