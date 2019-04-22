<%-- 
    Document   : ViewCustomers
    Created on : 2019-03-27, 21:25:09
    Author     : Patryk
--%>

<%@page import="java.util.List"%>
<%@page import="pl.pollub.Customer"%>
<%@page import="pl.pollub.Customers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
        Customers c = new Customers(); 
        List<Customer> customers = c.getCustomers();
    %>
    <table>
            <th>ID</th><th>Name</th><th>Phone</th><th>Email</th><th>City</th>
    <%
        for(int i=0;i<customers.size();i++){
            Customer customer = customers.get(i);
    %>
    <tr>
        <td><%= customer.getId() %></td>
        <td><%= customer.getName()%></td>
        <td><%= customer.getPhone()%></td>
        <td><%= customer.getEmail()%></td>
        <td><%= customer.getCity()%></td>
        <td><a href="CustomerDetails.jsp?id=<%= customer.getId() %>">Details</a></td>
    </tr>
    <%
        }
    %>
    </table>
    <br><a href="AddCustomer.jsp">Add customer</a>
    </body>
</html>
