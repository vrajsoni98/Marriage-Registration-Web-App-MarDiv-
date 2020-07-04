using System;
using System.Data.SqlClient; //for sqlconnection,sqlcommand
using System.Data; //for dataset client
public partial class client_Webforms_Beforelogin_ClientBLSignup : System.Web.UI.Page
{
    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True";
    SqlConnection con = new SqlConnection(strcon);//establishes connection
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFName.Focus();
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        string strSel = "Select * from ClientMaster where UName ='" + txtUName.Text.Trim() + "'" ;
        SqlDataAdapter adptSel = new SqlDataAdapter();//to work in disconnected, (fill) can be used with this 
        DataSet ds = new DataSet();

        SqlCommand cmdSel = new SqlCommand(strSel, con);//select update delete query
        adptSel.SelectCommand = cmdSel;//execute cmdsel stored in strsel on connection con
        adptSel.Fill(ds);//opens connection then strsel is executed  then data is stored in ds 
                         //ds can have multiple table. initially it has 0 tbales
        // if username is same as txtUName then rows will me more than 0


        if(ds.Tables[0].Rows.Count > 0)
        {
            lblErrMsg.Text = "Please Enter another User Name";

            txtUName.Text = "";
            txtUName.Focus();
        }
        else
        {
            string strGen;
            if(rbGender.SelectedValue == "Male")
            {
                strGen = "Male";
            }
            else
            {
                strGen = "Female";
            }
            
            string strIns;
            strIns = "Insert into ClientMaster (FirstName,LastName,DOB,Address,Email,Phone,Gender,ClientRel,UName,Passwd) values ('" +
              txtFName.Text + "','" + txtLName.Text + "','" + txtDOB.Text + "','" + txtAddress.Text + "','" +
              txtEmail.Text + "','" + txtPhone.Text + "','" + strGen + "','" + txtOther.Text + "','" + txtUName.Text + "','" +
              txtPasswd.Text + "')";
            con.Open();//to insert we need connection
            //if we need to modify the database then dataset is of no use so we deed explicitly here disconnected wont work
            SqlDataAdapter adptIns = new SqlDataAdapter();


            //SqlCommand cmdIns = new SqlCommand(strIns, con);
            //adptIns.InsertCommand = cmdIns;
                     //or
            adptIns.InsertCommand = new SqlCommand(strIns,con);



            adptIns.InsertCommand.ExecuteNonQuery();
            lblErrMsg.Text = "Record Inserted Successfully...";
            con.Close();

        }
    }
}