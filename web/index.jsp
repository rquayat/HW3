<%@ page import="java.util.Date" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Ryan's Database</title>
		<link rel="stylesheet" type="text/css" href="css/indexcss.css">
	</head>
	<body>
            
		<h1> Salary Calculator</h1>
                        <hr>
            <div>       
		<form name="Salary Calculator" action="resultsjsp.jsp" method="post">
                    
                        <table>
                        
                        <tbody class="T">
                            <tr>
                                <td>Hours Worked:</td>
                                <td><input type="text" name="hours" value="" size="50"></td>
                            <tr>
                                <td>Hourly Salary:</td>
                                <td><input type="text" name="wage" value="" size="50"></td>
                            <tr>
                                <td>Pre-Tax Deduct:</td>
                                <td><input type="text" name="pretaxdeduct" value="" size="50"></td>
                            <tr>
                                <td>Post-Tax Deduct:</td>
                                <td><input type="text" name="posttaxdeduct" value="" size="50"></td>
                        </tbody>
                    </table>
                    
                    <input type="reset" value="Clear" id="clear">
                    <input type="submit" value="Submit" id="submit">
                    
                </form>  
           </div>
        </body>                            
</html>