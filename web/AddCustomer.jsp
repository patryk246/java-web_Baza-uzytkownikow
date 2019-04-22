<%-- 
    Document   : AddCustomer
    Created on : 2019-03-28, 00:32:49
    Author     : Patryk
--%>

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
        <h2>Add new customer</h2><br>
        <form method="post" action="AddCustomer.jsp">
            Customer id:
            <input type="number" name="id"><br>
            Customer name:
            <input type="text" name="name"><br>
            Address line 1:
            <input type="text" name="addressLine1"><br>
            Address line 2:
            <input type="text" name="addressLine2"><br>
            City:
            <input type="text" name="city"><br>
            Phone:
            <input type="text" name="phone"><br>
            Fax:
            <input type="text" name="fax"><br>
            Email:
            <input type="text" name="email"><br>
            Credit limit:
            <input type="text" name="creditLimit"><br>
            <input type="submit" value="add" name="submit">
        </form>
        
        <%
        if(request.getParameter("submit") != null){
            Customer c = new Customer();
            c.setAddressline1(request.getParameter("addressLine1"));
            c.setAddressline2(request.getParameter("addressLine2"));
            c.setCity(request.getParameter("city"));
            c.setCredit_limit(Integer.parseInt(request.getParameter("creditLimit")));
            c.setDiscount_code("N");
            c.setEmail(request.getParameter("email"));
            c.setFax(request.getParameter("fax"));
            c.setId(Long.parseLong(request.getParameter("id")));
            c.setName(request.getParameter("name"));
            c.setPhone(request.getParameter("phone"));
            c.setState("FL");
            c.setZip("95117");
            Customers customers = new Customers();
            customers.insertCustomer(c);
            response.sendRedirect("ViewCustomers.jsp");
        }
        %>
    </body>
</html>
