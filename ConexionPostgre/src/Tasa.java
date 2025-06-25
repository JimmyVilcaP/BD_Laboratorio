public class Tasa {
    private int proCod;
    private String tasIden;
    private String tasDesc;
    private double tasTasa;
    private short tasPlazDias;
    private java.sql.Date tasIniFec;
    private java.sql.Date tasFinFec;
    private String tasEstado;

    // Constructor vacío
    public Tasa() {}

    // Constructor con parámetros
    public Tasa(int proCod, String tasIden, String tasDesc, double tasTasa,
                short tasPlazDias, java.sql.Date tasIniFec, java.sql.Date tasFinFec, String tasEstado) {
        this.proCod = proCod;
        this.tasIden = tasIden;
        this.tasDesc = tasDesc;
        this.tasTasa = tasTasa;
        this.tasPlazDias = tasPlazDias;
        this.tasIniFec = tasIniFec;
        this.tasFinFec = tasFinFec;
        this.tasEstado = tasEstado;
    }

    // Getters y Setters
    public int getProCod() {
        return proCod;
    }

    public void setProCod(int proCod) {
        this.proCod = proCod;
    }

    public String getTasIden() {
        return tasIden;
    }

    public void setTasIden(String tasIden) {
        this.tasIden = tasIden;
    }

    public String getTasDesc() {
        return tasDesc;
    }

    public void setTasDesc(String tasDesc) {
        this.tasDesc = tasDesc;
    }

    public double getTasTasa() {
        return tasTasa;
    }

    public void setTasTasa(double tasTasa) {
        this.tasTasa = tasTasa;
    }

    public short getTasPlazDias() {
        return tasPlazDias;
    }

    public void setTasPlazDias(short tasPlazDias) {
        this.tasPlazDias = tasPlazDias;
    }

    public java.sql.Date getTasIniFec() {
        return tasIniFec;
    }

    public void setTasIniFec(java.sql.Date tasIniFec) {
        this.tasIniFec = tasIniFec;
    }

    public java.sql.Date getTasFinFec() {
        return tasFinFec;
    }

    public void setTasFinFec(java.sql.Date tasFinFec) {
        this.tasFinFec = tasFinFec;
    }

    public String getTasEstado() {
        return tasEstado;
    }

    public void setTasEstado(String tasEstado) {
        this.tasEstado = tasEstado;
    }
}
