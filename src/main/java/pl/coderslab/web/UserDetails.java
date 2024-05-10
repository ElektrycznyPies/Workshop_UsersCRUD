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

@WebServlet("/users/show")
public class UserDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        UserDao userDao = new UserDao();
        User user = new User();
        user = userDao.read(id);
        HttpSession sess = req.getSession(false);
        req.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/details.jsp").forward(req, resp);
    }
}