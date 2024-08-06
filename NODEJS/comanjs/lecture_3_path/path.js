const http = require('http');

const path = require('path');

// normalize the path

// console.log(path.normalize('E:backend/nodejs/path.js'));

// console.log(path.resolve('E:backend/nodejs/path.js'));

// get the extension

// console.log(path.extname('E:backend/nodejs/path.txt'));

// get the base name

// console.log(path.basename('E:backend/nodejs/path.txt'));

// get the directory name

// console.log(path.dirname('E:backend/nodejs/path.txt'));

// Split the path

// console.log(process.env.path);

// console.log(process.env.path.split('E:backend/nodejs/path.txt'));

// parse path

// console.log(path.parse('E:backend/nodejs/path.txt'));

// absolute path

// console.log(path.isAbsolute('E:backend/nodejs/path.js'));

// join the path

// console.log(path.join('' , 'nodejs' , 'lecture.js'));

// format the path

// console.log(path.format({
//     root:'/',
//     base :'lecture',
//     ext:'ignored'
// }));

// console.log(path.format({
//     root:'E',
//     dir:'E:backend/nodejs',
//     ext:'.txt',
//     name:'introduction'

// }));

// let a = 'foo/bar/baz'.split(path.sep);
// Returns: ['foo', 'bar', 'baz']
// console.log(a);

const server = http.createServer((req , res) =>{
    res.writeHead(200 , {'content-type':'text/plain'});
    res.end('Hello World');
})    

server.listen(6523 , ()=>{
    console.log('server running at http://localhost:6523');
    
});













