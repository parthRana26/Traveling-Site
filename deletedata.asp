<%
    Dim obj
    set obj = createObject("ADODB.connection")
    obj.open"DSN=DB"
    email = request.form("email")
    obj.execute("delete from Data where  mail='"&email&"'")
    response.write("Deleted record id" &email)
%>