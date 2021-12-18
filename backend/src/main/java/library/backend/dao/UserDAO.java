package library.backend.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import library.backend.entity.User;

public interface UserDAO extends JpaRepository<User, Integer> {
    // 查询用户
    User findByUsername(String username);

    User getByUsernameAndPassword(String username, String password);
}
