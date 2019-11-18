<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ClassCrud.aspx.cs" Inherits="HTTP5101_School_System.ClassCrud" %>



<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">


    <section>
        <h1>Classes Information Form</h1>
    </section>
    <section>
        <h2>Class ID</h2>
        <asp:TextBox runat="server" ID="class_idnumber" placeholder="e.g. 1"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"
            ControlToValidate="class_idnumber"
            ValidationExpression="\d*"
            ErrorMessage="Please enter a valid Class ID Number (e.g. 123)."></asp:RegularExpressionValidator>
        <%--https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter Class ID Number."
            ControlToValidate="class_idnumber"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Class Code</h2>
        <asp:TextBox runat="server" ID="class_classcode" placeholder="e.g. 1"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"
            ControlToValidate="class_classcode"
            ValidationExpression="\w{4}\d{4}"
            ErrorMessage="Please enter a valid Class Code (e.g. http5101)."></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter Class Code."
            ControlToValidate="class_classcode"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Teacher ID</h2>
        <asp:TextBox runat="server" ID="teacher_idnumber" placeholder="e.g. 1"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"
            ControlToValidate="teacher_idnumber"
            ValidationExpression="\d*"
            ErrorMessage="Please enter a valid ID Number (e.g. 123)."></asp:RegularExpressionValidator>
        <%--https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your ID Number."
            ControlToValidate="teacher_idnumber"></asp:RequiredFieldValidator>
    </section>

    <section>
        <h2>Start Date</h2>
        <asp:TextBox runat="server" ID="class_startdate" placeholder="YYYY-MM-DD"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"
            ControlToValidate="class_startdate"
            ValidationExpression="^\d{4}-((0\d)|(1[012]))-(([012]\d)|3[01])$"
            ErrorMessage="Please enter a valid start date (yyyy-mm-dd)"></asp:RegularExpressionValidator><%--https://stackoverflow.com/questions/5247219/regular-expression-to-detect-yyyy-mm-dd--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter Start Date"
            ControlToValidate="class_startdate"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>End Date</h2>
        <asp:TextBox runat="server" ID="class_enddate" placeholder="YYYY-MM-DD"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"
            ControlToValidate="class_enddate"
            ValidationExpression="^\d{4}-((0\d)|(1[012]))-(([012]\d)|3[01])$"
            ErrorMessage="Please enter a valid End date (yyyy-mm-dd)"></asp:RegularExpressionValidator><%--https://stackoverflow.com/questions/5247219/regular-expression-to-detect-yyyy-mm-dd--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter End Date"
            ControlToValidate="class_enddate"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Class Name:</h2>
        <asp:TextBox runat="server" ID="class_name" placeholder="e.g. Web Development"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter class name"
            ControlToValidate="class_name"></asp:RequiredFieldValidator>
    </section>

    <section>
        <asp:ValidationSummary runat="server" ShowSummary="true" />
    </section>
    <section id="confirmbox" runat="server">
    </section>
    <span>
        <input type="button" value="Update" />
        
    </span>
    <span>
        <input type="button" value="Delete" />
    </span>


</asp:Content>
