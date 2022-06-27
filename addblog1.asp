<%
    dim img,place,name,data
    name=request.form("name")
    img=request.form("image")
    data=request.form("data")
    
    Dim dbm1
    Set dbm1 = createobject("ADODB.Connection")
dbm1.open "DSN=db"
response.write ("connected")
' <button formaction="org.html">Submit to another page</button>
dbm1.execute("insert into blog values('"&name&"','"&img&"','"&data&"')")
response.write ("<br>your data added sucessfully")
%>