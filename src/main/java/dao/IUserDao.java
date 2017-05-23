package main.java.dao;

import main.java.entities.UserAccount;

public interface IUserDao {
        public UserAccount find(String email);
        public UserAccount checkCredentials(String login, String password);
        public void saveUser(UserAccount user) ;
        public void deleteUser(UserAccount user);
        public void deleteUserById(Long id);
}