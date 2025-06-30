import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    public static Connection conectar() throws SQLException {
        String url = "jdbc:postgresql://localhost:5432/bd_cooperativapost";
        String user = "postgres";
        String pass = "123QWASZX";
        return DriverManager.getConnection(url, user, pass);
    }
}
