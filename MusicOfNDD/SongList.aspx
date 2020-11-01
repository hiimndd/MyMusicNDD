<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SongList.aspx.cs" Inherits="MusicOfNDD.SongList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
            .auto-style3 {
                text-align: center;
            }
            .auto-style4 {
                width: 100%;
            }
            .auto-style6 {
                color: #800000;
            }
            .auto-style7 {
                color: #006600;
            }
            .auto-style8 {
                margin-left: 0px;
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

            .backgroud {
                background-image:ImageUrl="~/images/84380.png";
            }
            #form1{
                margin : 0 auto;
            }
            .body{
                
                background-image:url('../images/70172.jpg');
                background-size:cover;
            

                
                box-sizing:border-box;
                padding:0;
                margin:0;
            }
        </style>
</head>
<body class="body">
        <div class="nav">
                    <div class="nav__logo">
                        <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/images/logo-mp-3.svg" Width="120px" />
                    </div>
                    <ul class="nav__item">
                        <li>
                            <a href="">Trang Chủ</a>
                        </li>
                        <li>
                            <a href="AddMusic.aspx">Thêm bài hát</a>
                        </li>
                    </ul>
                </div>
        <form id="form1" runat="server" >
        <div class="content" style="text-align:center">
            <table class="auto-style4">
                      <div class="backgroud">
                            <asp:Image ID="Image2" runat="server" Height="424px" ImageUrl="~/images/truedamageys.jpg" Width="100%"/>
                      </div>
                    <tr>
                    <td>&nbsp;</td>
                    <td aria-checked="mixed" class="auto-style3">
                      
                        <strong>
                        <br />
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="71px" DataKeyNames="MaBH" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True" CssClass="auto-style8">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Code">
                        <EditItemTemplate>
                            <center>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaBH") %>'></asp:Label>
                            </center>
                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            
                            <center>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaBH") %>'></asp:Label>
                            </center>
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Audios">
                                
                        <ItemTemplate>
                            <center>
                                <object type="application/x-shockwave-flash" data="dewplayer.swf?mp3=SoundHandler.ashx?Id=<%# Eval("MaBH") %>" width="200" height="20" id="dewplayer" name="dewplayer">
                                <param name="wmode" value="transparent" />
                                <param name="movie" value="dewplayer.swf?mp3=SoundHandler.ashx?Id=<%# Eval("MaBH") %>" />
                                <param name="flashvars" value="dewplayer.swf?mp3=SoundHandler.ashx?Id=<%# Eval("MaBH") %>" />
                                </object>

                            </center>

                            
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name Of The Songs">
                        <EditItemTemplate>
                            <center>
                                <asp:TextBox ID="txtTenBH" runat="server" Text='<%# Eval("TenBH") %>'></asp:TextBox>
                            </center>
                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <center>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("TenBH") %>'></asp:Label>
                            </center>
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Articts">
                        <EditItemTemplate>
                            <center>
                                <asp:TextBox ID="txtTenCS" runat="server" Text='<%# Eval("TenCS") %>'></asp:TextBox>
                            </center>
                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <center>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("TenCS") %>'></asp:Label>
                            </center>
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Function">
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImageButton4" runat="server" CommandName="update" Height="30px" ImageUrl="~/images/unnamed.png" />
                            <asp:ImageButton ID="ImageButton5" runat="server" CommandName="cancel" Height="30px" ImageUrl="~/images/21-512.png" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="edit" Height="30px" ImageUrl="~/images/84380.png" />
                            <asp:ImageButton ID="ImageButton3" runat="server" CommandName="delete" Height="30px" ImageUrl="~/images/61848.png" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <br />
                        </td>
                    <td class="auto-style3">
                       <%-- <asp:ImageButton ID="ImageButton6" runat="server" BackColor="#006666" Height="137px" ImageUrl="~/images/add_song_media_button_music_player-512.png" OnClick="ImageButton6_Click" Width="186px" />--%>
                      
                        <strong>
                        <asp:Label ID="lbSecess" runat="server" CssClass="auto-style7"></asp:Label>
                        <br />
                        <asp:Label ID="lbErrors" runat="server" CssClass="auto-style6"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

    
        </form>
        
    </body>
</html>
