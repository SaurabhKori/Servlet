<%@page import="com.jsp.form.dto.User"%>
<%@page import="com.jsp.form.userdaoservice.UserDaoService"%>
<%@page import="com.jsp.form.userdao.UserDao"%>
<%@page import="com.jsp.form.controler.Update"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Resitration Form</title>
    <style>
        body{
            background-color: #ede5e5;
            display: flex;
            justify-content: center;
            align-items: center;
        }
      .container {
        display: flex;
        background-color:#ffff;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        width: 400px;
        margin-top: 9%;
        border-radius: 20px;
        box-shadow: 15px 10px 10px  black;
        /* height: ; */
      }
      label {
        display: block;
        margin-bottom: 10px;
        font-size: 18px;
        font-weight: bolder;
      }
     
      .div2 {
        margin-bottom: 20px;
      }
     input:not(.gen),select{
        width: 200px;
        height: 30px;
        /* border: none; */
        border-radius: 5px;
        padding-left: 10px;
     }
     select{
        appearance: none;
     }
     .btn{
        width: 100px;
        height: 40px;
        font-size: 20px;
        border: none;
        border-radius: 5px;
        background-color: rgba(9, 173, 238, 0.963);
       
        margin-left:50px;
        margin-bottom:20px ;
        /* padding: 10px; */
     }
     .btn:hover{
        background-color: rgb(17, 109, 146);
        
     }
     #error{
        color: red;
        margin-top: -18px;
     }
      
    </style>
  </head>
  <body>
  <%
  int id=Integer.parseInt(request.getParameter("id"));
  UserDaoService us=new UserDaoService();
  User user=us.getdatabyIdService(id);
 %>
    <div class="container">
      <h2>Update Form</h2>
      <form action="update">
       <div class="div2" hidden="true">
          <label for="" hidden="true">Id</label>
          <input type="number" name="myid" value="<%=user.getIduser()%>" hidden="true" required>
        </div>
        <div class="div2">
          <label for="">Name</label>
          <input type="text" placeholder="Enter Name" name="name" value="<%=user.getUsername()%>" required/>
        </div>
        <div class="div2">
          <label for="">Email</label>
          <input type="email" placeholder="xyz@gmail.com" name="email" value="<%=user.getUseremail()%>" required/>
        </div>
        <div class="div2">
          <label for="">Phone</label>
          <input
            type="tel"
            placeholder="123456789"
            maxlength="10"
            name="phone"
            value="<%=user.getUserphone() %>"
            pattern="[0-9]{10}"
            id="phn"
            required
          />
        </div>
        <p id="error"></p>
         <div class="div2">
          <label for="">Gender</label>
          <input type="radio" name="gender" value="male"  class="gen" <%= user.getUsergender().equals("male")? "checked" : "" %>>Male
          <input type="radio" name="gender" value="female" class="gen" <%= user.getUsergender().equals("female")? "checked" : "" %>>Female
        </div> 
        <div class="div2">
            <label for="">Address</label>
            <input type="text" placeholder="address" name="address" value="<%=user.getUseraddress() %>" required/>
        </div>
        <div><input type="submit" value="Update" class="gen btn" onclick="loginvalidation()"/></div>
      </form>
    </div>
    <script>
        let phone=document.getElementById("phn")
        
        let flag=1;
function loginvalidation(){
    
    if(!inp.value.match(/^\d{10}$/)){
        document.getElementById("error").innerHTML="please enter valid mobile number(10 digit)";
        flag=0;
    }
    
    if(flag==1){
        return true;
    }
    else{
        return false;
    }
}
        

    </script>
  </body>
</html>
    