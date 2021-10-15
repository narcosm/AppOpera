package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import modelo.Operadores;
import vista.Principal;

/**
 *
 * @author soporte
 */
public class ControlOperaciones implements ActionListener {

    private Principal objVista;
    private Operadores objModelo;

    public ControlOperaciones() {
        this.objVista = new Principal();
        this.objModelo = new Operadores();
        objVista.setVisible(true);
        objVista.getBtnVerificar().addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == objVista.getBtnVerificar()) {
            
            String txt1 = objVista.getTxtPrimero().getText();
            double n1 = Double.parseDouble(txt1);
            objModelo.setPrimero(n1);
            
//            String txt2 = objVista.getTxtSegundo().getText();
//            double n2 = Double.parseDouble(txt2);
//            objModelo.setSegundo(n2);
            
             objModelo.setSegundo(Double.parseDouble(objVista.getTxtSegundo().getText()));
             
             String res =objModelo.operacion(objVista.getTxtOperador().getText().charAt(0));
             
             objVista.getTxtResultado().setText(res);
        }
    }

}
