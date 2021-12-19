package library.backend.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import library.backend.dao.UserDAO;
import library.backend.entity.User;

@Service
public class UserService {
    @Autowired
    UserDAO userDAO;

    public boolean isExist(String username) {
        User user = getByName(username);
        return null != user;
    }

    public User getByName(String username) {
        return userDAO.findByUsername(username);
    }

    public User get(String username, String password) {
        return userDAO.getByUsernameAndPassword(username, password);
    }

    public User add(User user) {
        return userDAO.save(user);
    }
}