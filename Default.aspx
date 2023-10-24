<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="ProgressTest._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" Text="Test Button 1"
                    OnClick="Button1_Click"
                    />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Test button 2" Visible="false"
                    OnClick="Button2_Click"
                    />
                <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="100">
                    <ProgressTemplate>
                    <h3>Content here ONLY shows during server processing</h3>

                    <div id="But1Stuff" runat="server">
                        <h3>Please wait button 1 code running</h3>
                        <img src="Content/wait2.gif"  width="64"/>
                    </div>

                    <div id="But2Stuff" runat="server" visible="false">
                        <h3>Please wait button 2 code running</h3>
                        <img src="Content/wait2.gif"  width="64"/>
                    </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>               

        </asp:UpdatePanel>



    </form>
</body>
</html>
