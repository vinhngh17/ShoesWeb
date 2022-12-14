package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class manageruser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>  \n");
      out.write("    <title>Document</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.13.1/css/dataTables.bulma.min.css\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\" style=\"width: 1200px;\">\n");
      out.write("    <table id=\"example\" class=\"table is-striped\" style=\"width:100%\">\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>ID</th>\n");
      out.write("                <th>Tên đăng nhập</th>\n");
      out.write("                <th>Mật khẩu</th>\n");
      out.write("                <th>Họ và tên</th>\n");
      out.write("                <th>Số điện thoại</th>\n");
      out.write("                <th>Xóa</th>\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <td>1</td>\n");
      out.write("                <td>System Architect</td>\n");
      out.write("                <td>Edinburgh</td>\n");
      out.write("                <td>61</td>\n");
      out.write("                <td>2011-04-25</td>\n");
      out.write("                <td>$320,800</td>\n");
      out.write("            </tr>                \n");
      out.write("            <tr>\n");
      out.write("                <td>1</td>\n");
      out.write("                <td>Software Engineer</td>\n");
      out.write("                <td>San Francisco</td>\n");
      out.write("                <td>28</td>\n");
      out.write("                <td>2011-06-07</td>\n");
      out.write("                <td>$206,850</td>\n");
      out.write("            </tr>   \n");
      out.write("            <tr>\n");
      out.write("                <td>3</td>\n");
      out.write("                <td>Customer Support</td>\n");
      out.write("                <td>New York</td>\n");
      out.write("                <td>27</td>\n");
      out.write("                <td>2011-01-25</td>\n");
      out.write("                <td>$112,000</td>\n");
      out.write("            </tr>\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("<script src=\"https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("<script src=\"https://cdn.datatables.net/1.13.1/js/dataTables.bulma.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("    $(document).ready(function () {\n");
      out.write("     $('#example').DataTable();\n");
      out.write("     });\n");
      out.write("</script>\n");
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
