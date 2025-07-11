import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class UbicacionForm extends JFrame {
    JTextField tfDep = new JTextField(15);
    JTextField tfPro = new JTextField(15);
    JTextField tfDis = new JTextField(15);
    JTextField tfEstado = new JTextField("A", 1);

    JTable tabla;
    DefaultTableModel modelo;
    int flagActualizar = 0;
    String operacion = "";
    int idSeleccionado = -1;

    JButton btnAdicionar = new JButton("Adicionar");
    JButton btnModificar = new JButton("Modificar");
    JButton btnEliminar = new JButton("Eliminar");
    JButton btnInactivar = new JButton("Inactivar");
    JButton btnReactivar = new JButton("Reactivar");
    JButton btnActualizar = new JButton("Actualizar");
    JButton btnCancelar = new JButton("Cancelar");
    JButton btnSalir = new JButton("Salir");

    public UbicacionForm() {
        setTitle("Mantenimiento de Ubicación");
        setSize(750, 550);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout(10, 10));
        getRootPane().setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        setLocationRelativeTo(null);

        tfEstado.setEditable(false);

        // Panel de Registro
        JPanel panelRegistro = new JPanel(new GridLayout(4, 2, 10, 10));
        panelRegistro.setBorder(BorderFactory.createTitledBorder("Registro de Ubicación"));
        panelRegistro.add(new JLabel("Departamento:"));
        panelRegistro.add(tfDep);
        panelRegistro.add(new JLabel("Provincia:"));
        panelRegistro.add(tfPro);
        panelRegistro.add(new JLabel("Distrito:"));
        panelRegistro.add(tfDis);
        panelRegistro.add(new JLabel("Estado:"));
        panelRegistro.add(tfEstado);

        // Panel de Botones
        JPanel panelBotones = new JPanel(new GridLayout(2, 4, 10, 10));
        panelBotones.setBorder(BorderFactory.createEmptyBorder(10, 0, 10, 0));
        panelBotones.add(btnAdicionar);
        panelBotones.add(btnModificar);
        panelBotones.add(btnEliminar);
        panelBotones.add(btnInactivar);
        panelBotones.add(btnReactivar);
        panelBotones.add(btnActualizar);
        panelBotones.add(btnCancelar);
        panelBotones.add(btnSalir);

        // Tabla
        modelo = new DefaultTableModel(new String[]{"ID", "Departamento", "Provincia", "Distrito", "Estado"}, 0) {
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        tabla = new JTable(modelo);
        JScrollPane scrollTabla = new JScrollPane(tabla);
        scrollTabla.setBorder(BorderFactory.createTitledBorder("Tabla Ubicación"));

        add(panelRegistro, BorderLayout.NORTH);
        add(scrollTabla, BorderLayout.CENTER);
        add(panelBotones, BorderLayout.SOUTH);

        listarDatos();

        // Eventos
        btnAdicionar.addActionListener(e -> {
            limpiarCampos();
            operacion = "adicionar";
            flagActualizar = 1;
            tabla.clearSelection();
            tabla.setEnabled(false);
            bloquearBotonesExcepto(btnAdicionar, btnActualizar, btnCancelar, btnSalir);
        });

        btnModificar.addActionListener(e -> {
            int fila = tabla.getSelectedRow();
            if (fila >= 0) {
                idSeleccionado = Integer.parseInt(modelo.getValueAt(fila, 0).toString());
                tfDep.setText(modelo.getValueAt(fila, 1).toString());
                tfPro.setText(modelo.getValueAt(fila, 2).toString());
                tfDis.setText(modelo.getValueAt(fila, 3).toString());
                tfEstado.setText(modelo.getValueAt(fila, 4).toString());
                operacion = "modificar";
                flagActualizar = 1;
                tabla.setEnabled(true);
                bloquearBotonesExcepto(btnModificar, btnActualizar, btnCancelar, btnSalir);
            }
        });

        btnEliminar.addActionListener(e -> {
            int fila = tabla.getSelectedRow();
            if (fila >= 0) {
                idSeleccionado = Integer.parseInt(modelo.getValueAt(fila, 0).toString());
                tfDep.setText(modelo.getValueAt(fila, 1).toString());
                tfPro.setText(modelo.getValueAt(fila, 2).toString());
                tfDis.setText(modelo.getValueAt(fila, 3).toString());
                tfEstado.setText(modelo.getValueAt(fila, 4).toString());
                operacion = "eliminar";
                flagActualizar = 1;
                tabla.setEnabled(true);
                bloquearBotonesExcepto(btnEliminar, btnActualizar, btnCancelar, btnSalir);
            }
        });

        btnInactivar.addActionListener(e -> {
            int fila = tabla.getSelectedRow();
            if (fila >= 0) {
                idSeleccionado = Integer.parseInt(modelo.getValueAt(fila, 0).toString());
                tfDep.setText(modelo.getValueAt(fila, 1).toString());
                tfPro.setText(modelo.getValueAt(fila, 2).toString());
                tfDis.setText(modelo.getValueAt(fila, 3).toString());
                tfEstado.setText(modelo.getValueAt(fila, 4).toString());
                operacion = "inactivar";
                flagActualizar = 1;
                tabla.setEnabled(true);
                bloquearBotonesExcepto(btnInactivar, btnActualizar, btnCancelar, btnSalir);
            }
        });

        btnReactivar.addActionListener(e -> {
            int fila = tabla.getSelectedRow();
            if (fila >= 0) {
                idSeleccionado = Integer.parseInt(modelo.getValueAt(fila, 0).toString());
                tfDep.setText(modelo.getValueAt(fila, 1).toString());
                tfPro.setText(modelo.getValueAt(fila, 2).toString());
                tfDis.setText(modelo.getValueAt(fila, 3).toString());
                tfEstado.setText(modelo.getValueAt(fila, 4).toString());
                operacion = "reactivar";
                flagActualizar = 1;
                tabla.setEnabled(true);
                bloquearBotonesExcepto(btnReactivar, btnActualizar, btnCancelar, btnSalir);
            }
        });

        btnActualizar.addActionListener(e -> actualizar());

        btnCancelar.addActionListener(e -> {
            limpiarCampos();
            flagActualizar = 0;
            operacion = "";
            idSeleccionado = -1;
            tabla.setEnabled(true);
            desbloquearTodosLosBotones();
        });

        btnSalir.addActionListener(e -> {
            dispose();
            new MenuReferencial();
        });

        tabla.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                if (tabla.isEnabled()) {
                    int fila = tabla.getSelectedRow();
                    if (fila >= 0) {
                        idSeleccionado = Integer.parseInt(modelo.getValueAt(fila, 0).toString());
                        tfDep.setText(modelo.getValueAt(fila, 1).toString());
                        tfPro.setText(modelo.getValueAt(fila, 2).toString());
                        tfDis.setText(modelo.getValueAt(fila, 3).toString());
                        tfEstado.setText(modelo.getValueAt(fila, 4).toString());
                    }
                }
            }
        });

        setVisible(true);
    }

    void listarDatos() {
        modelo.setRowCount(0);
        try (Connection conn = ConexionDB.conectar();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM ubicacion")) {
            while (rs.next()) {
                modelo.addRow(new Object[]{
                        rs.getInt("ubi_cod"),
                        rs.getString("ubi_dep"),
                        rs.getString("ubi_pro"),
                        rs.getString("ubi_dis"),
                        rs.getString("ubi_estado")
                });
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, "Error al listar: " + e.getMessage());
        }
    }

    void actualizar() {
        if (flagActualizar == 1) {
            try (Connection conn = ConexionDB.conectar()) {
                PreparedStatement ps;
                switch (operacion) {
                    case "adicionar":
                        ps = conn.prepareStatement("INSERT INTO ubicacion (ubi_dep, ubi_pro, ubi_dis, ubi_estado) VALUES (?, ?, ?, 'A')");
                        ps.setString(1, tfDep.getText());
                        ps.setString(2, tfPro.getText());
                        ps.setString(3, tfDis.getText());
                        ps.executeUpdate();
                        break;
                    case "modificar":
                        ps = conn.prepareStatement("UPDATE ubicacion SET ubi_dep = ?, ubi_pro = ?, ubi_dis = ? WHERE ubi_cod = ?");
                        ps.setString(1, tfDep.getText());
                        ps.setString(2, tfPro.getText());
                        ps.setString(3, tfDis.getText());
                        ps.setInt(4, idSeleccionado);
                        ps.executeUpdate();
                        break;
                    case "eliminar":
                        ps = conn.prepareStatement("UPDATE ubicacion SET ubi_estado = '*' WHERE ubi_cod = ?");
                        ps.setInt(1, idSeleccionado);
                        ps.executeUpdate();
                        break;
                    case "inactivar":
                        ps = conn.prepareStatement("UPDATE ubicacion SET ubi_estado = 'I' WHERE ubi_cod = ?");
                        ps.setInt(1, idSeleccionado);
                        ps.executeUpdate();
                        break;
                    case "reactivar":
                        ps = conn.prepareStatement("UPDATE ubicacion SET ubi_estado = 'A' WHERE ubi_cod = ?");
                        ps.setInt(1, idSeleccionado);
                        ps.executeUpdate();
                        break;
                }

                listarDatos();
                limpiarCampos();
                flagActualizar = 0;
                operacion = "";
                idSeleccionado = -1;
                tabla.setEnabled(true);
                desbloquearTodosLosBotones();
                JOptionPane.showMessageDialog(this, "✅ Acción realizada correctamente");
            } catch (SQLException e) {
                JOptionPane.showMessageDialog(this, "Error al actualizar: " + e.getMessage());
            }
        }
    }

    void limpiarCampos() {
        tfDep.setText("");
        tfPro.setText("");
        tfDis.setText("");
        tfEstado.setText("A");
        tfDep.setEditable(true);
        tfPro.setEditable(true);
        tfDis.setEditable(true);
    }

    void bloquearBotonesExcepto(JButton... permitidos) {
        JButton[] botones = {btnAdicionar, btnModificar, btnEliminar, btnInactivar, btnReactivar, btnActualizar, btnCancelar, btnSalir};
        for (JButton b : botones) b.setEnabled(false);
        for (JButton b : permitidos) b.setEnabled(true);
    }

    void desbloquearTodosLosBotones() {
        JButton[] botones = {btnAdicionar, btnModificar, btnEliminar, btnInactivar, btnReactivar, btnActualizar, btnCancelar, btnSalir};
        for (JButton b : botones) b.setEnabled(true);
    }
}
