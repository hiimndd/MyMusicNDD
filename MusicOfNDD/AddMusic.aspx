<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMusic.aspx.cs" Inherits="MusicOfNDD.AddMusic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 62px;
        }
        .auto-style2 {
            height: 62px;
            width: 498px;
        }
        .auto-style4 {
            height: 62px;
            width: 356px;
        }
        .auto-style5 {
            width: 356px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 100%;
            height: 202px;
        }
        .auto-style13 {
            width: 499px;
        }
        .auto-style21 {
            height: 26px;
            width: 499px;
            text-align: center;
        }
        .auto-style22 {
            height: 26px;
        }
        .auto-style23 {
            height: 26px;
            width: 549px;
        }
        .auto-style25 {
            width: 549px;
            text-align: center;
        }
        .auto-style26 {
            width: 498px;
            text-align: right;
        }
        .auto-style27 {
            text-align: center;
        }
         .nav {
                display:flex;
                align-items:center;
                height:80px;
                padding: 0 2rem;
                justify-content:space-between;
                background:black;
            } 
            .nav__logo {}
            .nav__logo  a {
                background-image:url(~/images/logo-mp-3.svg);
                background-repeat: no-repeat;
                display: block;
                width: 100px;
                height: 32px;
                background-size: cover;
                margin-top: 19px;
                z-index: 2;
                text-decoration:none;
            }
            .nav__item {
               display:flex;
               justify-content:space-between;
               list-style:none;
            }
            .nav__item  li {
                margin-left:20px;
            }
            .nav__item  li  a {
                color:white;
                font-weight:bold;
                text-decoration:none;

            }
            .body {
              /*//cho nay la backgrooud*/
             background-image:url('../images/70172.jpg');
             background-size:cover;
             box-sizing:border-box;
             margin:0;
             padding:0;
               
            }
        .auto-style28 {
            color: #FFFFFF;
        }
        .auto-style29 {
            color: #009933;
        }
        .auto-style30 {
            margin-left: 38px;
            font-weight: bold;
            color: #FFFFFF;
            margin-top: 0px;
        }
        .auto-style31 {
            width: 499px;
            text-align: right;
            height: 23px;
        }
        .auto-style32 {
            height: 23px;
            width: 549px;
        }
        .auto-style33 {
            height: 23px;
        }
        .auto-style34 {
            margin-left: 78px;
        }
    </style>
</head>
<body>
    <body  class="body">
    <div class="nav">
                    <div class="nav__logo">
                        <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/images/logo-mp-3.svg" Width="120px" />
                    </div>
                    <ul class="nav__item">
                        <li>
                            <a href="SongList.aspx">Trang Chủ</a>
                        </li>
                       
                    </ul>
                </div>
    <form id="form1" runat="server">
        <div class="auto-style27">
        <div class="auto-style27">
    <div class="auto-style27">
    
    </div>
        <table class="auto-style6">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Song Name:" CssClass="auto-style28"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtsongname" runat="server" Width="422px" CssClass="auto-style34"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <strong>
                    <asp:Label runat="server" Text="Singer:" CssClass="auto-style28"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtsinger" runat="server" Width="424px" CssClass="auto-style34"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style7">
            <tr>
                <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style23">
        &nbsp;&nbsp;&nbsp;&nbsp;
            
                </td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="File:" CssClass="auto-style28"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="File:" CssClass="auto-style28"></asp:Label>
                    </strong></td>
                <td class="auto-style32"><strong>
        <asp:FileUpload ID="FileUploadSound" runat="server" Width="435px" CssClass="auto-style30" Height="30px" />
                    </strong></td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style25">
                    <strong>
        <asp:Label ID="LabelErorr" runat="server" Text="" CssClass="auto-style29"></asp:Label>
    
                    <br />
          <asp:ImageButton ID="ImageButton2" runat="server" Height="71px" ImageUrl="~/images/savebutton1.jpg" OnClick="ImageButton2_Click" Width="252px" />
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        </div>
        </div>
    </form>
</body>
</body>
</html>
