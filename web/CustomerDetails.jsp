<%-- 
    Document   : CustomerDetails
    Created on : 2019-03-27, 23:47:23
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
            Long id = Long.parseLong(request.getParameter("id"));
            Customers customerDetails = new Customers();
            List<Customer> customer = customerDetails.getCustomer(id);
            for(int i=0;i<customer.size();i++){
                Customer c = customer.get(i);
        %>
            Customer id:   <%= c.getId() %><br>
            Discount code: <%= c.getDiscount_code() %><br>
            ZIP: <%= c.getZip() %><br>
            Name: <%= c.getName() %><br>
            Address line 1: <%= c.getAddressline1() %><br>
            Address line 2: <%= c.getAddressline2() %><br>
            City:   <%= c.getCity() %><br>
            State:  <%= c.getState() %><br>
            Phone:  <%= c.getPhone() %><br>
            Fax:    <%= c.getFax() %><br>
            Email:  <%= c.getEmail() %><br>
            Credit limit:   <%= c.getCredit_limit() %><br>
        <%
                 }
        %>
        <br><a href="ViewCustomers.jsp">Back to list</a>
    </body>
</html>
