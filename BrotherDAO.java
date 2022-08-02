
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author yomol
 */
public class BrotherDAO {

    protected Connection con;

    public BrotherDAO(String datasource) {
        try {
            InitialContext ctx = new InitialContext();
            DataSource ds = (DataSource) ctx.lookup(datasource);

            //Connect to a database
            con = ds.getConnection();

            System.out.println("Database Connected");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    

    public String getUserName(String Username) throws SQLException {
      
        String queryString = "select ?" 
                + "from LoginPage";
        PreparedStatement preparedStatement = con.prepareStatement(queryString);
        preparedStatement.setString(1, Username);
        
        ResultSet rset = preparedStatement.executeQuery();
        
        if (rset.next()){
            String databaseusername = rset.getString(1);
           
            
        return databaseusername;
        }
        return null;
        
        
    }
    
}

