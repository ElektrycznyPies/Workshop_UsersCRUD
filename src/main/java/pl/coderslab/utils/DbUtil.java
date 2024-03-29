package pl.coderslab.utils;

import javax.naming.Context;
import javax.naming.InitialContext;
import java.sql.*;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DbUtil {
    private static DataSource dataSource;
    public static Connection getConnection() throws SQLException {
        return getInstance().getConnection();   }
    private static DataSource getInstance() {
        if (dataSource == null) {
            try {
                Context initContext = new InitialContext();
                Context envContext = (Context)initContext.lookup("java:/comp/env");
                dataSource = (DataSource)envContext.lookup("jdbc/users");
            } catch (NamingException e) { e.printStackTrace(); }
        }
        return dataSource;
    }
}
