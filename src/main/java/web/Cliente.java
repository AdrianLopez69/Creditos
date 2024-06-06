package web;

public class Cliente {
    private String nombre;
    private String Sexo;
    private int edad;
    private double SueldoMensual;
    private boolean Solicitud;


    public Cliente() {
    }
    public Cliente(String nombre, String Sexo, int edad) {
        this.nombre = nombre;
        this.Sexo = Sexo;
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getSexo() {
        return Sexo;
    }
    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }
    public int getEdad() {
        return edad;
    }
    public void setEdad(int edad) {
        this.edad = edad;
    }
    public double getSueldoMensual() {
        return SueldoMensual;
    }
    public void setSueldoMensual(double SueldoMensual) {
        this.SueldoMensual = SueldoMensual;
    }
    public boolean isSolicitud() {
        return Solicitud;
    }
    public void setSolicitud(boolean Solicitud) {
        this.Solicitud = Solicitud;
    }

}
