package main.java.Constante;

/**
 * Created by saziri on 11/01/2017.
 */
public interface Constante {
    String APP_NAME = "Dashboard";

    /* Files locations */
    String HARD_DRIVE = System.getProperty("user.home");
    String FILE_PATH = HARD_DRIVE+"/Dashboard/Resources/";
    String LOG_PATH = FILE_PATH+"logs/";
    String IMG_PATH = FILE_PATH+"IMG/";
    String RATP_FILE = "ratp.properties";
    String METEO_FILE = "weather.propertie";
    String USER_FILE = "user.properties";
}
