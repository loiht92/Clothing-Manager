package service.user;

import model.User;

import java.sql.SQLException;

public interface IUserService {
    public User findUser (String email, String pass) throws SQLException;

}
