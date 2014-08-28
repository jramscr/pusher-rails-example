<%
dim current_message
current_message=Request.Form("chat_widget_form")
If chat_widget_form<>"" Then
      Response.Write("Hello " & fname & "!<br>")
      Response.Write("How are you today?")
End If
%>