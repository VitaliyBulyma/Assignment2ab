<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TeacherCrud.aspx.cs" Inherits="HTTP5101_School_System.TeacherCrud" %>



<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    

     <section>
        <h1>Teacher Information Form</h1>
    </section>
   <section>
        <h2>Teacher ID</h2>
        <asp:TextBox runat="server" ID="teacher_idnumber" placeholder="e.g. 1" ></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  
            ControlToValidate="teacher_idnumber" 
            ValidationExpression="\d*" 
            ErrorMessage="Please enter a valid ID Number (e.g. 123)."></asp:RegularExpressionValidator> <%--https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your ID Number."
            ControlToValidate="teacher_idnumber"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>First Name:</h2>
        <asp:TextBox runat="server" ID="teacher_fname" placeholder="e.g. John"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your First name"
            ControlToValidate="teacher_fname"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Last Name:</h2>
        <asp:TextBox runat="server" ID="teacher_lname" placeholder="e.g. Smith"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your Last name"
            ControlToValidate="teacher_lname"></asp:RequiredFieldValidator>
    </section>

    
    <section>
        <h2>Employee Number</h2>
        <asp:TextBox runat="server" ID="teacher_employeenumber" placeholder="T000" ></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  
            ControlToValidate="teacher_employeenumber" 
            ValidationExpression="[T]\d{3}" 
            ErrorMessage="Please enter a valid Employee Number (e.g. T000)."></asp:RegularExpressionValidator> <%--https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your Employee Number."
            ControlToValidate="teacher_employeenumber"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Hire Date</h2>
        <asp:TextBox runat="server" ID="teacher_hiredate" placeholder="YYYY-MM-DD"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true" 
            ControlToValidate="teacher_hiredate" 
            ValidationExpression="^\d{4}-((0\d)|(1[012]))-(([012]\d)|3[01])$" 
            ErrorMessage="Please enter a valid Enrollment date (yyyy-mm-dd)"></asp:RegularExpressionValidator><%--https://stackoverflow.com/questions/5247219/regular-expression-to-detect-yyyy-mm-dd--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter Hire Date"
            ControlToValidate="teacher_hiredate"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Salary</h2>
        <asp:TextBox runat="server" ID="teacher_salary" placeholder="e.g. 12.34" ></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  
            ControlToValidate="teacher_salary" 
            ValidationExpression="^[1-9]\d*(\.\d+)?$" 
            ErrorMessage="Please enter a valid salary (e.g. 12.34)."></asp:RegularExpressionValidator> <%--https://stackoverflow.com/questions/2811031/decimal-or-numeric-values-in-regular-expression-validation--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your Salary."
            ControlToValidate="teacher_salary"></asp:RequiredFieldValidator>
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
