import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AreaCheckServlet", urlPatterns = "/checking")
public class AreaCheckServlet extends HttpServlet {

    private ServletConfig config;
    private List<Point> list = null;

    private static boolean checkArea(double x, double y, int R) {
        if (x <= 0 && y >= 0 && x * x + y * y <= R * R) {
            return true;
        }
        if (x >= 0 && y >= 0 && x + y <= 1.0 * R) {
            return true;
        }
        if (x <= 0 && y <= 0 && y >= -(R + .0) / 2 && x >= -R) {
            return true;
        }
        return false;
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.config = config;
    }

    @Override
    public void destroy() {
    }

    @Override
    public ServletConfig getServletConfig() {
        return config;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (list == null) {
            list = new ArrayList<>();
            config.getServletContext().setAttribute("list", list);
        }
        try {
            Point p = new Point(
                    Double.parseDouble(request.getParameter("X")),
                    Double.parseDouble(request.getParameter("Y")),
                    Integer.parseInt(request.getParameter("R"))
            );

            p.isInArea = checkArea(p.x, p.y, p.R);
            list.add(p);
        } catch (Exception e) {
            e.printStackTrace();
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }

        if (request.getParameter("silent") != null && request.getParameter("silent").equals("on")) {
            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print("{" + "\"in_area\":" + (list.get(list.size() - 1).isInArea ? "true" : "false") + "}");
            out.flush();
        } else {

            StringBuilder data = new StringBuilder();

            for (Point p : list) {
                data.append("<tr>");

                data.append("<td>");
                data.append(String.format(p.x + "", "%.2f"));
                data.append("</td>");

                data.append("<td>");
                data.append(String.format(p.y + "", "%.2f"));
                data.append("</td>");

                data.append("<td>");
                data.append(String.format(p.R + "", "%.2f"));
                data.append("</td>");

                data.append("<td>");
                data.append(p.isInArea ? "Yes" : "No");
                data.append("</td>");

                data.append("</tr>");
            }
            request.setAttribute("data", data.toString());
            getServletContext().getRequestDispatcher("/results.jsp").forward(request, response);
        }
    }


    public static class Point {
        double x;
        double y;
        int R;
        boolean isInArea;

        Point(double x, double y, int r) {
            this.x = x;
            this.y = y;
            this.R = r;
        }
    }

}
