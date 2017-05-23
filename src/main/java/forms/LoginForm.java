package main.java.forms;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 * Created by saziri on 09/04/2016.
 */
public class LoginForm {
    private String username;
    private String password;
    private String new_password;

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public static String getEncryptedPassword(String clearPassword)   {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(clearPassword.getBytes());
            String pwdEncrypt = Base64.getEncoder().encodeToString(md.digest());
            return pwdEncrypt;
        } catch (NoSuchAlgorithmException e) {
            //_log.error("Failed to encrypt password.", e);
        }
        return "";
    }
    public String getNew_password() {
        return new_password;
    }

    public void setNew_password(String new_password) {
        this.new_password = new_password;
    }
}
