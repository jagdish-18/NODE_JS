/*
   file system , http , https , path , url ,  console - all builtin  module delf lern (https://nodejs.org/docs/latest/api)*/


   //File System
   //Asychronous and Sychronous

   const  fs = require('fs');

   //ASYNC
   // fs.open("./intro.js" , (err , result) =>{
   //  if(err)
   //      console.log(err);
   //  else
   //      console.log("File Open Success");
   // })

   //SYNC
   // let data = fs.openSync('./intro.js');
   // console.log('File open SuccessFully....');
   

// File Write
// let data = "Node.js® is a free, open-source, cross-platform JavaScript runtime environment that lets developers create servers, web apps, command line tools and scripts."

//ASYNC
// fs.writeFile('./intro.js' , data , (err , result) =>{
//     if(err)
//         console.log(err);
//     else
//        console.log('file write succsess');
// })

//SYNC
// fs.writeFileSync('./intro.txt' , data);
// console.log('File Write Succsess');

// function add(a ,b){
//      return a + b;
// }

// function mul(a ,b){
//    return a * b;
// }

// READ FILE 
// ASYNC
// let t1 = performance.now();
// console.log("Start time: ===============>" , t1);
// console.log("Addition :=================>" , add(25,25));
// fs.readFile('./intro.txt' , 'utf-8' , (err , result) =>{
//    if(err)
//       console.log(err);
//    else
//       console.log(result);    
// })

// console.log("multiplication:============>" , mul(10 ,10));
// let t2 = performance.now();
// console.log("End Time:==================>" , t2);
// console.log("Diffrence time:============>",t2 - t1);

//SYNC
// let t3 = performance.now();
// console.log("Start Time:================>" , t3);
// console.log("Addition :=================>" , add(100, 200));
// let sync = fs.readFileSync('./intro.txt' , 'utf-8');
// console.log(sync);
// console.log("Multiplication=============>" , mul(10 ,10));
// let t4 = performance.now();
// console.log('End Time:==================>' , t4);
// console.log("Diffrence time:============>" , t4 - t3);


// append method
// ASYNC

// let para = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio dolor id aspernatur doloribus, aperiam natus nobis possimus, commodi, deleniti temporibus illum expedita laborum nulla impedit dolores quas odio ducimus reiciendis.'

// fs.appendFile('./intro.txt' , para , (err , result) =>{
//    if(err)
//       console.log(err);
//    else
//       console.log("File Append Success");     
// })

// SYNC
//  let para2 = 'When Node.js performs an I/O operation, like reading from the network, accessing a database or the filesystem, instead of blocking the thread and wasting CPU cycles waiting, Node.js will resume the operations when the response comes back.'

//  fs.appendFileSync('./intro.txt' , para2)
// console.log('append successfully');

// RENAME
// ASYNC
// fs.rename('./intro.txt' , './introduction.txt' , (err , result) =>{
//    if(err){
//       console.log(err);   
//    }else{
//       console.log('Rename File SuccessFully');
      
//    }
// })nc

//SYNC
// fs.renameSync('./introduction.txt' , './fileSystem.js')
// console.log("Rename SYNC Successfully");


//DELETE FILE
//SYNC

fs.unlinkSync('./fileSystem.js')
console.log("Deleted File SUccsess");











