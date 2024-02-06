/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class Ad_cat extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String catid=req.getParameter("Cid");
        String name=req.getParameter("Name");
        String description=req.getParameter("disc");
        String File=req.getParameter("file");
        String event=req.getParameter("sub");
        
        out.println(catid);
        out.println(name);
        out.println(description);
        out.println(File);
        
  Database db=new Database();
        out.println(db.connectdb());
                
    
        if(event.equals("Insert"))
       {
           String insert=db.Insert("insert into add_category( name, Discription, image )value('"+name.toString()+"','"+description.toString()+"','Image"+File.toString()+"')");
           out.println(insert);
       }
        
        if(event.equals("Update"))
        {
            String update=db.update("update add_category set Name='"+name.toString()+"',Discription='"+description.toString()+"',image='"+File.toString()+"'where category_id='"+catid+"' ");
            out.println(update);
          
        }
        
        if(event.equals("Delete"))
        {
            String delete=db.Delete("delete from add_category where  category_id='"+catid+"' ");
            out.println(delete);
        }
        
        if(event.equals("search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName ("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection ("jdbc:mysql://localhost:3306/sample","root","root");
                st=cn.createStatement();
                String sql="select * from add_product where id='"+catid.toString()+"'";
                
                ResultSet rs=st.executeQuery(sql);
                
                while (rs.next())
                {
                    req.setAttribute("name", rs.getString("name"));
                    req.setAttribute("des", rs.getString("name"));
                    
                    
                    req.getRequestDispatcher("add_cat.jsp").forward(req, resp);
                }
            }
            catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
        
    }
    }