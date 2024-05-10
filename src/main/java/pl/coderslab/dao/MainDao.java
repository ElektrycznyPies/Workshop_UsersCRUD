package pl.coderslab.dao;
import pl.coderslab.model.User;

import java.util.List;

public class MainDao {
    public static void main(String[] args) {

        UserDao userDao = new UserDao();
        List<User> userList = userDao.findAll();

        for (User user : userList) {
            System.out.println("ID: " + user.getId());
            System.out.println("Imię: " + user.getUserName());
            System.out.println("Email: " + user.getEmail());

        }
    }
}
