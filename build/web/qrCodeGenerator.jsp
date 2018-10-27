<%-- 
    Document   : qrCodeGenerator
    Created on : Oct 27, 2018, 9:22:04 AM
    Author     : DoThong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/qrcode/QrCodeGenerator" method="POST">
            <input type="text" name="qrCodeContent" value="${qrCodeContent}"/>
            <input type="submit" name="btnSubmit"/>
        </form>
    </body>
</html>
