package pl.coderslab.web;
import pl.coderslab.dao.UserDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet("/users/delete")
public class UserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int choice = JOptionPane.showConfirmDialog(null, "Usunąć użytkownika?",
                "Uwaga!", JOptionPane.YES_NO_OPTION);
        int id = Integer.parseInt(req.getParameter("id"));

        if (choice == JOptionPane.YES_OPTION) {
            UserDao userDao = new UserDao();
            userDao.delete(id);
            resp.sendRedirect("/users/list");
        } else {
            resp.sendRedirect("/users/list");
        }
    }
}