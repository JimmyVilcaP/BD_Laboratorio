public class Ubicacion {
    private int cod;
    private String dep;
    private String pro;
    private String dis;
    private String estado;

    public Ubicacion() {}

    public Ubicacion(int cod, String dep, String pro, String dis, String estado) {
        this.cod = cod;
        this.dep = dep;
        this.pro = pro;
        this.dis = dis;
        this.estado = estado;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    public String getPro() {
        return pro;
    }

    public void setPro(String pro) {
        this.pro = pro;
    }

    public String getDis() {
        return dis;
    }

    public void setDis(String dis) {
        this.dis = dis;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return dep + " - " + pro + " - " + dis;
    }
}