/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.view;

import backenddm20231n.controller.ControllerConta;
import backenddm20231n.model.bean.Conta;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author FATEC ZONA LESTE
 */
public class ManterConta {
    
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
        String nome = JOptionPane.showInputDialog("NOME");
        String banco = JOptionPane.showInputDialog("BANCO");
        String valor = JOptionPane.showInputDialog("VALOR");
        Conta resEnt = new Conta(nome,banco,valor);
        ControllerConta contRes = new ControllerConta();
        Conta resSaida = contRes.inserir(resEnt);
        JOptionPane.showMessageDialog(null,resSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        String nome = JOptionPane.showInputDialog("NOME");
        String banco = JOptionPane.showInputDialog("BANCO");
        String valor = JOptionPane.showInputDialog("VALOR");
        Conta resEnt = new Conta(id,nome, banco, valor);
        ControllerConta contRes = new ControllerConta();
        Conta resSaida = contRes.alterar(resEnt);
        JOptionPane.showMessageDialog(null,resSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        String nome = JOptionPane.showInputDialog("NOME");
        Conta resEnt = new Conta(nome);
        ControllerConta contRes = new ControllerConta();
        Conta resSaida = contRes.buscar(resEnt);
        JOptionPane.showMessageDialog(null,resSaida.toString());
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Conta resEnt = new Conta(id);
        ControllerConta contRes = new ControllerConta();
        Conta resSaida = contRes.excluir(resEnt);
        JOptionPane.showMessageDialog(null,resSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String nome = JOptionPane.showInputDialog("NOME");
        Conta resEnt = new Conta(nome);
        ControllerConta resUsu = new ControllerConta();
        List<Conta> listarese = resUsu.listar(resEnt);
        for (Conta resSaida : listarese) {
            JOptionPane.showMessageDialog(null,resSaida.toString());
        }
    }


}
