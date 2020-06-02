import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//    Create a page that displays "Hello World!" when a user visits /hello
@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>Hello, World!</h1>");
    }
}

//    Create a page that displays a number that goes up by one every time the /count page is viewed.
@WebServlet(name = "CountsPageViewd", urlPatterns = "/count")



// http://localhost:8081/hello