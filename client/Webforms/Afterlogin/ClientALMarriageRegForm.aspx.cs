using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;



public partial class client_Webforms_Afterlogin_ClientALMarriageRegForm : System.Web.UI.Page
{

    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True";
    SqlConnection con = new SqlConnection(strcon);//establishes connection
    int marId;
    SqlCommand sqlCmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["FirstName"] !=null)
        {
            lblWelcomeMsg.Text = "Welcome Mr./Miss " + Session["FirstName"] + "" + Session["LastName"];
        }
    }
    void SetValues()
    {
        txtmFName.Text = "Maniyo";
        txtmLName.Text = "Patel";
        txtmDOB.Text = "12-12-1998";
        txtmAddress.Text = "xyz";
        txtmEMailId.Text = "PatelManiyo12@yahoo.com";
        txtmPhone.Text = "942784236";
        ddlmReligion.Text = "Muslim";

        txtfFName.Text = "Mena";
        txtfLName.Text = "Shah";
        txtfDOB.Text = "12-01-1998";
        txtfAddress.Text = "xyz";
        txtfEmailId.Text = "PatelMena12@yahoo.com";
        txtfPhone.Text = "942784236";
        ddlfReligion.Text = "Muslim";

    }
    void ClearAll()
    {
        txtmFName.Text = "";
        txtmLName.Text = "";
        txtmDOB.Text = "";
        txtmAddress.Text = "";
        txtmEMailId.Text = "";
        txtmPhone.Text = "";
        ddlmReligion.Text = "";

        txtfFName.Text = "";
        txtfLName.Text = "";
        txtfDOB.Text = "";
        txtfAddress.Text = "";
        txtfEmailId.Text = "";
        txtfPhone.Text = "";
        ddlfReligion.Text = "";

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        ClearAll();
            }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        sqlCmd = new SqlCommand();
        sqlCmd.Connection = con;
        sqlCmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        SetValues();
        sqlCmd.CommandText = "RetriveData";
        SqlParameter[] cmdParam = {new SqlParameter("@TblNm","MarReg"),
                                    new SqlParameter("@ClmNm","*"),
                                    new SqlParameter("@strWhereClause",
                                    "Where mEmailId='"+txtmEMailId.Text +
                                      "' or fEmailId='"+txtfEmailId.Text+ "'" )};
        foreach (SqlParameter parm in cmdParam)
        {
            sqlCmd.Parameters.Add(parm);
        }
        dr = sqlCmd.ExecuteReader(); // dr gets all data

        //if (dr.Read())
        //{
        //    con.Close();  //means dr got the data then true
        //    lblErrMsg.Text = "Email-id Already exist....";
        //    txtmEMailId.Text = "";
        //    txtfEmailId.Text = "";
        //    txtmEMailId.Focus();

        //}
        //else
        //{
            con.Close();
            sqlCmd = new SqlCommand();
            sqlCmd.Connection = con;
            sqlCmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            sqlCmd.CommandText = "InsertMarReg";
            SqlParameter[] cmdParamIns = {new SqlParameter("@mFName",txtmFName.Text), new SqlParameter("@mLName",txtmLName.Text),
                                             new SqlParameter("@mDOB",txtmDOB.Text), new SqlParameter("@mAddress",txtmAddress.Text),
                                             new SqlParameter("@mEmailId",txtmEMailId.Text), new SqlParameter("@mPhone",txtmPhone.Text),
                                             new SqlParameter("@mReligion", ddlmReligion.Text),
                                             new SqlParameter("@fFName",txtfFName.Text), new SqlParameter("@fLName",txtfLName.Text),
                                             new SqlParameter("@fDOB",txtfDOB.Text), new SqlParameter("@fAddress",txtfAddress.Text),
                                             new SqlParameter("@fEmailId",txtfEmailId.Text), new SqlParameter("@fPhone",txtfPhone.Text),
                                             new SqlParameter("@fReligion", ddlfReligion.Text)};
            foreach (SqlParameter parm in cmdParamIns)
            {
                sqlCmd.Parameters.Add(parm);
            }
            sqlCmd.ExecuteNonQuery();
            con.Close();
            lblErrMsg.Text = "record Inserted Successfully........";
            //ClearAll();
            sqlCmd = new SqlCommand();
            sqlCmd.Connection = con;
            sqlCmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            marId = GetId();
            SetCookies();
            Response.Redirect("ClientALMarriageReply.aspx");

        //}

    }
    int GetId()
    {
        int myId;
        sqlCmd.CommandText = "RetriveData";
        SqlParameter[] cmdParam = {new SqlParameter("@TblNm","MarReg"),
                                    new SqlParameter("@ClmNm","max(mrgId)"),
                                    new SqlParameter("@strWhereClause","" )};
        foreach (SqlParameter parm in cmdParam)
        {
            sqlCmd.Parameters.Add(parm);
        }
        dr = sqlCmd.ExecuteReader();
        if (dr.Read())
        {
            myId = Convert.ToInt32(dr[0]);
            return myId;
        }
        return 0;


    }
    void SetCookies()
    {
        HttpCookie MarRegInfo = new HttpCookie("MarRegInfo");
        MarRegInfo["RegNo"] = marId.ToString();
        MarRegInfo["Place"] = "Bhuti Japa";
        MarRegInfo["RoomNo"] = "13";
        MarRegInfo["RegDate"] = DateTime.Today.AddDays(2).ToString().Substring(0, 10).ToString();
        MarRegInfo["RegTime"] = "12:00 P.M.";

        if ((ddlmReligion.Text == "Muslim" || ddlmReligion.Text == "Christian") || (ddlfReligion.Text == "Muslim" || ddlfReligion.Text == "Christian"))
        {
            MarRegInfo["RegUnder"] = "Special Marriage Act";
        }
        else
        {
            MarRegInfo["RegUnder"] = "Hindu Marriage Act";
        }
        MarRegInfo.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(MarRegInfo);
    }

}