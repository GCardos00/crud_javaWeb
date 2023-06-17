/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n.view;

import backenddm20231n.controller.ControllerPessoasContas;
import backenddm20231n.model.bean.PessoasContas;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class ManterPessoasContas {
    
    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = " 1 - Inserir \n 2 - Alterar \n 3 - buscar \n 4 - excluir \n 5 - Listar " ;
        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        switch (num) {
            case 1:
                inserir();
                break;
            case 2:
                alterar();
                break;
            case 3:
                buscar();
                break;
            case 4:
                excluir();
                break;
            case 5:
                listar();
                break;
            default:
                System.out.println("Opcao inválida");
        }
    }

    private static void inserir() throws SQLException, ClassNotFoundException {
        int idP = Integer.parseInt(JOptionPane.showInputDialog("IDP"));
        int idC = Integer.parseInt(JOptionPane.showInputDialog("IDC"));
        String obs = JOptionPane.showInputDialog("OBS");
        PessoasContas prEnt = new PessoasContas(idP,idC,obs);
        ControllerPessoasContas contPR = new ControllerPessoasContas();
        PessoasContas prSaida = contPR.inserir(prEnt);
        JOptionPane.showMessageDialog(null,prSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        int idP = Integer.parseInt(JOptionPane.showInputDialog("IDP"));
        int idC = Integer.parseInt(JOptionPane.showInputDialog("IDC"));
        String obs = JOptionPane.showInputDialog("OBS");
        PessoasContas prEnt = new PessoasContas(id,idP,idC,obs);
        ControllerPessoasContas contPR = new ControllerPessoasContas();
        PessoasContas prSaida = contPR.alterar(prEnt);
        JOptionPane.showMessageDialog(null,prSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        PessoasContas prEnt = new PessoasContas(id);
        ControllerPessoasContas contPR = new ControllerPessoasContas();
        PessoasContas prSaida = contPR.buscar(prEnt);
        JOptionPane.showMessageDialog(null,prSaida.toString());
        JOptionPane.showMessageDialog(null,prSaida.getP().toString());
        JOptionPane.showMessageDialog(null,prSaida.getC().toString());
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        PessoasContas prEnt = new PessoasContas(id);
        ControllerPessoasContas contPR = new ControllerPessoasContas();
        PessoasContas prSaida = contPR.excluir(prEnt);
        JOptionPane.showMessageDialog(null,prSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String obs = JOptionPane.showInputDialog("OBS");
        PessoasContas pcEnt = new PessoasContas(obs);
        ControllerPessoasContas contPL = new ControllerPessoasContas();
        List<PessoasContas> listaPessoasLogradouros = contPL.listar(pcEnt);
        for (PessoasContas plSaida : listaPessoasLogradouros) {
            JOptionPane.showMessageDialog(null,plSaida.toString());
            JOptionPane.showMessageDialog(null,plSaida.getP().toString());
            JOptionPane.showMessageDialog(null,plSaida.getC().toString());
        }
    }
}
