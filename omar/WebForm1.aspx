<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="omar.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

    <table cellpadding="6" border="0">
        <tr>
            <td rowspan="10" style="border:solid 1px Gray">
                <p>
                    <asp:label id="Label1" 
                        Text="Border Properties Example" Runat="server">
                        Label Styles
                    </asp:label>
                </p>
                <p>
                    <asp:button id="Button1" runat="server" 
                        Text="Button Styles">
                    </asp:button>
                </p>
                <p>
                    <asp:listbox id="ListBox1" Runat="server">
                        <asp:ListItem Value="0" Text="List Item 0">
                        </asp:ListItem>
                        <asp:ListItem Value="1" Text="List Item 1">
                        </asp:ListItem>
                        <asp:ListItem Value="2" Text="List Item 2">
                        </asp:ListItem>
                    </asp:listbox>
                </p>
                <p>
                    <asp:textbox id="TextBox1" 
                        Text="TextBox Styles" Runat="server">
                    </asp:textbox>
                </p>
                <p>
                    <asp:table id="Table1" Runat="server">
                        <asp:TableRow>
                            <asp:TableCell Text="(0,0)"></asp:TableCell>
                            <asp:TableCell Text="(0,1)"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Text="(1,0)"></asp:TableCell>
                            <asp:TableCell Text="(1,1)"></asp:TableCell>
                        </asp:TableRow>
                    </asp:table>
                </p>
            </td>
            <td align="right">
                <asp:Label ID="Label2" runat="server" 
                    AssociatedControlID="borderColorList" 
                    Text="Border Color:">
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label3" Runat="server" 
                    AssociatedControlID="borderStyleList"
                    Text="Border Style:">
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label4" Runat="server" 
                    AssociatedControlID="borderWidthList"
                    Text="Border Width">
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label5" Runat="server" 
                    AssociatedControlID="backColorList"
                    Text="Back Color:">
                </asp:Label>
            </td>
            <td>
                <asp:DropDownList id="backColorList" 
                    Runat="server" AutoPostBack="true"
                    OnSelectedIndexChanged="ChangeBackColor">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label6" Runat="server" 
                    AssociatedControlID="foreColorList"
                    Text="Foreground Color:">
                </asp:Label>
            </td>
            <td>
                <asp:dropdownlist id="foreColorList" 
                    Runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="ChangeForeColor">
                </asp:dropdownlist>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label7" Runat="server" 
                    AssociatedControlID="fontNameList"
                    Text="Font Name:">
                </asp:Label>
            </td>
            <td>
                <asp:dropdownlist id="fontNameList" 
                    Runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="ChangeFont">
                </asp:dropdownlist>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label8" Runat="server" 
                    AssociatedControlID="fontSizeList"
                    Text="Font Size:">
                </asp:Label>
            </td>
            <td>
                <asp:dropdownlist id="fontSizeList" 
                    Runat="server" AutoPostBack="True" 
                    OnSelectedIndexChanged="ChangeFontSize">
                </asp:dropdownlist>
            </td>
        </tr>
    </table>

        </div>
    </form>
</body>
</html>
