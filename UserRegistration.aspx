<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultSite.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="aspwssandbox.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentArea" runat="server">

    <div class="center">
        <h2>Simple User Registration Form</h2>
        <table>

            <tr>
                <td>First Name: 
                     <asp:RequiredFieldValidator
                         ID="RequiredFieldValidator1" ControlToValidate="firstName" ForeColor="red"
                         Text="*" ErrorMessage="Enter first name!" ValidationGroup="AllValidators" Display="Dynamic"
                         runat="server"></asp:RequiredFieldValidator>
                </td>

                <td>
                    <asp:TextBox ID="firstName" runat="server"></asp:TextBox></td>

            </tr>
            <tr>
                <td>Last Name: 
                     <asp:RequiredFieldValidator
                         ID="RequiredFieldValidator2"
                         ControlToValidate="lastName"
                         ForeColor="red"
                         Text="*"
                         ErrorMessage="Enter last name!"
                         ValidationGroup="AllValidators"
                         Display="Dynamic"
                         runat="server">

                     </asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="lastName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>email: 
                       <asp:RequiredFieldValidator
                        ID="RequiredEmailValidator"
                        ControlToValidate="email"
                        ForeColor="red"
                        Text="*"
                        ErrorMessage="Invalid Email Format!"
                        ValidationGroup="AllValidators"
                        Display="Dynamic"
                        runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexEmailValid"
                        runat="server"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="email"
                        Text="*"
                        ForeColor="Red"
                        ValidationGroup="AllValidators"
                        ErrorMessage="Invalid Email Format!">
                    </asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Address:
                    <asp:RequiredFieldValidator
                        ID="RequiredAddressValidator"
                        ControlToValidate="address"
                        ForeColor="red"
                        Text="*"
                        ErrorMessage="Enter address!"
                        ValidationGroup="AllValidators"
                        Display="Dynamic"
                        runat="server">
                    </asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="address" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>ZIP: 
                      <asp:RequiredFieldValidator
                        ID="RequiredZipValidator"
                        ControlToValidate="zip"
                        ForeColor="red"
                        Text="*"
                        ErrorMessage="Enter a valid US ZIP code!"
                        ValidationGroup="AllValidators"
                        Display="Dynamic"
                        runat="server">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator
                        ID="txtZIP_validation" runat="server"
                        ControlToValidate="zip"
                        Text="*"
                        ForeColor="red"
                        Display="Dynamic"
                        ValidationGroup="AllValidators"
                        ErrorMessage="Enter a valid US ZIP code!"
                        ValidationExpression="\d{5}(-\d{4})?">
                    </asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:TextBox ID="zip" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>SSN: 
                    <asp:RequiredFieldValidator
                        ID="RequiredSSNValidator"
                        ControlToValidate="SSN"
                        ForeColor="red"
                        Text="*"
                        ErrorMessage="Input valid U.S. Social Security Number! "
                        ValidationGroup="AllValidators"
                        Display="Dynamic"
                        runat="server">
                    </asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator
                         ID="SSNRegexValidator"
                         runat="server"
                         Text="*"
                         ForeColor="Red"
                         ValidationGroup="AllValidators"
                         ValidationExpression="\d{3}-\d{2}-\d{4}"
                         ControlToValidate="SSN"
                         ErrorMessage="Input valid U.S. Social Security Number!">
                     </asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:TextBox ID="SSN" runat="server"></asp:TextBox></td>
            </tr>

        </table>
        <br />
        <asp:ValidationSummary DisplayMode="List"
            ValidationGroup="AllValidators"
            ForeColor="Red"
            runat="server" />
        <br />
        <asp:Button Text="Reset" ID="Button1" OnClick="backBtn_Click" runat="server" />
        <asp:Button Text="Submit" ID="Button2" OnClick="submitBtn_Click" ValidationGroup="AllValidators" runat="server" />
    </div>
</asp:Content>
