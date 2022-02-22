package com;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
  
public class Sign_up extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String num = request.getParameter("mobilenumber");
String email = request.getParameter("emailaddress");
String first_name = request.getParameter("firstname");
String last_name = request.getParameter("lastname");
String pass = request.getParameter("pass_word");  
 
          
try{  
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/spicyeats?","root","root");

  
PreparedStatement ps=con.prepareStatement("Insert into sign_up_details values(?,?,?,?,?)");  
  
ps.setString(1,num);  
ps.setString(2,email);  
ps.setString(3,first_name);
ps.setString(4,last_name);
ps.setString(5,pass);
          
int i=ps.executeUpdate();  
if(i>0)  
out.print("The Sign Up is Successfull.!");  
      
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
}  
  
} 