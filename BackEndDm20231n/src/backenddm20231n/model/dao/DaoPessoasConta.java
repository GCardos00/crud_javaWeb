/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.model.dao;

import backenddm20231n.model.bean.PessoasContas;
import backenddm20231n.util.ConexaoDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author FATEC ZONA LESTE
 */
public class DaoPessoasConta {

private final Connection c;
    
    public DaoPessoasConta() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public PessoasContas excluir(PessoasContas pesresEnt) throws SQLException{
        String sql = "delete from pessoas_contas WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,pesresEnt.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return pesresEnt;
    }
    
    public PessoasContas buscar(PessoasContas pesresEnt) throws SQLException{
        String sql = "select * from pessoas_contas WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,pesresEnt.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            PessoasContas pesresSaida = null;
            while (rs.next()) {      
            // criando o objeto Usuario
                pesresSaida = new PessoasContas(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getString(4));
            // adiciona o usu à lista de usus
            }
            stmt.close();
        return pesresSaida;
   }

    public PessoasContas inserir(PessoasContas pesresEnt) throws SQLException{
        String sql = "insert into pessoas_contas" + "(idP, idC, obs)" + " values (?,?,?)";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1,pesresEnt.getIdP());
        stmt.setInt(2,pesresEnt.getIdC());
        stmt.setString(3,pesresEnt.getObs());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            pesresEnt.setId(id);
        }
        stmt.close();
        return pesresEnt;
    }

    public PessoasContas alterar(PessoasContas pesresEnt) throws SQLException{
        String sql = "UPDATE pessoas_contas SET idP = ?, idC = ?, obs = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,pesresEnt.getIdP());
        stmt.setInt(2,pesresEnt.getIdC());
        stmt.setString(3,pesresEnt.getObs());
        stmt.setInt(4,pesresEnt.getId());

        // executa
        stmt.execute();
        stmt.close();
        return pesresEnt;
    }

   public List<PessoasContas> listar(PessoasContas pesresEnt) throws SQLException{
        // usus: array armazena a lista de registros

        List<PessoasContas> pesrese = new ArrayList<>();
        
        String sql = "select * from pessoas_contas where obs like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + pesresEnt.getObs()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            PessoasContas pesres = new PessoasContas(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4));
            // adiciona o usu à lista de usus
            pesrese.add(pesres);
        }
        
        rs.close();
        stmt.close();
        return pesrese;
   
   }

    
}