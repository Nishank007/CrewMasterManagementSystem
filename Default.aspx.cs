using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page 
{
    String strConn = ConfigurationManager.ConnectionStrings["avsecConnectionString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!this.IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[1] {new DataColumn("CrewCode") });
            Session.Add("dtSelection", dt);
            Session.Add("username", "prakash");
        }
    }
    protected void btn_go_Click(object sender, EventArgs e)
    {
        Gridview1.Attributes.Add("bordercolor", "#c3cecc");
        Gridview1.PageIndex = 0;
        BindData();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string sendto = "";
        switch (Label2.Text.ToString())
        {
            case "Sending to Crew Scheduling":
                sendto = "CS";
                break;
            case "Sending to Flight Dispatch":
                sendto = "FD";
                break;
            case "Sending to Time Office":
                sendto = "TO";
                break;
            case "Reporting":
                sendto = "RP";
                break;
        }
        DataTable dt = Session["dtSelection"] as DataTable;
        SqlConnection mycon = new SqlConnection(strConn);
        mycon.Open();
        SqlCommand cmd = new SqlCommand();
        string querystring = "";
        int i = 0;
        foreach (DataRow dr in dt.Rows)
        {
            querystring = "insert into crewmast values('" + dr["CrewCode"] + "', getdate(), getdate(), '" + sendto + "', '" + Session["username"].ToString() + "', '" + Session.SessionID.ToString() + "', '', '', '', '', '')";
            cmd = new SqlCommand( querystring, mycon);
            //cmd.CommandText = "insert into crewmast ('" + dr["CrewCode"] + "', getdate(), getdate(), '" + sendto + "', '" + Session["username"].ToString() + "', '" + Session.SessionID.ToString() + "'";
            int c = cmd.ExecuteNonQuery();
            cmd.Cancel();
            cmd.Dispose();
            //show_alert(c.ToString());
            if (c == 1)
                i++;
            //Response.Write(querystring);
        }
        mycon.Close();
        mycon.Dispose();
        show_alert(i + " Records have been " + Label2.Text.ToString());
        panel1.Visible = false;
        pnlSelection.Visible = true;
        Session["dtSelection"] = null;
        dt.Dispose();
        dt.Clear();
        Gridview2.DataBind();
        Gridview1.DataBind();
    }
    protected void taskSelection_Click(object sender, EventArgs e)
    {
        Button btnSelect = (sender as Button);
        //Response.Write(btnSelect.CommandName.ToString());
        pnlSelection.Visible = false;
        
        switch(btnSelect.CommandName.ToString())
        {
            case "CS":
                Label2.Text = "Sending to Crew Scheduling";
                btnUpdate.Text = "Update to Crew Scheduling";
                panel1.Visible = true;
                break;
            case "FD":
                Label2.Text = "Sending to Flight Dispatch";
                btnUpdate.Text = "Update to Flight Dispatch";
                panel1.Visible = true;
                break;
            case "TO":
                Label2.Text = "Sending to Time Office";
                btnUpdate.Text = "Update to Time Office";
                panel1.Visible = true;
                break;
            case "RP":
                Label2.Text = "Reporting";
                btnUpdate.Text = "Reporting";
                panel2.Visible = true;
                break;
        }
       
        //Label2.Text = 
    }
    public void BindData()
    {
        Label1.Text = "";
        string cond = "";

        //Response.Write("Bind");

        //if (drp_dept.SelectedValue.ToString() != "0")
        //    cond = cond + " station = '" + drp_dept.SelectedValue.ToString() + "' and";
        //if (drp_locn.SelectedIndex >= 1)
        //    cond = cond + " location = '" + drp_locn.SelectedValue.ToString() + "' and";
        if (txt_crewcode.Text != "")
        {
            if (cond.Length > 4)
                cond = cond + " and crewcode like '%" + txt_crewcode.Text.ToString() + "%' ";
            else
                cond = cond + " crewcode like '%" + txt_crewcode.Text.ToString() + "%' ";
        }
        if (txt_crewname.Text != "")
        {
            if (cond.Length > 4)
                cond = cond + " and crewname like '%" + txt_crewname.Text.ToString() + "%' ";
            else
                cond = cond + " crewname like '%" + txt_crewname.Text.ToString() + "%' ";
        }

        /**************
        //Label1.Text = cond;
        cmd.CommandText = "select userid, name, incharge, location, station, region, contactno, mobileno, email from logintable " + (cond.Length>4 ?  " where " + cond.Substring(1, cond.Length - 4) : " ") + " Order by name";
        //Label1.Text = cmd.CommandText.ToString();
        cmd.Connection = mycon;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        mycon.Open();
        cmd.ExecuteNonQuery();
        //Label1.Text= Label1.Text.ToString() + ds.Tables[0].Rows.Count.ToString();
         *********/
        SqlDataSource1.SelectCommand = "select crewcode, crewname from crewmast " + (cond.Length > 4 ? " where  " + cond : " ") + " Order by crewcode";

        //Response.Write(SqlDataSource1.SelectCommand.ToString());

        Gridview1.DataSource = SqlDataSource1;
        Gridview1.DataBind();
        panel_grid.Visible = true;

        if (!(Gridview1.Rows.Count > 0))
        {
            Gridview1.DataSource = null;
            Gridview1.DataBind();
            Label1.Text = "No Data Found";
            panel_grid.Visible = true;
            //Response.Write("Thanks");
        }


    }
    protected void txt_crewcode_TextChanged(object sender, EventArgs e)
    {
        BindData();
    }
    protected void txt_crewname_TextChanged(object sender, EventArgs e)
    {
        BindData();
    }

    protected void Gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Gridview1.PageIndex = e.NewPageIndex;
        BindData();
    }
    protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write(Gridview1.SelectedRow.RowIndex.ToString());
        //Response.Write(GridView1.Rows[0]);
        DataTable dt = Session["dtSelection"] as DataTable;
        dt.Rows.Add(Gridview1.SelectedRow.Cells[0].Text.ToString());
        Session.Add("dtSelection", dt);
        Gridview2.DataSource = dt;
        Gridview2.DataBind();
        
    }
    protected void Gridview2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Gridview2.PageIndex = e.NewPageIndex;
        DataTable dt = Session["dtSelection"] as DataTable;
        Gridview2.DataSource = dt;
        Gridview2.DataBind();
    }


   
    protected void Gridview2_RowDeleted(object sender, GridViewDeleteEventArgs e)
    {
        //Response.Write();
        DataTable dt = Session["dtSelection"] as DataTable;
        foreach (DataRow dr in dt.Rows)
        {
            if (dr["CrewCode"].ToString() == Gridview2.Rows[e.RowIndex].Cells[0].Text.ToString())
            {
                dr.Delete();
                break;
            }
        }
        Gridview2.DataSource = dt;
        Gridview2.DataBind();
    }
    public void show_alert(string message)
    {

        Page page = HttpContext.Current.Handler as Page;
        //ClientScript.RegisterStartupScript(Page, "message", "alert('Hellow world!');", true);
        ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + message + "');", true);
    }
    protected void txtFromDate_TextChanged(object sender, EventArgs e)
    {
        //BindData();
    }
    protected void txtToDate_TextChanged(object sender, EventArgs e)
    {
        //BindData();
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        //string query = 
        BindData3();
    }
    protected void Gridview3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Gridview3.PageIndex = e.NewPageIndex;
        BindData3();
    }
    public void BindData3()
    {
       
        SqlDataSource1.SelectCommand = "select cd.crewcode, cm.crewname, cd.sendto from crewmast cd join crewmast cm on cd.crewcode = cm.crewcode where crewdate between '" + txtFromDate.Text + "' and '" + txtToDate.Text + "' and sendto = '" + ddlSentTo.SelectedItem.Value.ToString() + "' Order by crewdate";

        //Response.Write(SqlDataSource1.SelectCommand.ToString());

        Gridview3.DataSource = SqlDataSource1;
        Gridview3.DataBind();
        panel_grid.Visible = true;

        if (!(Gridview3.Rows.Count > 0))
        {
            Gridview3.DataSource = null;
            Gridview3.DataBind();
            //Label1.Text = "No Data Found";
            //panel_grid.Visible = true;
            //Response.Write("Thanks");
            viewdetails.Visible = false;
        }
        else
        {
            viewdetails.Visible = true;
        }
    }
    protected void btnExcel_Click(object sender, EventArgs e)
    {
        string query = "select cd.crewcode, cm.crewname, cd.sendto from crewmast cd join crewmast cm on cd.crewcode = cm.crewcode where crewdate between '" + txtFromDate.Text + "' and '" + txtToDate.Text + "' Order by crewdate";

        /*SqlConnection sqlConn = new SqlConnection(strConn);
        SqlCommand cmd = new SqlCommand(query, sqlConn);
        sqlConn.Open();
        DataTable dt = new DataTable();
        dt.Load(cmd.ExecuteReader());
    
        string attachment = "attachment; filename=city.doc";
        Response.ClearContent();
        Response.AddHeader("content-disposition", attachment);
        Response.ContentType = "application/vnd.ms-word";
        string tab = "";
        foreach (DataColumn dc in dt.Columns)
        {
            Response.BinaryWrite(tab + dc.ColumnName);
            tab = "\t";
        }
        Response.BinaryWrite("\n");
        int i;
        foreach (DataRow dr in dt.Rows)
        {
            tab = "";
            for (i = 0; i < dt.Columns.Count; i++)
            {
                Response.BinaryWrite(tab + dr[i].ToString());
                tab = "\t";
            }
            Response.BinaryWrite("\n");
        }
        Response.End();*/

    }

}
