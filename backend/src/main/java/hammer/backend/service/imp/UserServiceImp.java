package hammer.backend.service.imp;

import hammer.backend.mapper.UserMapper;
import hammer.backend.pojo.User;
import hammer.backend.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImp implements UserService{
    @Autowired
    private UserMapper userMapper;
    public User getUser(String username,String password){
        User user = userMapper.getUser(username);

        if(user!=null){
            if(user.getPassword().trim().equals(password))
            return user;
        }
        return null;
    }
}
