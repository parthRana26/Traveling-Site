<%
    Dim obj, name, email, mobile, country, persons, bookfor
    set obj = createObject("ADODB.connection")
    response.write("Recording Data <br>")
    obj.open"DSN=DB"
    name = request.form("name")
    email = request.form("email")
    mobile = request.form("mobile")
    country = request.form("country")
    persons = request.form("persons")
    bookfor = request.form("bookfor")
    obj.execute("insert into Data values('"&name&"','"&email&"',"&mobile&",'"&country&"',"&persons&",'"&bookfor&"')")
    response.write("Data recorded")
%>
