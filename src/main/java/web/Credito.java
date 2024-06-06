package web;

public class Credito {
    private double monto;
    private int plazo;
    private double tasaInteres;
    private double pagoMensual;

    public Credito(){

    }

    public Credito(double monto, int plazo,double tasaInteres,double pagoMensual) {
        this.monto = monto;
        this.plazo = plazo;
        this.tasaInteres = tasaInteres;
        this.pagoMensual = pagoMensual;
    }
    public double getMonto() {
        return monto;
    }
    public void setMonto(double monto) {
        this.monto = monto;
    }
    public int getPlazo() {
        return plazo;
    }
    public void setPlazo(int plazo) {
        this.plazo = plazo;
    }
    public double getTasaInteres() {
        return tasaInteres;
    }
    public void setTasaInteres(double tasaInteres) {
        this.tasaInteres = tasaInteres;
    }
    public double getPagoMensual() {
        return pagoMensual;
    }
    public void setPagoMensual(double pagoMensual) {
        this.pagoMensual = pagoMensual;
    }
    public double interes(){
        return monto*(tasaInteres/100);
    }
    public void calcularPagoMensual() {
        double total = monto + interes();
        this.pagoMensual = total / plazo;
    }



}
