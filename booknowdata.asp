<html>
<head>
 <link type="text/css" rel="stylesheet" href="bookdata.css">
</head>
<body>
    <nav>
        <div class="container">
            <div class="menu-par">
                <div class="logo-par">
                    <a href="org.html">
                        <h2>Travel</h2>
                    </a>
                </div>
                <div class="nav">
                    <ul>
                        <li> <a class="menu-hover"href="deletedata.html">delete data</a></li>
                        <li> <a class="menu-hover"href="orgadmin.html">Home</a></li>
                        <li> <a class="menu-hover"href="booknowdata.asp">booked data</a></li>
                        <li> <a class="menu-hover"href="galleryadmin.html">Gallery</a></li>
                        <li> <a class="menu-hover"href="holiadmin.html">Holiday</a></li>
                        <li> <a class="menu-hover"href="blogadmin.asp">Blog</a></li>
                        <li>  <a class="menu-hover"href="update.html">update blog</a></li>
                        <li>  <a class="menu-hover"href="delete.html">delete blog</a></li>
                        <li>  <a class="menu-hover"href="addblog.html">add new blog</a></li>
                          </div></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <h1><br><br></h1>
<%
    Dim obj
    set obj = createObject("ADODB.connection")
    response.write("<h2>Booked Data</h2> <br>")
    obj.open"DSN=DB"
    set RS = server.createObject("ADODB.RecordSet")
    sql = "select * from data"
    RS.open sql, obj
    %>
    <%
    while not RS.eof
    %>
        <label>
                    Name :
            <%response.write(RS("Name"))%>
            </label><label>
                    E-Mail :
            <%response.write(RS("Mail"))%>
            </label><label>
            ContactNo :
            <%response.write(RS("ContactNo"))%>
            </label><label>
            Location :
            <%response.write(RS("Location"))%>
            </label><label>
            Persons :
            <%response.write(RS("Persons"))%>
            </label><label>
            BookFor :
            <%response.write(RS("BookFor"))%>
            </label>
            <h1><br><br></h1>
    

    <%    RS.movenext
    wend
%>

</body>
</html>
<!--create table Data(Name varchar(30), Mail varchar(30) primary key, ContactNo int(10), Location varchar(15), Persons int(2), BookFor varchar(15));-->