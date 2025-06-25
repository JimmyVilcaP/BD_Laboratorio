import java.awt.*;
import javax.swing.*;

public class MenuPrincipal extends JFrame {
    public MenuPrincipal() {
        setTitle("Menú Principal del Sistema de Cooperativa");
        setSize(400, 300);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null); // Centrar ventana

        JPanel panel = new JPanel(new GridLayout(0, 1, 10, 10));
        panel.setBorder(BorderFactory.createTitledBorder("Tablas Referenciales"));

        JButton btnRol = new JButton("🧑‍💼 Rol");
        JButton btnMoneda = new JButton("💰 Moneda");
        JButton btnTipoProducto = new JButton("📦 Tipo de Producto");
        JButton btnUbicacion = new JButton("📍 Ubicación");
        JButton btnTasa = new JButton("% Tasa");
        JButton btnSalir = new JButton("🚪 Salir");

        panel.add(btnRol);
        panel.add(btnMoneda);
        panel.add(btnTipoProducto);
        panel.add(btnUbicacion);
        panel.add(btnTasa);
        panel.add(btnSalir);

        add(panel);

        // Acciones
        btnRol.addActionListener(e -> {
            dispose();
            new RolForm();
        });
        btnMoneda.addActionListener(e -> {
            dispose();
            new MonedaForm();
        });
        btnTipoProducto.addActionListener(e -> {
            dispose();
            new TipoProductoForm();
        });
        btnUbicacion.addActionListener(e -> {
            dispose();
            new UbicacionForm();
        });
        btnTasa.addActionListener(e -> {
            dispose();
            new TasaForm();
        });
        btnSalir.addActionListener(e -> System.exit(0));

        setVisible(true);
    }

    public static void main(String[] args) {
        new MenuPrincipal();
    }
}
