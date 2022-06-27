<%
    Dim obj
    set obj = createObject("ADODB.connection")
    obj.open"DSN=DB"
    name = request.form("name")
    obj.execute("delete from blog where  name='"&name&"'")
    response.write("Deleted record id" &name)
%>