using System;
using System.Data.SqlClient; // for sqlconnection , sqlcommand

public partial class admin_Webforms_Beforelogin_AdminBLAddAdmin : System.Web.UI.Page
{
    static string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True";

    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFName.Focus();
       // con.Open(); //
       // lblErrMsg.Text = "Connection Established successfully....";
    }
    public void ClearAll()
    {
        txtFName.Text = "";
        txtLName.Text = "";
        txtUName.Text = "";
        txtEmail.Text = "";
        txtPasswd.Text = ""; 
        txtCPasswd.Text = "";
        lblErrMsg.Text = "";
      
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        ClearAll();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string strIns;
        strIns = "Insert into AdminMaster (FirstName,LastName," +
            "Email,UName,Passwd) values('" + txtFName.Text.Trim() + "','" +
            txtLName.Text.Trim() + "','" + txtEmail.Text.Trim() + "','" +
            txtUName.Text.Trim() + "','" + txtPasswd.Text.Trim() + "')";
        SqlCommand cmdIns = new SqlCommand(strIns, con);// con means road and what to be taken is shown by strins
        con.Open();//establish the connection so we can drive vehicle
        cmdIns.ExecuteNonQuery();//insert into table //it is not query so DML so we wrote nonquery
        con.Close();// connection is closed because if connection is kept established then it will not get load
        ClearAll();// clear all text box value
        txtFName.Focus();// set focus on first 
        lblErrMsg.Text = "Record Inserted Successfully...";
    }
}