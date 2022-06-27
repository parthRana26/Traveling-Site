var express = require('express');
var app = express();

var bodyparser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:
}))
app.get('/',function(req,res)
{
    res.sendfile(__dirname+'1.html');
})

app.post('/',function(req,res))

app.listen(7000);
 