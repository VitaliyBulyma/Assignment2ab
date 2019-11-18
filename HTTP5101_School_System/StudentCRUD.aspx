<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="StudentCRUD.aspx.cs" Inherits="HTTP5101_School_System.StudentCRUD" %>




<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">


    <section>
        <h1>Student Information Form</h1>
    </section>
  <%--<section>
        <h2>Student ID</h2>
        <asp:TextBox runat="server" ID="student_idnumber" placeholder="e.g. 1" ></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  
            ControlToValidate="student_idnumber" 
            ValidationExpression="\d*" 
            ErrorMessage="Please enter a valid ID Number (e.g. 123)."></asp:RegularExpressionValidator> 
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your ID Number."
            ControlToValidate="student_idnumber"></asp:RequiredFieldValidator>
    </section>--%>

    <section>
        <h2>First Name:</h2>
        <asp:TextBox runat="server" ID="student_fname" placeholder="e.g. John"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your First name"
            ControlToValidate="student_fname"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Last Name:</h2>
        <asp:TextBox runat="server" ID="student_lname" placeholder="e.g. Smith"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your Last name"
            ControlToValidate="student_lname"></asp:RequiredFieldValidator>
    </section>

    
    <section>
        <h2>Student Number</h2>
        <asp:TextBox runat="server" ID="student_studentnumber" placeholder="N0000" ></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  
            ControlToValidate="student_studentnumber" 
            ValidationExpression="[N]\d{4}" 
            ErrorMessage="Please enter a valid Student Number (ex. N0000)."></asp:RegularExpressionValidator> <%--https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your Student Number."
            ControlToValidate="student_studentnumber"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Your Enrollment Date</h2>
        <asp:TextBox runat="server" ID="student_enrollmentdate" placeholder="YYYY-MM-DD"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true" 
            ControlToValidate="student_enrollmentdate" 
            ValidationExpression="^\d{4}-((0\d)|(1[012]))-(([012]\d)|3[01])$" 
            ErrorMessage="Please enter a valid Enrollment date (yyyy-mm-dd)"></asp:RegularExpressionValidator><%--https://stackoverflow.com/questions/5247219/regular-expression-to-detect-yyyy-mm-dd--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your Enrollment Date"
            ControlToValidate="student_enrollmentdate"></asp:RequiredFieldValidator>
    </section>
    <section>
        <asp:ValidationSummary runat="server" ShowSummary="true" />
    </section>
    <section id="confirmbox" runat="server">
    </section>
    <span>
        <input type="submit" value="Add/Update" />
    </span>
    <span>
        <input type="submit" value="Delete" />
    </span>


</asp:Content>
