<%@page import="java.util.List"%>
<%@page import="com.jsp.login_page.dto.User"%>
<%@page import="com.jsp.login_page.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Table</title>
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
            border-radius: 20px;
            background:radial-gradient(#2eb6c0,#2d9cb1,#2e7ca2,#2f4b85);
        box-shadow: 15px 10px 10px  black;
        /* box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;; */
        }
         table{
            margin: 10px;
        }
        
    </style>
</head>
<body>
<%UserService us=new UserService();
 List<User> user= us.fetchAllSe();%>
   <div class="main">
    <div class="div1">
        <table border="2" cellspacing="10" cellpadding="10">
            <Caption>DATABASE TABLE</Caption>
            <tr>
                <th >User_Id</th>
                <th>User_Name</th>
                <th>User_Email</th>
                <th>User_Phone</th>
                <th>User_Gender</th>
                <th>User_Password</th>
                
            </tr>
            <%for(User u:user){ %>
            <tr>
                <td><%=u.getId() %></td>
                <td><%=u.getUsername() %></td>
                <td><%=u.getUseremail() %></td>
                <td><%=u.getUserphone() %></td>
                <td><%=u.getUsergender() %></td>
                <td><%=u.getUserpass() %></td>
            </tr>
        <%} %>
        </table>
    </div>
   </div>
</body>
</html>