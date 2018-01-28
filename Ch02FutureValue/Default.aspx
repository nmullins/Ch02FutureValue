<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ch02FutureValue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Chapter 2: Future Value</title>
    <style type="text/css">
        .style1 {
            width: 150px;
            height: 65px;
        }
        .style2 {
            width: 100%;
        }
        .style3 {
            width: 140px;
        }
    </style>
</head>
<body>
    <img src="Images/MurachLogo.jpg" alt="Murach Logo" />
    <h1>401K Future Value</h1>
    <form id="form1" runat="server">
        <div>        
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Monthly investment</td>
                    <td>
                        <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" Width="106px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Annual interest rate</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server" Width="100px">3.0</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Number of years</td>
                    <td>
                        <asp:TextBox ID="txtYears" runat="server" Width="106px">10</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Future value</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblFutureValue" runat="server" Font-Bold="True" Text="[lblFutureValue]" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="100px" OnClick="btnCalculate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="100px" OnClick="btnClear_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="txtInterestRate" 
                Display="Dynamic" 
                ErrorMessage="Interest rate is required." 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator 
                ID="RangeValidator1" 
                runat="server" 
                ControlToValidate="txtInterestRate" 
                Display="Dynamic" 
                ErrorMessage="Interest rate must range from 1 to 20." 
                ForeColor="Red" 
                MaximumValue="20" 
                MinimumValue="1" 
                Type="Double">
            </asp:RangeValidator>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="txtYears" 
                Display="Dynamic" 
                ErrorMessage="Number of years is required." 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator 
                ID="RangeValidator2" 
                runat="server" 
                ControlToValidate="txtYears" 
                Display="Dynamic" 
                ErrorMessage="Years must range from 1 to 45." 
                ForeColor="Red" 
                MaximumValue="45" 
                MinimumValue="1" 
                Type="Integer">
            </asp:RangeValidator>
        </div>
    </form>
</body>
</html>
