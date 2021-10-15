package modelo;

/**
 *
 * @author soporte
 */
public class Operadores {

    private double primero;
    private double segundo;
    private String resultado;

    public Operadores() {
        this.primero = 0;
        this.segundo = 0;
        this.resultado = "";
    }

    public Operadores(double primero, double segundo, String resultado) {
        this.primero = primero;
        this.segundo = segundo;
        this.resultado = resultado;
    }

    public double getPrimero() {
        return primero;
    }

    public void setPrimero(double primero) {
        this.primero = primero;
    }

    public double getSegundo() {
        return segundo;
    }

    public void setSegundo(double segundo) {
        this.segundo = segundo;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }

    public String operacion(char op) {
        switch (op) {
            case '+':
                this.resultado = String.valueOf(primero + segundo);
                break;
            case '-':
                this.resultado = String.valueOf(primero - segundo);
                break;
            case '*':
                this.resultado = String.valueOf(primero * segundo);
                break;
            case '/':
                this.resultado = String.valueOf(primero / segundo);
                break;
            default:
                this.resultado = "No es un Operador";
                break;
        }

        return this.resultado;
    }

}
