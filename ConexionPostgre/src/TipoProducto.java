public class TipoProducto {
    private int cod;
    private String nombre;
    private String estado;

    public TipoProducto() {}

    public TipoProducto(int cod, String nombre, String estado) {
        this.cod = cod;
        this.nombre = nombre;
        this.estado = estado;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return nombre;
    }
}
