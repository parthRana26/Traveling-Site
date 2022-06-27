<html>
<head>
 <link type="text/css" rel="stylesheet" href="all.css">
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
                    <li> <a class="menu-hover"href="org.html">Home</a></li>
                    <li> <a class="menu-hover"href="booknow.html">Book now</a></li>
                    <li> <a class="menu-hover"href="gallery.html">Gallery</a></li>
                    <li> <a class="menu-hover"href="holi.html">Holiday</a></li>
                    <li> <a class="menu-hover"href="blog.asp">Blog</a></li>
        
                </ul>
            </div>
        </div>
    </div>
</nav>
    <h1><br><br></h1>
<%
    Dim obj
    set obj = createObject("ADODB.connection")
    response.write("<h2>Blog section</h2> <br>")
    obj.open"DSN=DB"
    set RS = server.createObject("ADODB.RecordSet")
    sql = "select * from blog"
    RS.open sql, obj
    %>
    <%
    while not RS.eof
    %>

    <table>
      <tr>
            <th><%response.write(RS("name"))%></th>
            
        </tr>
        <tr>
        <td><img src="<%response.write(RS("image"))%>  ">
        <%response.write(RS("data"))%></td>
        </tr>
        
        <br>
        <br>
        
    </table>
    <%    RS.movenext
    wend
%>
</body>
</html>