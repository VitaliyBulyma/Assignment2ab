<%@ Page Title="Class" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowClass.aspx.cs" Inherits="HTTP5101_School_System.ShowClass" %>


<asp:Content ID="class_view" ContentPlaceHolderID="body" runat="server">


    <div id="class_class" runat="server">
        <h2>Details for <span id="class_title_name" runat="server"></span></h2>
        Class Code: <span id="class_code" runat="server"></span><br />
        Teacher ID: <span id="teacher_id" runat="server"></span><br />
        Stat Date: <span id="start_date" runat="server"></span><br />
        Finish Date: <span id="finish_date" runat="server"></span><br />
        Class Name: <span id="class_name" runat="server"></span><br />
    </div>

    <span>
        <a href="ClassCrud.aspx"><input type="button" value="Update" /></a>
        
    </span>
    <span>
        <a href="ClassCrud.aspx"><input type="button" value="Delete" /></a>
    </span>

</asp:Content>
