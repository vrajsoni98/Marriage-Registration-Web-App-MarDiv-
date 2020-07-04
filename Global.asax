﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["ActiveUsers"] = 0;
        Application["TotalUsers"] = 0;

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Application.Lock();
        Application["TotalUsers"] = Convert.ToInt32(Application["TotalUsers"]) + 1;
        Application.UnLock();

        Application.Lock();
        Application["ActiveUsers"] = Convert.ToInt32(Application["ActiveUsers"]) + 1;
        Application.UnLock();
        Session["FirstName"] = null;
        Session["LastName"] = null;

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        
        Application.Lock();
        Application["ActiveUsers"] = Convert.ToInt32(Application["ActiveUsers"]) - 1;
        Application.UnLock();

    }

</script>
