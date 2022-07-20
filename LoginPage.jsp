<%-- 
    Document   : LoginPage
    Created on : Jun 28, 2022, 7:53:30 PM
    Author     : yomol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    
    <body>
        
        <form name="LoginPageServlet" action="LoginPageServlet" method="POST">
            
            <table border="1" width="50" cellspacing="20" cellpadding="15">
                <thead>
                    <tr>
                        <th>
                            <h1> Login Page</h1>
                            
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <label for="username">USERNAME</label><br>
                            <input type="text" id = "username"  name="inptusername" value="" size="25" />
                             <label for="password">PASSWORD</label><br>
                            <input type="password"  id = "password" name="inptpassword" value="" size="25" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Submit" name="btnsubmit" />
                            
                        </td>
                    </tr>
                </tbody>
            </table>

            
        </form>
        
        

    </body>
</html>
