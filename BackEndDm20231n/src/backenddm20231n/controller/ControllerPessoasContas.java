/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.controller;

import backenddm20231n.model.bean.Conta;
import backenddm20231n.model.bean.Pessoa;
import backenddm20231n.model.bean.PessoasContas;
import backenddm20231n.model.dao.DaoPessoasConta;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author FATEC ZONA LESTE
 */
public class ControllerPessoasContas {
    
    DaoPessoasConta daoPesCon;
    ControllerPessoa contP;
    ControllerConta contC;

    
    public PessoasContas inserir(PessoasContas pesconEnt) throws SQLException, ClassNotFoundException {
        daoPesCon = new DaoPessoasConta();
        return daoPesCon.inserir(pesconEnt);
    }

    public PessoasContas alterar(PessoasContas pesconEnt) throws SQLException, ClassNotFoundException {
        daoPesCon = new DaoPessoasConta();
        return daoPesCon.alterar(pesconEnt);
    }

    public PessoasContas buscar(PessoasContas pesconEnt) throws SQLException, ClassNotFoundException {
        daoPesCon = new DaoPessoasConta();
        PessoasContas pc = daoPesCon.buscar(pesconEnt);
        Pessoa p = new Pessoa(pc.getIdP());
        Conta c = new Conta(pc.getIdC());
        contP = new ControllerPessoa();
        contC = new ControllerConta();
        pc.setP(contP.buscar(p));
        pc.setC(contC.buscar(c));
        return pc;
    }

    public PessoasContas excluir(PessoasContas pesconEnt) throws SQLException, ClassNotFoundException {
        daoPesCon = new DaoPessoasConta();
        return daoPesCon.excluir(pesconEnt);
    }

     public List<PessoasContas> listar(PessoasContas pesconEnt) throws SQLException, ClassNotFoundException {
        daoPesCon = new DaoPessoasConta();
        List<PessoasContas> listaPesConRetornoAux = daoPesCon.listar(pesconEnt);
        List<PessoasContas> listaPesConRetorno = new ArrayList<>();
        for(PessoasContas usupes : listaPesConRetornoAux) {        
            listaPesConRetorno.add(buscar(usupes));
        }
        return listaPesConRetorno;
    }
}
