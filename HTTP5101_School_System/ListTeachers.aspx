<%@ Page Title="Teachers" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListTeachers.aspx.cs" Inherits="HTTP5101_School_System.ListTeachers" %>

<asp:Content ID="teachers_list" ContentPlaceHolderID="body" runat="server">
    <h1>Teachers</h1>
    <div id="teacher_nav">
        <asp:label for="teacher_search" runat="server"></asp:label>
        <asp:TextBox ID="teacher_search" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="Search"/>
        <div id="sql_debugger" runat="server"></div>        
    </div>
    <div class="edit-buttons">
        <asp:Button class="button" runat="server" text="Add New Teacher" href="\TeacherCRUD.aspx"/>
        <asp:Button class="button" runat="server" text="Update Teacher Information" href="\TeacherCRUD.aspx"/>   
    </div>
    <div class="_table" runat="server">
        <div class="listitem">            
            <div class="col5">FIRST NAME</div>
            <div class="col5">LAST NAME</div>
            <div class="col5">EMPLOYEE NUMBER</div>
            <div class="col5">HIRE DATE</div>
            <div class="col5last">SALARY</div>
        </div>
        <div id="teachers_result" runat="server">

        </div>
    </div>
    
</asp:Content>
