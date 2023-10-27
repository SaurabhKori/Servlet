<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body{
         background:url('../db.jpeg')
        }
       .div1{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap:100px ;
        background:url('../db.jpeg');
        width: 500px;
        height: 400px;
        border:none;
        border-radius: 15px;
        margin: 10% auto;
        box-shadow: 10px 10px 20px 10px steelblue;
       } 
       h2{
        font-size: 38px;
        font-weight: bold;
       }
       button{
        color:aqua;
        width:250px;
        height: 40px;
        font-size: 23px;
        font-weight: bold;
        border: none;
        border-radius: 23px;
        animation: btn 970ms linear infinite;
        }
       @keyframes btn {
        from{
            transform:  scale(0.78);
            
        }
        to{
            transform:  scale(1.5);
        }
       }
    </style>
</head>
<body>
    <div class="div1">
        <div><h2>Welcome To DATBASE</h2></div>
        <div><a href="databasetable.jsp"><button>Database......</button></a></div>
    </div>
</body>
</html>