<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrtion.aspx.cs" Inherits="Registrtion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 286px;
            text-align: right;
            height: 22px;
        }
        .style5
        {
            height: 22px;
            text-align: left;
        }
        .style6
        {
            width: 286px;
            text-align: right;
        }
        .style8
        {
            height: 22px;
            width: 197px;
        }
        .style9
        {
            width: 197px;
        }
        .style10
        {
            width: 286px;
            height: 23px;
        }
        .style11
        {
            width: 197px;
            height: 23px;
        }
        .style12
        {
            height: 23px;
        }
        .style13
        {
            text-align: left;
        }
        .style14
        {
            width: 286px;
            text-align: right;
            height: 26px;
        }
        .style15
        {
            width: 197px;
            height: 26px;
        }
        .style16
        {
            text-align: left;
            height: 26px;
        }
        #Reset1
        {
            height: 23px;
            width: 98px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="margin-left: 280px">
            Registration</h1>
    
    </div>
   
    <table class="style1">
        <tr>
            <td class="style4">
                User Name :</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="User Name Required" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                E - Mail :</td>
            <td class="style9">
                <asp:TextBox ID="TextBoxMail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxMail" ErrorMessage="E-Mail Required" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Please enter Valid E-Mail" ForeColor="#FF3300" 
                    ControlToValidate="TextBoxMail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Password :</td>
            <td class="style9">
                <asp:TextBox ID="TextBoxPWD" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxPWD" ErrorMessage="Password Required" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Confirm Password :</td>
            <td class="style9">
                <asp:TextBox ID="TextBoxRpwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxRpwd" ErrorMessage="Confirm Password Required" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPWD" ControlToValidate="TextBoxRpwd" 
                    ErrorMessage="Passwords are not Matching" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Country :</td>
            <td class="style15">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px" 
                    Height="16px">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>UAE</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownListCountry" ErrorMessage="Select Country" 
                    ForeColor="#FF3300" InitialValue="Select Country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" BackColor="White" Text="Submit" 
                    Height="22px" onclick="Button1_Click" Width="95px" />
                <input id="Reset1" type="reset" value="Reset Values" 
                    onclick="return Reset1_onclick()" style="background-color: #FFFFFF" /></td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
            </td>
            <td class="style12">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
