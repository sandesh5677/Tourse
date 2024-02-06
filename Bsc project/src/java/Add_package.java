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
public class Add_package extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
        
        String pakid=req.getParameter("pid");
        String name=req.getParameter("name");
        String tour_type=req.getParameter("Ttype");
        String price=req.getParameter("price");
        String details=req.getParameter("det");
        String duration=req.getParameter("Duration");
        String from=req.getParameter("L_from");
        String to=req.getParameter("L_to");
        String chose_file=req.getParameter("Cfile");
        String event=req.getParameter("sub");
        
        out.println(pakid);
        out.println(name);
        out.println(tour_type);
        out.println(price);
        out.println(details);
        out.println(duration);
        out.println(from);
        out.println(to);
        out.println(chose_file);
        
        Database db=new Database();
        out.println(db.connectdb());
        
         if(event.equals("Insert"))
       {
           String insert=db.Insert("insert into add_package(Name, Tour_type, Price, Details, Duration, Locatin_from, Locatin_to, Image)values('"+name.toString()+"','"+tour_type.toString()+"','"+price.toString()+"','"+details.toString()+"','"+duration.toString()+"','"+from.toString()+"','"+to.toString()+"','"+chose_file.toString()+"')");
           out.println(insert);
       }
         
         if(event.equals("Update"))
         {
             String update=db.update("update add_package set Name='"+name.toString()+"',Tour_type='"+tour_type.toString()+"',Price='"+price.toString()+"',Details='"+details.toString()+"',Duration='"+duration.toString()+"',Locatin_from='"+from.toString()+"',Locatin_to='"+to.toString()+"',Image='"+chose_file.toString()+"' where pid='"+pakid.toString()+"' ");
             out.println(update);
         }
         
         if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from add_package where pid='"+pakid.toString()+"'");
             out.println(delete);
         }
    }
}