
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL
 */
public class Database {
    
    
    Connection cn=null;
    Statement st=null;
    
    String connectdb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourist","root","root");
            return("connection successfully");
        
        }
        catch(Exception ex)
        {
            return (ex.toString());
        
        }
    
    }
    String Insert(String sql)
    {
        try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return("record inserted");
        }
        catch(Exception ex)
        {
            return(ex.toString());
        }
    
    }
    
        String update (String sql)
        {
            try
            {
                st=cn.createStatement();
                st.executeUpdate(sql);
                return("Record updated");
            }
            catch(Exception ex)
            {
                return (ex.toString());
            }
        }
        
        String Delete(String sql)
        
        {
            try
            {
                st=cn.createStatement ();
                st.executeUpdate(sql);
                return("Record Deleted");
            }
            catch(Exception ex)
            {
                return (ex.toString());
            }
        }
                
    
    
}

