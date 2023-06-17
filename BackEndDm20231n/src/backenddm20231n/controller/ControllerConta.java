/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.controller;

import backenddm20231n.model.bean.Conta;
import backenddm20231n.model.dao.DaoConta;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author FATEC ZONA LESTE
 */
public class ControllerConta {
    
    DaoConta daoRes;

    public Conta inserir(Conta resEnt) throws SQLException, ClassNotFoundException {
        daoRes = new DaoConta();
        return daoRes.inserir(resEnt);
    }

    public Conta alterar(Conta resEnt) throws SQLException, ClassNotFoundException {
        daoRes = new DaoConta();
        return daoRes.alterar(resEnt);
    }

    public Conta buscar(Conta resEnt) throws SQLException, ClassNotFoundException {
        daoRes = new DaoConta();
        return daoRes.buscar(resEnt);
    }

    public Conta excluir(Conta resEnt) throws SQLException, ClassNotFoundException {
        daoRes = new DaoConta();
        return daoRes.excluir(resEnt);
    }

     public List<Conta> listar(Conta resEnt) throws SQLException, ClassNotFoundException {
        daoRes = new DaoConta();
        List<Conta> listaRes = daoRes.listar(resEnt);
        return listaRes;
     }
   
}