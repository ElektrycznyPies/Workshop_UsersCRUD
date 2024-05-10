package pl.coderslab.web;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/users/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/add.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userName = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession sess = req.getSession(false);

        User newUser = new User(userName, email, password);
        UserDao userDao = new UserDao();
        userDao.create(newUser);

        if (newUser != null) {
            //udane dodanie usera
            resp.sendRedirect("/users/list");
        } else {
            resp.sendRedirect("/add.jsp?error=badUser");
        }
    }
}

