 <%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .home_menu
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#fff; padding:1px; padding-left:5px;
         text-decoration: none;
        }
        .home_menu:hover
        {
          
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#FAE7B5; padding:1px; padding-left:5px;
         text-decoration: none;
         
        }
        .home_submenu
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#7C0A02; padding:1px; padding-left:5px;
         text-decoration: none;
        }
        .page_head
        {
         font-family:Verdana, Arial, Tahoma; font-size:17px; font-weight:bold; color:#c32026; padding:5px;
         text-decoration: none;
        }
        .page_head_n
        {
         font-family:Verdana, Arial, Tahoma; font-size:17px; color:#c32026;  padding:5px;
         text-decoration: none;
        }
        .login_head
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#fff; padding:10px; background-color:#ED7306;
         text-decoration: none;
        }
        .page_title
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#c32026; padding:0px;
         text-decoration: none;background-color:#fff; padding-left:15px;
        }
        .btnAvsec
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#fff; padding:1px; padding-left:5px;
         text-decoration: none;background-color:#c32026;
        }
        .btnAvsec1
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#fff; padding:1px; padding-left:5px;
         text-decoration: none;background-color:#696969;
        }
        .menulink_left {
        font-weight: bold; 
        font-size: 12px; 
        /*color: #554433; */ 
        color:#333333 ;
        line-height: 20px; 
        font-style: normal; 
        font-family: Tahoma,Verdana, Arial, Helvetica, sans-serif; 
        text-decoration: none;
        text-align:left;
        vertical-align:middle;
        display:block;
        /*width:159px;
        height:40px;*/
        word-spacing:0px;
        padding:5px 0 5px 0;
        }
        .menulink_left:hover
        {
        font-weight: bold; 
        font-size: 12px; 
        /*color: #554433; */ 
        color:#E04006 ;
        line-height: 20px; 
        font-style: normal; 
        font-family: Tahoma,Verdana, Arial, Helvetica, sans-serif; 
        text-decoration: none;
        text-align:left;
        vertical-align:middle;
        display:block;
        /*width:159px;
        height:40px;*/
        word-spacing:0px;
        padding:5px 0 5px 0;
        }
        .sub_menu
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#c32026; padding:0px;
         text-decoration: none;background-color:#fff;
        }
        .sub_menu:hover
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#FAE7B5; padding:0px;
         text-decoration: none; background-color:#c32026;
        }
        .sub_menu a
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#c32026; padding:8px 15px 8px 15px;
         text-decoration: none; width:100%; height:28px;
        }
        .sub_menu a:hover
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#FAE7B5; padding:8px 15px 8px 15px;
         text-decoration: none; width:100%; height:28px;
        }
        .PAQ_master_header
        {
         font-family:Verdana, Arial, Tahoma;
         background-color:#5D7B9D;
         font-weight:bold;color:White; text-align:Center;
        }
        .PAQ_field_header
        {
         background-color:#E9ECF1;
         font-weight:bold; width:20%;
        }
        .pagetext_bold
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#284775; padding:0px 0px 0px 0px;
         text-decoration: none;background-color:#fff;line-height:25px; text-align:left;
        }
        .pagetext_normal
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:normal; color:#333333; padding:0px 0px 0px 0px;
         text-decoration: none;background-color:#FFFFFF;line-height:22px; text-align:left;
        }
        .pagetext_normal_alt
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:normal; color:#333333; padding:0px 0px 0px 0px;
         text-decoration: none;background-color:#F7F6F3;line-height:22px; text-align:left;
        }
        .bgwhite
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:normal; color:#333333;
         text-decoration: none;background-color:#fff;
        }
        .pagetext_dull
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:normal; color:#333333; padding:0px 5px 0px 5px;
         text-decoration: none; background-color:#fff;line-height:22px; text-align:left;
        }
        .PAQtxt_class
        {
         border:1px #E97451 solid; font-size:12px; font-family:Verdana, Arial, Tahoma; height:16px; width:935px;
        }
        hr 
        { 
         width:95%; height:2; background: #2f4f4f; 
        }
        .btnView1
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#ffffff; padding:5px 5px 5px 5px;
         text-decoration: none;background-color:#2f4f4f; border: 2px #2f4f4f solid; text-shadow: none;
        }
        .btnView0
        {
         font-family:Verdana, Arial, Tahoma; font-size:12px; font-weight:bold; color:#2f4f4f; padding:5px 5px 5px 5px;
         text-decoration: none;background-color:#A9A9A9;border: 2px #A9A9A9 solid; text-shadow: none;
        }
        .modalBackground 
        {
        background-color:Gray;
        filter:alpha(opacity=30);
        opacity:0.5;
        }
        .modalPopup
        {
            background-color: #ffffdd;
            border-width: 3px;
            border-style: solid;
            border-color: Gray;
            padding: 3px;
            width: 250px;
        }
        .pdfdownload
        {
            background: url('images/pdfdownload.jpg') no-repeat 0 0;
            border: 0;
            height: 30px;
            width: 30px
        }
        .accordionContent{  
            
            /*background-color: #ED872D;
            background-image:url('images/expand.jpg');
            background-repeat:no-repeat;*/
            padding:10px 0 0 0;
            z-index:10;            
            
        }
        .topicHeader {  
            
            /*background-color: #ED872D;*/
            padding:0px 0 7px 22px;
            vertical-align:middle;
            border:0px solid red;
            text-align:left;
            font-size:15px;
        }  
        .accordionHeader {  
            
            /*background-color: #ED872D;*/
            background-image:url('images/expand.jpg');
            background-repeat:no-repeat;
            padding:0px 0 7px 22px;
            vertical-align:middle;
            border:0px solid red;
            text-align:left;
            font-size:15px;
        }  
        
        .accordionHeaderSelected {  
            /*background-color: #CC5500; */
            background-image:url('images/collapse.jpg');
            background-repeat:no-repeat;
            padding:0px 0 7px 22px;
            vertical-align:middle;
            border:0px solid red;
            text-align:left;
            font-size:15px;
        }
        #page-wrap 
        {
            width: 1000px;
            margin: 0 auto;
        }
        #footer 
        {
            width: 990px;
            margin: 0 auto;
        }
    </style>
</head>

<body>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>   
   
    <div class="pagetext_normal">
        <asp:Panel ID="pnlSelection" runat="server" Width="100%" ScrollBars="Auto" BorderStyle="None">
         <div class="pagetext_normal">
            <table style="width:50%; padding:20px; background-color:White; border:1px #DCB065 solid;text-align:center;" align="center" cellpadding="0" cellspacing="0">
            <tr><td style="text-align:center;">
            <asp:Button ID="btnCS" CssClass="btnAvsec1" runat="server" Text="Crew Scheduling" CommandName="CS" OnClick="taskSelection_Click" /><br /><br />
            <asp:Button ID="btnFD" CssClass="btnAvsec1" runat="server" Text="Flight Dispatch" CommandName="FD" OnClick="taskSelection_Click"/><br /><br />
            <asp:Button ID="btnTO" CssClass="btnAvsec1" runat="server" Text="Time Office" CommandName="TO" OnClick="taskSelection_Click"/><br /><br />
            <asp:Button ID="btnReports" CssClass="btnAvsec1"  runat="server" Text="Reporting" CommandName="RP" OnClick="taskSelection_Click"/>
            </td></tr>
            </table>
            </div>
        </asp:Panel>
        <asp:Panel ID="panel1" runat="server" Width="100%" ScrollBars="Auto" BorderStyle="None" Visible="false">
    <div class="pagetext_normal">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
    <table style="width:50%; background-color:White; border:1px #DCB065 solid;" align="center" cellpadding="0" cellspacing="0">
        <tr class="homepage_title" style="background-color:#FFA07A; height:20px;">
            <td colspan="5" align="center" class="login_head" >Crew Master</td></tr>
        <tr class="homepage_subtitle" style="background-color:#FFE0C0; border-bottom:1px #DCB065 solid;  height:10px;">
            <td><asp:Label ID="lbl_crewcode" runat="server" Text="Crew Code"></asp:Label></td>
            <td><asp:Label ID="lbl_crewname" runat="server" Text="Crew Name"></asp:Label></td>
            <td></td>
            <td colspan="2" rowspan="3" style="vertical-align:text-top; border: solid 2px red;">
            <asp:Label id="Label2" runat="server" CssClass="homepage_title" Text="Label New"></asp:Label>
             <asp:Panel ID="panelupdate" runat="server" Width="100%" ScrollBars="Vertical" Height="400px" BorderStyle="None" >
            
    <asp:GridView id="Gridview2" runat="server" Width="100%" 
    OnPageIndexChanging="Gridview2_PageIndexChanging" AllowPaging="false" CellPadding="4" AutoGenerateColumns="False" 
        GridLines="None" ForeColor="#333333" OnRowDeleting="Gridview2_RowDeleted" >

<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

<RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
<Columns>
<asp:BoundField DataField="crewcode" HeaderText="Crew Code"></asp:BoundField>
<asp:CommandField ButtonType="image" ShowDeleteButton="true" DeleteImageUrl="~/images/system-delete-icon.png" HeaderText="Remove" />
<%--<asp:BoundField DataField="crewname" HeaderText="Crew Name"></asp:BoundField>
<asp:CommandField HeaderText="select" SelectText="Select" ButtonType="Link" ShowSelectButton="true"  />
<asp:TemplateField HeaderText="Send To">
<ItemTemplate>
    <asp:LinkButton runat="server" CommandName="CS">Crew Scheduling</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton runat="server" CommandName="FD">Flight Dispatch</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton runat="server" CommandName="TO">Time Office</asp:LinkButton>
    </ItemTemplate>
</asp:TemplateField>

<asp:BoundField DataField="incharge" HeaderText="Incharge"></asp:BoundField>
<asp:BoundField DataField="location" HeaderText="Location"></asp:BoundField>
<asp:BoundField DataField="station" HeaderText="Station"></asp:BoundField>
<asp:BoundField DataField="region" HeaderText="Region"></asp:BoundField>
<asp:BoundField DataField="contactno" HeaderText="Contact No."></asp:BoundField>
<asp:BoundField DataField="mobileno" HeaderText="Mobile No."></asp:BoundField>
<asp:BoundField DataField="email" HeaderText="e-Mail"></asp:BoundField>
--%></Columns>

<PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<EditRowStyle BackColor="#999999"></EditRowStyle>

<AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
</asp:GridView> 
    </asp:Panel>
    <asp:Button ID="btnUpdate" runat="server" Text="Update to " OnClick="btnUpdate_Click" />
    </td>
        </tr>
        <tr style=" padding-top:0px; padding-bottom:0px; padding-left:10px; height:40px;">
        <%--<td><asp:DropDownList style="border:1px #E97451 solid;" ID="drp_dept" runat="server" OnSelectedIndexChanged="drp_dept_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
        <td><asp:DropDownList style="border:1px #E97451 solid;" ID="drp_locn" runat="server" OnSelectedIndexChanged="drp_locn_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
        --%><td><asp:TextBox CssClass="txt_class" ID="txt_crewcode" runat="server" OnTextChanged="txt_crewcode_TextChanged" AutoPostBack="true"></asp:TextBox></td>
        <td><asp:TextBox CssClass="txt_class" ID="txt_crewname" runat="server" OnTextChanged="txt_crewname_TextChanged" AutoPostBack="true"></asp:TextBox></td>
        
        <td><asp:Button ID="btn_go" runat="server" Text="Go" OnClick="btn_go_Click" /></td></tr>
        
        <tr class="homepage_title" style="background-color:#FFA07A; height:20px;"><td colspan="3" align="center" class="homepage_subtitle">
    
    

<asp:Panel id="panel_grid" runat="server" Height="380px" >
 <asp:Label id="Label1" runat="server" CssClass="homepage_title" Text="Label"></asp:Label>
<asp:GridView id="Gridview1" runat="server" Width="100%" 
    OnPageIndexChanging="Gridview1_PageIndexChanging" AllowPaging="True" CellPadding="4" AutoGenerateColumns="False" 
        GridLines="None" ForeColor="#333333" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" >

<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

<RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
<Columns>
<asp:BoundField DataField="crewcode" HeaderText="Crew Code"></asp:BoundField>
<asp:BoundField DataField="crewname" HeaderText="Crew Name"></asp:BoundField>
<asp:CommandField HeaderText="select" SelectText="Select" ButtonType="Link" ShowSelectButton="true"  />
<%--<asp:TemplateField HeaderText="Send To">
<ItemTemplate>
    <asp:LinkButton runat="server" CommandName="CS">Crew Scheduling</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton runat="server" CommandName="FD">Flight Dispatch</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton runat="server" CommandName="TO">Time Office</asp:LinkButton>
    </ItemTemplate>
</asp:TemplateField>

<asp:BoundField DataField="incharge" HeaderText="Incharge"></asp:BoundField>
<asp:BoundField DataField="location" HeaderText="Location"></asp:BoundField>
<asp:BoundField DataField="station" HeaderText="Station"></asp:BoundField>
<asp:BoundField DataField="region" HeaderText="Region"></asp:BoundField>
<asp:BoundField DataField="contactno" HeaderText="Contact No."></asp:BoundField>
<asp:BoundField DataField="mobileno" HeaderText="Mobile No."></asp:BoundField>
<asp:BoundField DataField="email" HeaderText="e-Mail"></asp:BoundField>
--%></Columns>

<PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<EditRowStyle BackColor="#999999"></EditRowStyle>

<AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
</asp:GridView> 

<asp:SqlDataSource id="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:avsecConnectionString %>">
                </asp:SqlDataSource> 
                </asp:Panel> 
                

    </td>
    </tr>
    </table>
    </ContentTemplate>
        <Triggers>
<%--<asp:AsyncPostBackTrigger ControlID="drp_dept" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="drp_locn" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>--%>
<asp:AsyncPostBackTrigger ControlID="txt_crewname" EventName="TextChanged"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="txt_crewcode" EventName="TextChanged"></asp:AsyncPostBackTrigger>
<asp:AsyncPostBackTrigger ControlID="btn_go" EventName="Click"></asp:AsyncPostBackTrigger>
</Triggers>
    </asp:UpdatePanel>
    </div>
        
   </asp:Panel>    
 <asp:Panel ID="panel2" runat="server" Width="100%" ScrollBars="Auto" BorderStyle="None" Visible="false">
  <div class="pagetext_normal">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
        <ContentTemplate>
    <table style="width:50%; background-color:White; border:1px #DCB065 solid;" align="center" cellpadding="0" cellspacing="0">
        <tr class="homepage_title" style="background-color:#FFA07A; height:20px;">
            <td colspan="4" align="center" class="login_head" >Reports</td></tr>
        <tr class="homepage_subtitle" style="background-color:#FFE0C0; border-bottom:1px #DCB065 solid;  height:10px;">
            <td><asp:Label ID="Label3" runat="server" Text="From Date"></asp:Label></td>
            <td><asp:Label ID="Label4" runat="server" Text="To Date"></asp:Label></td>
            <td><asp:Label ID="Label5" runat="server" Text="Sent To"></asp:Label></td>
            <td></td></tr>
         <tr style=" padding-top:0px; padding-bottom:0px; padding-left:10px; height:40px;">
            <td><asp:TextBox CssClass="txt_class" ID="txtFromDate" runat="server" OnTextChanged="txtFromDate_TextChanged" AutoPostBack="true"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFromDate" Format="dd/MMM/yyyy">
                </cc1:CalendarExtender>
            </td>
            <td><asp:TextBox CssClass="txt_class" ID="txtToDate" runat="server" OnTextChanged="txtToDate_TextChanged" AutoPostBack="true"></asp:TextBox>
            <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtToDate" Format="dd/MMM/yyyy" >
                </cc1:CalendarExtender>
            </td>
            <td>
                <asp:DropDownList ID="ddlSentTo" runat="server">
                    <asp:ListItem Value="FD">Flight Dispatch</asp:ListItem>
                    <asp:ListItem Value="TO">Time Office</asp:ListItem>
                    <asp:ListItem Value="CS">Crew Scheduling</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style=""> <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" />
                </td></tr>
        <tr>
        <td colspan="4">
        <asp:Panel ID="viewdetails" runat="server" Visible="false">
            <div style=" text-align:right;  "><asp:Button ID="btnExcel" runat="server" Text="Save Excel" OnClick="btnExcel_Click" /></div>
           
            <asp:GridView id="Gridview3" runat="server" Width="100%" 
    OnPageIndexChanging="Gridview3_PageIndexChanging" AllowPaging="false" CellPadding="4" AutoGenerateColumns="False" 
        GridLines="None" ForeColor="#333333" >

<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

<RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
<Columns>
<asp:BoundField DataField="crewcode" HeaderText="Crew Code"></asp:BoundField>
<asp:BoundField DataField="crewname" HeaderText="Crew Name"></asp:BoundField>
<asp:BoundField DataField="sendto" HeaderText="Sent To"></asp:BoundField>

</Columns>

<PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<EditRowStyle BackColor="#999999"></EditRowStyle>

<AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
</asp:GridView> 
        </asp:Panel>
        </td>
        </tr>                
        
        </table>
        </ContentTemplate>
        </asp:UpdatePanel>
  </div>          
 </asp:Panel>
    </div>
    </form>
</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         