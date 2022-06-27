<%
    Dim obj
    set obj = createObject("ADODB.connection")
    response.write("Creating Table <br>")
    obj.open"DSN=DB"
    obj.execute("create table stu(id int(4),name varchar(20))")
    response.write("Table Createted")
    'id = request.querystring("txtid")
    'name = request.querystring("txtname")
    'obj.execute("insert into stu values("&id&",'"&name&"')")
%>

