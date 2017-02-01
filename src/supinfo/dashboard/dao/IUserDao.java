package supinfo.dashboard.dao;


import supinfo.dashboard.entities.UserAccount;

public interface IUserDao {
        public UserAccount find(String email);
        public UserAccount checkCredentials(String login, String password);
        public void saveUser(UserAccount user) ;
        public void deleteUser(UserAccount user);
        public void deleteUserById(Long id);
}