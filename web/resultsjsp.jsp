
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator Form Results Page</title>
        <link rel="stylesheet" type="text/css" href="css/indexcss.css">
    </head>
    <%
        String HoursWorked = request.getParameter("hours");
            double hrswrk = Double.parseDouble(HoursWorked);
        String HourlySalary = request.getParameter("wage");
            double hrwg = Double.parseDouble(HourlySalary);
        String PreTaxDeduct = request.getParameter("pretaxdeduct");
            double PreTD = Double.parseDouble(PreTaxDeduct);
        String PostTaxDeduct = request.getParameter("posttaxdeduct");
            double PostTD = Double.parseDouble(PostTaxDeduct);
            
       // variables are now:
       // hrws  hrwg    PreTD   PostTD
      
    %>
    
    
    
    <body>
        <h1>Salary Info</h1>
        
            <hr>
    <div>    
        <form name="Salary Info" action="index.jsp" method="get">
            <table>
                        <tbody class="T">
                            <tr>
                                <td>Total Hours Worked:</td>
                                <td> <%= hrswrk %> </td>
                            <tr>
                                <td>Hourly Rate:</td>
                                <td> <%= hrwg %> </td>
                            <tr>
                                <td># of Hours Overtime:</td>
                                <td> <% double ot=0;
                                        if(hrswrk>40) {ot=hrswrk-40;
                                                       out.println(ot); }
                                   
                                        else out.println(ot); %>                      </td>
                            <tr>
                                <td>Overtime Hourly Rate:</td>
                                <td> <% double otr=hrwg;
                                        if (ot>0) {otr+=hrwg*.5;}
                                        else otr=0;
                                        out.println(otr);
                                                        %></td>
                            <tr>
                                <td>Gross Pay:</td>
                                <td> <% double grpy=(hrswrk*hrwg)+(ot*otr);
                                        out.println(grpy);
                                    
                                                        %></td>
                            <tr>
                                <td>Pre-tax Deduct:</td>
                                <td><%= PreTD              
                                    
                                                        %></td>
                            <tr>
                                <td>Pre-tax Pay:</td>
                                <td><%=grpy-PreTD          %></td>
                            <tr>
                                <td>Tax Amount:</td>
                                <td><% double taxrate=0;
                                       if (grpy<500) {taxrate=.18;}
                                       else if (grpy>500){taxrate=.22;}
                                       double Taxes=(grpy-PreTD)*taxrate;        
                                       out.println(Taxes);                    
                                                            %></td>
                              <tr>
                                <td>Post-tax Pay:</td>
                                <td><%  double PTPay = grpy-Taxes;
                                        out.println(PTPay);
                                                                
                                                               %></td>
                            <tr>
                                <td>Post-tax Deduct:</td>
                                <td><%=PostTD              %></td>
                            <tr>
                                <td>Net Pay:</td>
                                <td><% double NetPay= PTPay-PostTD;
                                        out.println(NetPay);
                                                            
                                                            %></td>        
                        </tbody>
            </table>
            
            
        </form>
    </div>                    
    </body>
</html>
