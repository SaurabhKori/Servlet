<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8850-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <title>Login</title>
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
            height: 400px;
            padding-top: 20px;
            /* margin-top: 20px; */
            background:radial-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
            align-items: center;
            box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;;
        }
        
        .div4 form div{
            display: flex;
            justify-content: center;
            flex-direction: column;
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
        .div5 a{
            text-decoration: none;

        }
        
    </style>
    
</head>
<body>
   <div class="main">
    <div class="div1">
        <!-- <div class="div2"></div> -->
        <div class="div3"><h3>LOGIN</h3></div>
        <div class="div4">
            <form action="login" method="post">
                <div><label for="">Email</label>
                    <input type="email" name="email" required></div>
                    <div>
                        <label for="">Password</label>
                        <div style="display: flex;flex-direction: row;row-gap: 0px; background-color: white; height: 30px; border-radius: 5px;">
                            <div style="width: 170px;"><input type="password" name="pass" id="pass" required></div>
                            <div style="width: 30px;"><span class="material-symbols-outlined vis" id="visibility">
                                visibility_off
                                </span></div>
                        </div>
                    </div>
                    
                        <div><input type="submit" value="Login" class="submit"></div>
            </form>
        </div>
        <div>
         <div class="div5"><p>or <a href="signup.jsp">Sign In</a></p></div>
        </div>
    </div>
   </div>
   <script>
    let pass=document.getElementById("pass");
    let vi=document.getElementById("visibility")
    vi.addEventListener("mousemove",function(){
            if(pass.getAttribute("type")=="password"){
                 pass.setAttribute("type","text");
                 vi.innerHTML="visibility"

            }
            else{
                pass.setAttribute("type","password")
                vi.innerHTML="visibility_off"
             }
        })
   </script>
</body>
</html>