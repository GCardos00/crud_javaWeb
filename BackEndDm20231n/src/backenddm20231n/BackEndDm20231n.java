/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n;

import backenddm20231n.view.ManterConta;
import backenddm20231n.view.ManterPessoa;
import backenddm20231n.view.ManterPessoasContas;
import backenddm20231n.view.ManterUsuario;
import backenddm20231n.view.ManterUsuariosPessoas;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class BackEndDm20231n {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        if(ManterUsuario.validar()) {
            menu();
        } else {
            JOptionPane.showMessageDialog(null,"Usuario Inválido");            
        }
    }

    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = "SISTEMA DE GERENCIAMENTO DE HOTEL \n 0 - Sair \n 1 - Usuario \n 2 - Pessoa \n 3 - Contas \n 4 - Pessoas Contas \n 5 - Usuarios Pessoas \n";
        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        switch (num) {
            case 0:
                int sair = JOptionPane.showConfirmDialog(null,"Deseja Sair");
                if (sair > 0) menu();
                break;
            case 1:
                ManterUsuario.menu();
                break;
            case 2:
                ManterPessoa.menu();
                break;
            case 3:
                ManterConta.menu();
                break;
            case 4:
                ManterPessoasContas.menu();
                break;
            case 5:
                ManterUsuariosPessoas.menu();
                break;

            default:
                System.out.println("Opção inválido");
        }
    }
    
}