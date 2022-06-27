<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link type="text/css" rel="stylesheet" href="all.css">
</style>
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
                        <li> <a class="menu-hover"href="orgadmin.html">Home</a></li>
                        <li> <a class="menu-hover"href="/">booked data</a></li>
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
            <th><label><%response.write(RS("name"))%></label></th>
            
        </tr>
        <tr>
        <td><img src="<%response.write(RS("image"))%>  ">
        <label><%response.write(RS("data"))%></label></td>
        </tr>
        
        <br>
        <br>
        
    </table>
    
    <%    RS.movenext
    wend
%>
</body>
</html>