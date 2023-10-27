<%@page import="com.jsp.form.dto.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.form.userdao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Table</title>
    <style>
        body{
            display: flex;
            justify-content: center;
            align-content: center;
            margin-top: 5%;

        }
        div{
            border-radius: 20px;
        box-shadow: 15px 10px 10px  black;
        }
         table{
            margin: 10px;
        }
        td{
        color:blue;
        
        }
        
    </style>
</head>
<body>
 <%
UserDao userDao=new UserDao();
List<User> users=userDao.displayAllUser();
%> 

    <div>
        <table border="1" cellspacing="10" cellpadding="10">
            <Caption>DATABASE TABLE</Caption>
            <tr>
                <th >User_Id</th>
                <th>User_Name</th>
                <th>User_Email</th>
                <th>User_Phone</th>
                <th>User_Gender</th>
                <th>User_Address</th>
                <th>Delete</th>
                <th>Edit</th>
                
            </tr>
            
            <%for(User user:users){ %>
            <tr>
                <td><%= user.getIduser() %></td>
                <td><%= user.getUsername() %></td>
                <td><%= user.getUseremail() %></td>
                <td><%= user.getUserphone()%></td>
                <td><%= user.getUsergender()%></td>
                <td><%= user.getUseraddress() %></td>
                <td><a href="delete?id=<%=user.getIduser()%>"><button style="background-color:red">Delete</button></a></td>
                <td><a href="update.jsp?id=<%=user.getIduser()%>"><button style="background-color:green">Edit</button></a></td>
                
                
            </tr>
            
            <%} %>
            <tr>
            <center><td style=><a href="insert.jsp"><button style="background-color:blue">Insert</button></a></td></center>
            </tr>
        </table>
       </div>
</body>
</html>