/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class Feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
  
      PrintWriter out=resp.getWriter();
        
        String Name=req.getParameter("Name");
        String contact=req.getParameter("con");
        String Email=req.getParameter("eid");
        String event=req.getParameter("sub");
        
        out.println(Name);
        out.println(contact);
        out.println(Email);
                        
   Database db=new Database();
        out.println(db.connectdb());
        
        if(event.equals("submit"))
       {
           String insert=db.Insert("insert into feedback(Name, Contact_No, Email)values('"+Name.toString()+"','"+contact.toString()+"','"+Email.toString()+"')");
           out.println(insert);
       }
    }
    }

