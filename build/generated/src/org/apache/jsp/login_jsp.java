package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"login.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <div class=\"container-login\">\n");
      out.write("    <div class=\"login\">\n");
      out.write("      <h1>Đăng Nhập</h1>\n");
      out.write("      <hr>\n");
      out.write("      <p class=\"text-danger\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("      <form action=\"login\" method=\"post\">\n");
      out.write("        <label for=\"email\"><b>Tên đăng nhập</b></label>\n");
      out.write("        <input type=\"text\" placeholder=\"username\" required/>\n");
      out.write("        <label for=\"psw\"><b>Mật Khẩu</b></label>\n");
      out.write("        <input type=\"password\" placeholder=\"password\" required/>\n");
      out.write("\n");
      out.write("        <label>\n");
      out.write("          <input type=\"checkbox\" class=\"check\" name=\"remember\"/>Nhớ đăng nhập\n");
      out.write("        </label>\n");
      out.write("\n");
      out.write("        <div class=\"clearfix\">\n");
      out.write("          <button type=\"submit\" class=\"signupbtn\">Đăng nhập</button>\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("      <div class=\"signup\">\n");
      out.write("        <p>Chưa có tài khoản?</p><a href=\"login2.html\">Đăng ký</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  </form>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
