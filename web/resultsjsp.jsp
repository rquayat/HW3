
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator Form Results Page</title>
    </head>
    <%
        String HoursWorked = request.getParameter("hours");
            int hrswrk = Integer.parseInt(HoursWorked);
        String HourlySalary = request.getParameter("wage");
            int hrwg = Integer.parseInt(HourlySalary);
        String PreTaxDeduct = request.getParameter("pretaxdeduct");
            int PreTD = Integer.parseInt(PreTaxDeduct);
        String PostTaxDeduct = request.getParameter("posttaxdeduct");
            int PostTD = Integer.parseInt(PostTaxDeduct);
            
       // variables are now:
       // hrws  hrwg    PreTD   PostTD
      
    %>
    
    
    
    <body>
        <h1>Salary Info</h1>
        
            <hr>
        
        <form name="Salary Info" action="index.jsp" method="get">
            <table>
                        <tbody>
                            <tr>
                                <td>Total Hours Worked:</td>
                                <td> <%= hrswrk %> </td>
                            <tr>
                                <td>Hourly Rate:</td>
                                <td> <%= hrwg %> </td>
                            <tr>
                                <td># of Hours Overtime:</td>
                                <td> <% int ot=0;
                                        if(hrswrk>40) {ot=hrswrk-40;
                                                       out.println(ot); }
                                        else out.println(ot); %>                      </td>
                            <tr>
                                <td>Overtime Hourly Rate:</td>
                                <td> <% int otr=hrwg;
                                        if (ot>0) {hrwg+=hrwg*.5;
                                                   out.println(otr);}
                                        else otr=0;
                                        out.println(otr);
                                                        %></td>
                            <tr>
                                <td>Gross Pay:</td>
                                <td> <% int grpy=(hrswrk*hrwg)+(ot*otr);
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
                                <td><%  double Taxes=(grpy-PreTD)*.25;        
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
    </body>
</html>
