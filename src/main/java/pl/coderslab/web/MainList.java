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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/users/list")

public class MainList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> users = new ArrayList<>();
        HttpSession sess = req.getSession(false);
        if (sess != null) {
            UserDao userDao = new UserDao();
            users = userDao.findAll();
            req.setAttribute("users", users);
        }
        System.out.println(users);
        getServletContext().getRequestDispatcher("/list.jsp").forward(req, resp);
    }
}