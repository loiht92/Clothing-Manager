package service.user;

import model.User;
import service.DatabaseInit;

import java.sql.*;

public class UserServiceImpl extends DatabaseInit implements IUserService {

    @Override
    public User findUser(String email, String pass) throws SQLException {
        String SELECT_USER = "select name from clothing_manager.user where email = ? and pass_word = ?;";
        User user = null;

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_USER)) {

            statement.setString(1, email);
            statement.setString(2, pass);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                String name = resultSet.getString("name");
                user = new User(name);
            }

        }
        return user;
    }
}

