import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ShowStudentServlet", urlPatterns = "/counter")
public class ShowStudentServlet extends HttpServlet {
    public static int count = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        count++;
        out.println("<h2>Page counter: " + count + "</h2>");

        request.getParameter("reset");
        if (request.getParameterMap().containsKey("reset")) {
            out.println("<h1>You've reset the Counter </h1>");
            count = 0;
        }
    }


}
