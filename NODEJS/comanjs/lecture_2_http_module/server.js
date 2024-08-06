const  http = require('http')

const startServer = (port , text) =>{
    
    const server = http.createServer((req , res) =>{
        res.setHeader('content-text' , "biden");
        res.setHeader('text' , 'paragraph');
        res.end(text)
    })

    server.listen(port ,() =>{
        console.log(`server start at http://localhost:${port}`);
    })
}

startServer(1111 , 'hello NodeJS');
startServer(2222 , 'hello Jsvascript');
startServer(3333 , 'hello ReactJs');
startServer(4444 , 'hello MongoDB');
startServer(5555 , 'hello HTML');

