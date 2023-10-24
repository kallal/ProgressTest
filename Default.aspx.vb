Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

        Button2.Visible = True
        Dim MyDivBut1 As HtmlGenericControl = UpdateProgress1.FindControl("But1Stuff")
        Dim MyDivBut2 As HtmlGenericControl = UpdateProgress1.FindControl("But2Stuff")

        ' hide butt1 one area (but this ONLY takes effect AFTER this code runs!!!
        MyDivBut1.Visible = False
        MyDivBut2.Visible = True    ' will show, but ONLY during progress area showing....

        ' fake a 4 second wait
        System.Threading.Thread.Sleep(4000)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)

        ' fake a 4 second wait
        System.Threading.Thread.Sleep(4000)

    End Sub




End Class