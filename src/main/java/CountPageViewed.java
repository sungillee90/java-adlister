import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CountPageViewed", urlPatterns = "/count")
public class CountPageViewed extends HttpServlet {

    int counter = 0; // initializing the counter

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        counter ++;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("Counter : <strong> " + counter + "</strong>");

    }
}
