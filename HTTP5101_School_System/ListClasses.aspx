<%@ Page Title="Classes" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListClasses.aspx.cs" Inherits="HTTP5101_School_System.ListClasses" %>



<asp:Content ID="classes_list" ContentPlaceHolderID="body" runat="server">


    <h1>Classes</h1>
    <div id="class_nav">
        <asp:label for="class_search" runat="server"></asp:label>
        <asp:TextBox ID="class_search" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="Search"/>
        <div id="sql_debugger" runat="server"></div>      
    </div>

    <div class="_table" runat="server">
        <div class="listitem">
            <div class="col5">CLASS CODE</div>
            <div class="col5">TEACHER ID</div>
            <div class="col5">START DATE</div>
            <div class="col5">FINISH DATE</div>
            <div class="col5last">CLASS NAME</div>
        </div>
        <div id="classes_result" runat="server">

        </div>
    </div>


</asp:Content>
