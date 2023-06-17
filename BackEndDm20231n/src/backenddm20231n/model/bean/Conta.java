/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backenddm20231n.model.bean;

/**
 *
 * @author User
 */
public class Conta {
    
    private int id;
    private String nomeConta;
    private String banco;
    private String valor;

    public Conta(int id) {
        this.id = id;
    }

    public Conta(String nomeConta) {
        this.nomeConta = nomeConta;
    }

    public Conta(String nomeConta, String banco, String valor) {
        this.nomeConta = nomeConta;
        this.banco = banco;
        this.valor = valor;
    }

    public Conta(int id, String nomeConta, String banco, String valor) {
        this.id = id;
        this.nomeConta = nomeConta;
        this.banco = banco;
        this.valor = valor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeConta() {
        return nomeConta;
    }

    public void setNomeConta(String nomeConta) {
        this.nomeConta = nomeConta;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        return "Conta{" + "id=" + id + ", nome=" + nomeConta + ", banco=" + banco + ", valor=" + valor + '}';
    }

  
    
}
