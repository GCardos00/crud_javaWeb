/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.model.dao;

import backenddm20231n.model.bean.Conta;
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
public class DaoConta {

private final Connection c;
    
    public DaoConta() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Conta excluir(Conta resEnt) throws SQLException{
        String sql = "delete from conta WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,resEnt.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return resEnt;
    }
    
    public Conta buscar(Conta resEnt) throws SQLException{
        String sql = "select * from conta WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,resEnt.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            Conta resSaida = null;
            while (rs.next()) {      
            // criando o objeto Usuario
                resSaida = new Conta(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4));
            // adiciona o usu à lista de usus
            }
            stmt.close();
        return resSaida;
   }

    public Conta inserir(Conta resEnt) throws SQLException{
        String sql = "insert into conta" + " (nomeconta, banco, valor)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,resEnt.getNomeConta());
        stmt.setString(2,resEnt.getBanco());
        stmt.setString(3,resEnt.getValor());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            resEnt.setId(id);
        }
        stmt.close();
        return resEnt;
    }

    public Conta alterar(Conta resEnt) throws SQLException{
        String sql = "UPDATE conta SET nomeconta = ?, banco = ?, valor = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,resEnt.getNomeConta());
        stmt.setString(2,resEnt.getBanco());
        stmt.setString(3,resEnt.getValor());
        stmt.setInt(4,resEnt.getId());

        // executa
        stmt.execute();
        stmt.close();
        return resEnt;
    }

   public List<Conta> listar(Conta resEnt) throws SQLException{
        // usus: array armazena a lista de registros

        List<Conta> rese = new ArrayList<>();
        
        String sql = "select * from conta where nomeconta like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + resEnt.getNomeConta() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Conta res = new Conta(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4));
            // adiciona o usu à lista de usus
            rese.add(res);
        }
        
        rs.close();
        stmt.close();
        return rese;
   
   }

    
}
