<%
Response.Write(Application("users"))
for each x in Application.contents
Response.Write(x & "=" & Application.contents(x))
next
%>