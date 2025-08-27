let port = process.env.PORT?process.env.PORT:80;

let http = require('http');
http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end('Welkom to todo app');
}).listen(port);

console.log( "Server started in port " + port );