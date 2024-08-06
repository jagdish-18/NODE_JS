 // http module
  // 1 
//  const http1 = require('http');

//  const server1 = http1.createServer((req , res) =>{
//     res.setHeader('content-type' , 'paragraph');
//     res.setHeader(`dummy` , 'dummy value')
//     res.end("welcome to nodejs");
//  })


//  server1.listen(1234 , ()=>{
//     console.log(`Server start at http://localhost:1234`);
//  });

 //2 server

// const http2 = require('http');

// const server2 = http2.createServer((req , res) => {
//     res.setHeader('text' , 'para');
//     res.end('<h1>Hello Node Js</h1>')
// })

// server2.listen(2000, () =>{
//     console.log(`server start at http://localhost:2000`);
// })

// 3

// const http3 = require('http')

// const server3 = http3.createServer((req , res) =>{
//     res.setHeader('text-content' , 'paragraph');
//     res.setHeader('text' , 'set value');
//     res.end("i love node js....")
// })

// server3.listen(4012 , () =>{
//     console.log(`server start at http://localhost:4012`);
// })

// 4

// const http4 = require('http')

// const server4 = http4.createServer((req , res) =>{
//     res.setHeader('dummy-content' , 'dummy value');
//     res.end("When providing properties to the pathObject remember that there are combinations where one property has priority over another")
// })

// server4.listen(5000 , () =>{
//     console.log(`server start at http://localhost:5000`);
// })

const http5 = require('http')

const server5 = http5.createServer((req , res) =>{
    res.setHeader('text', 'text');
    res.end('<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempore similique sed incidunt dolor, molestiae, deserunt beatae asperiores ullam laborum, ratione quam eum quasi minima totam.</p>')
})

server5.listen(7000 , () =>{
    console.log(`server start at http://localhost:7000`);
})

