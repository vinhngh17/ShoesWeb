package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("    <script src=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("    <title>Document</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-12 col-md-10 col-md-offset-1\">\n");
      out.write("                <table class=\"table table-hover\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Sản phẩm</th>\n");
      out.write("                            <th>Số lượng</th>\n");
      out.write("                            <th class=\"text-center\">Đơn giá</th>\n");
      out.write("                            <th class=\"text-center\">Số tiền</th>\n");
      out.write("                            <th>Thao tác</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"col-sm-8 col-md-6\">\n");
      out.write("                                <div class=\"media\">\n");
      out.write("                                    <a class=\"thumbnail pull-left\" href=\"#\"> <img class=\"media-object\"\n");
      out.write("                                            src=\"http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png\"\n");
      out.write("                                            style=\"width: 72px; height: 72px;\"> </a>\n");
      out.write("                                    <div class=\"media-body\">\n");
      out.write("                                        <h4 class=\"media-heading\"><a href=\"#\">Product name</a></h4>\n");
      out.write("                                        <h5 class=\"media-heading\"> by <a href=\"#\">Brand name</a></h5>\n");
      out.write("                                        <span>Status: </span><span class=\"text-success\"><strong>In Stock</strong></span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"col-sm-1 col-md-2\" style=\"text-align: center\">\n");
      out.write("                                <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" value=\"3\">\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"col-sm-1 col-md-2 text-center\">$4.87</td>\n");
      out.write("                            <td class=\"col-sm-1 col-md-1 text-center\">$14.61</td>\n");
      out.write("                            <td class=\"col-sm-1 col-md-1\">\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-remove\"></span> Remove\n");
      out.write("                                </button>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"col-md-6\">\n");
      out.write("                                <div class=\"media\">\n");
      out.write("                                    <a class=\"thumbnail pull-left\" href=\"#\"> <img class=\"media-object\"\n");
      out.write("                                            src=\"http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png\"\n");
      out.write("                                            style=\"width: 72px; height: 72px;\"> </a>\n");
      out.write("                                    <div class=\"media-body\">\n");
      out.write("                                        <h4 class=\"media-heading\"><a href=\"#\">Product name </a></h4>\n");
      out.write("                                        <h5 class=\"media-heading\"> by <a href=\"#\">Brand name</a></h5>\n");
      out.write("                                        <span>Status: </span><span class=\"text-warning\"><strong>Leaves warehouse in 2 -\n");
      out.write("                                                3 weeks</strong></span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"col-md-1\" style=\"text-align: center\">\n");
      out.write("                                <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" value=\"2\">\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"col-md-1 text-center\"><strong>$4.99</strong></td>\n");
      out.write("                            <td class=\"col-md-1 text-center\"><strong>$9.98</strong></td>\n");
      out.write("                            <td class=\"col-md-1\">\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-remove\"></span> Remove\n");
      out.write("                                </button>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>\n");
      out.write("                                <h5>Subtotal</h5>\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"text-right\">\n");
      out.write("                                <h5><strong>$24.59</strong></h5>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>\n");
      out.write("                                <h5>Estimated shipping</h5>\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"text-right\">\n");
      out.write("                                <h5><strong>$6.94</strong></h5>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>\n");
      out.write("                                <h3>Total</h3>\n");
      out.write("                            </td>\n");
      out.write("                            <td class=\"text-right\">\n");
      out.write("                                <h3><strong>$31.53</strong></h3>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>   </td>\n");
      out.write("                            <td>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-default\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-shopping-cart\"></span> Continue Shopping\n");
      out.write("                                </button>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success\">\n");
      out.write("                                    Checkout <span class=\"glyphicon glyphicon-play\"></span>\n");
      out.write("                                </button>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
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
