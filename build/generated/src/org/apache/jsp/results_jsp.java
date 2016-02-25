package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class results_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Salary Calculator Results</title>\n");
      out.write("        <link rel=\"stylesheet\" type =\"text/css\" href=\"style-result.css\" media=\"screen\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    ");
 
        Double hoursWorked = Double.parseDouble(request.getParameter("hworked"));
        Double payRate = Double.parseDouble(request.getParameter("hpay"));
        Double preTaxDeduct = Double.parseDouble(request.getParameter("pretax"));
        Double postTaxDeduct = Double.parseDouble(request.getParameter("posttax"));
        Double otHours = 0.00;
        Double otPayRate = 0.00;
        Double otPay = 0.00;
        Double grossPay = 0.00;
        Double regularPay = 0.00;
        Double taxAmount = 0.00;
        Double regularHours = 0.00;
        
        
        if (hoursWorked>40){
                regularHours = 40.00;
                otHours = hoursWorked - 40;
                otPayRate = payRate * 1.5;
                otPay = otHours * otPayRate;
                regularPay = regularHours * payRate;
                grossPay = regularPay + otPay;
         }
         else {
                grossPay = hoursWorked * payRate;
         }
         
        Double preTaxPay = grossPay - preTaxDeduct;
        
        if (grossPay < 500){
                taxAmount = preTaxPay * 0.18;
        }
        else { taxAmount =preTaxPay * 0.22;
        }
       
        Double postTaxPay = preTaxPay -taxAmount;
        Double netPay = postTaxPay - postTaxDeduct;
            
            
        
        
        
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <h1>Salary Info</h1>\n");
      out.write("        \n");
      out.write("        <table border=\"1\" >\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Total Hours Worked:</td>\n");
      out.write("                    <td>");
      out.print( hoursWorked );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Hourly Rate:</td>\n");
      out.write("                    <td>");
      out.print( payRate );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td># Hours Overtime:</td>\n");
      out.write("                    <td>");
      out.print( otHours );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Overtime Hourly Rate:</td>\n");
      out.write("                    <td>");
      out.print( otPayRate );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Gross Pay:</td>\n");
      out.write("                    <td>");
      out.print( grossPay );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Pre-tax Deduct:</td>\n");
      out.write("                    <td>");
      out.print( preTaxDeduct );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Pre-tax Pay:</td>\n");
      out.write("                    <td>");
      out.print( preTaxPay );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Tax Amount:</td>\n");
      out.write("                    <td>");
      out.print( taxAmount );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Post-tax Pay:</td>\n");
      out.write("                    <td>");
      out.print( postTaxPay );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Post-tax Deduct:</td>\n");
      out.write("                    <td>");
      out.print( postTaxDeduct );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Net Pay:</td>\n");
      out.write("                    <td>");
      out.print( netPay );
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
