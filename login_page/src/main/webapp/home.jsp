<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>

    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }header{
            position:fixed;
            width: 100vw;

        }
        nav{
            display: flex;
            justify-content: space-around;
            align-items: center;
            height: 50px;
            background:radial-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
             box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;

        }
        .div2 ul{
            display: flex;
            width: 200px;
            list-style: none;
            justify-content: space-between;
            
        }
        .div2 ul a{
            text-decoration: none;
            color: white;
            font-size: 20px;
            font-weight: bold;
        }
        .div3 button{
            width: 300px;
            height: 30px;
            border: none;
            border-radius: 3px;
            color: #2eb6c0;
            font-size: 20px;
            font-weight: bold;
        }
        section{
            background:radial-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
            height: 100vh;
            width: 100wh;
        }
        #art2 .div4{
            display: flex;
            justify-content:center;
            align-items: center;
        }
        .div4 .par{
            background-color:transparent;
        }
        .img{
            height:305px;
            width: 305px;
            display: flex;
            justify-content: center;
            align-items: center;
            border:none;
            margin-top: 5%;
            margin-left: 50%;
            border-radius: 50%;
            background: linear-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
            
        /* }; */
        }
        .img img{
            height:300px;
            width: 300px;
           
            border:none;
            border-radius: 50%;
        }
        
    </style>
</head>
<% HttpSession se=request.getSession();
   String em=(String)(se.getAttribute("Email"));
   
   if(em!=null){
   %>
<body>
    <header><nav>
        <div class="div1"></div>
        <div class="div2"><ul>
            <li><a href="">Home</a></li>
            <li><a href="#art2">About</a></li>
        </ul></div>
        <div class="div3"><a href="logout"><button>LogOut</button></a></div>
        
    </nav></header>
    <section>
        <article id="art1">
            
        </article>
        <article id="art2">
            <div class="div4">
                <div class="par"><h3>Hi ! I am Saurabh Kori</h3>
                <p>I am JAVA DEVELOPER<br>I am from UP</p></div>
                <div class="img" ><img src="IMG_20230717_181456_748.jpg" alt=""></div>
            </div>
        </article>
    </section>
</body>
</html>
<% }else{
	
	
	
	
	request.getRequestDispatcher("index.jsp").include(request, response);
}%>