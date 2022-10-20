<%@page import="p1.SignupDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <title>Signup</title>
</head>
<body>
   <header style="height: 30px;background-color: yellow;"></header>
   
   <div class="container">
   		<img  style="height: 120px" src="https://icon-library.com/images/signup-icon/signup-icon-13.jpg">
   			<img  style="height: 120px" src="https://icon-library.com/images/signup-icon/signup-icon-13.jpg">
   		<img  style="height: 120px" src="https://icon-library.com/images/signup-icon/signup-icon-13.jpg">
   		<hr/>
   		
   		<div style="width: 60%">
   		   <h2>SEARCH DATA!!</h2>
   		  <span style="color:red;font-size: 18px;font-weight: bold;">${message}</span>
   		  
   		      <form action="searchData" method="get">    
   		          <div class="form-group">
   		          			<label>SEARCH DATA</label>
   		          			 <input type="text" name="ptext" class="form-control">
   		          </div>
   		          <hr>
   		          <button type="submit" class="btn btn-primary">GO!</button>
   		              <a href="#">   
   		              <button type="submit" class="btn btn-danger">CLEAR!</button>
   		              </a>   	
   			</form>
   			<hr/>
   			
   			 <%
   		      List<SignupDTO>  searchResult=( List<SignupDTO>)request.getAttribute("pdata");
			  if(searchResult!=null && searchResult.size()>0){
   			 %>
   				<table class="table table-bordered" >
					<thead>
						<tr>
								<th>SNO</th>
							<th>Username</th>
							<th>Password</th>
							<th>Email</th>
							<th>Mobile</th>
						</tr>
					</thead>
					<tbody>
					  <%
						  int count=1;
						  for(SignupDTO t: searchResult) {
					  %>
					   <tr>
					    <td><%=count++ %></td>
					    <td><%=t.getUsername() %></td>
					    <td><%=t.getPassword() %></td>
					      <td><%=t.getEmail() %></td>
					     <td><%=t.getMobile() %></td>
					   </tr>
					   <%
						  }
					   %>
					   </tbody>
					   </table>
					   <%
			  }
					   %>
   		</div>
   
   </div>
   

</body>
</html>