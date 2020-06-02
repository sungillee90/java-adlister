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

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            if((request.getParameter("reset")).equals("1")) {
                counter = 0;
            }
        } catch (NullPointerException ex) {
            ex.printStackTrace();
        }

        counter ++;
        out.println("Counter : <strong> " + counter + "</strong>");

    }
}

//Allow the user to pass a parameter in the query string to reset the counter.
