import java.sql.*;

public class ConexionPostgreSQL {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/bd_cooperativapost";
        String usuario = "postgres";
        String contraseña = "123QWASZX";

        int codUsuario = 1;

        try (Connection conn = DriverManager.getConnection(url, usuario, contraseña)) {
            System.out.println("Conexión exitosa a PostgreSQL");

            // ----------- INSERT -----------
            String sqlInsert = "INSERT INTO usuario (\"UsuCod\", \"UsuIde\", \"UsuUsu\", \"UsuPas\", \"UsuRol\", \"UsuEmp\") VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement psInsert = conn.prepareStatement(sqlInsert);
            psInsert.setInt(1, codUsuario);
            psInsert.setString(2, "12345678");
            psInsert.setString(3, "jvilcapera");
            psInsert.setString(4, "clave123");
            psInsert.setInt(5, 1);
            psInsert.setInt(6, 1);
            psInsert.executeUpdate();
            System.out.println("Usuario insertado");

            // ----------- SELECT -----------
            String sqlSelect = "SELECT \"UsuCod\", \"UsuIde\", \"UsuUsu\", \"UsuPas\", \"UsuRol\", \"UsuEmp\" FROM usuario";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sqlSelect);
            System.out.println("Usuarios encontrados:");
            while (rs.next()) {
                System.out.println(
                    "UsuCod: " + rs.getInt("UsuCod") +
                    ", UsuIde: " + rs.getString("UsuIde") +
                    ", UsuUsu: " + rs.getString("UsuUsu") +
                    ", UsuPas: " + rs.getString("UsuPas") +
                    ", UsuRol: " + rs.getInt("UsuRol") +
                    ", UsuEmp: " + rs.getInt("UsuEmp")
                );
            }

            // ----------- UPDATE -----------
            String sqlUpdate = "UPDATE usuario SET \"UsuPas\" = ? WHERE \"UsuCod\" = ?";
            PreparedStatement psUpdate = conn.prepareStatement(sqlUpdate);
            psUpdate.setString(1, "claveActualizada2025");
            psUpdate.setInt(2, codUsuario);
            psUpdate.executeUpdate();
            System.out.println("Contraseña actualizada");

            // ----------- DELETE -----------
            String sqlDelete = "DELETE FROM usuario WHERE \"UsuCod\" = ?";
            PreparedStatement psDelete = conn.prepareStatement(sqlDelete);
            psDelete.setInt(1, codUsuario);
            psDelete.executeUpdate();
            System.out.println("Usuario eliminado");

        } catch (SQLException e) {
            System.out.println("Error al conectar o ejecutar: " + e.getMessage());
        }
    }
}
