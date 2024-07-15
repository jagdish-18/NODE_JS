// mongosh -- first command in cmd

// show dbs

// use students

// db.createCollection("studentsData")

// insertOne

db.studentsData.insertOne({
    "firstname":"jagdish",
    "lastname":"shiyal",
    "age":22,
    "gender":"male"
})

// insertMany
db.studentsData.insertMany([
    {
        "firstname":"hit",
        "lastname":"dobriya",
        "age":23,
        "gender":"male",
        "hobies":["cricket" , "hollyball" , "dancing"]
    },
    {
        'firstname':"dev",
        "lastname":"bhardva",
        "occupation":"developer",
        "skills":{
            "html":"70%",
            "css":"80%",
            "javascript":"85%",
            "react":"65%"
        }
    },
    {
        "firstname":"prince",
        "lastname":"bodar",
        "age":18,
        "gender":"male",
        "profession":"chatgpt"
    }
])

db.studentsData.find()

db.studentsData.find({"gender":"male"})

