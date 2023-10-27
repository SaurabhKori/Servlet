<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        .main{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100vw;
            height: 100vh;
            background:radial-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
        }
       
        .div1{
            display: flex;
            flex-direction: column;
            justify-content: center;
            /* margin-top:-500px; */
            /* margin-left: 40%; */
            width: 300px;
            border-radius: 15px;
            row-gap: 30px;
            height: 500px;
            padding-top: 20px;
            /* margin-top: 20px; */
            background:radial-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
            align-items: center;
            box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;;
        }
        .div2 form div:not(.div3){
            display: flex;
            justify-content: center;
            flex-direction: column;
            row-gap: 3px;
            padding: 7px;
            /* background-color: white; */
        }
        label{
            font-size: 15px;
            font-weight: bold;
        }
        input{
            height: 30px;
            width: 200px;
            border-radius: 3px;
            border: none;
            outline: none;
            padding-left:20px ;

        }
        .submit{
            font-size: 20px;
            font-weight: bold;
            font-style: normal;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            /* color:white; */
            background:radial-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
            box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;;
            width: 100px;
            margin-left: 45px;
        }
        .div3{
            display: flex;
            flex-direction: row;
            column-gap: 5px;

        }
        .div3 input{
            width: 15px;
            height: 15px;
            /* display: inline; */
        }
       
    </style>
</head>
<body>
    <div class="main">
        <div class="div1">
            <div><h3>Sign Up Form</h3></div>
            <div class="div2">
                <form action="signup" method="post">
                    <div>
                        <label for="">Name</label>
                        <input type="text" name="name" required>
                    </div>
                    <div>
                        <label for="">Phone</label>
                        <input type="tel" name="phone" required>
                    </div>
                    
                    <div>
                        <label for="">Email</label>
                        <input type="email" name="email" required>
                    </div>
                    <div>
                        <label for="">Password</label>
                        <input type="password" name="pass" required>
                    </div>
                    <div class="div3">
                        <label for="">Gender</label>
                       
                        <input type="radio" value="male" name="gender" >Male
                        <input type="radio" value="female" name="gender">Female
                    </div>
                    
                    <div>
                        
                        <input type="submit" value="submit" class="submit">
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</body>
</html>