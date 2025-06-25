public class Rol {
    private int rol_cod; 
    private String rol_rol; 
    private String rol_nom;  
    private String rol_estado;

    public Rol(int rol_cod, String rol_rol, String rol_nom, String rol_estado) {
        this.rol_cod = rol_cod;
        this.rol_rol = rol_rol;
        this.rol_nom = rol_nom;
        this.rol_estado = rol_estado;
    }

    public int getRolCod() {
        return rol_cod;
    }

    public String getRolRol() {
        return rol_rol;
    }

    public String getRolNom() {
        return rol_nom;
    }

    public String getRolEstado() {
        return rol_estado;
    }

    public void setRolCod(int rol_cod) {
        this.rol_cod = rol_cod;
    }

    public void setRolRol(String rol_rol) {
        this.rol_rol = rol_rol;
    }

    public void setRolNom(String rol_nom) {
        this.rol_nom = rol_nom;
    }

    public void setRolEstado(String rol_estado) {
        this.rol_estado = rol_estado;
    }
}
