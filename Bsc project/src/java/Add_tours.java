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
public class Add_tours extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();
        
        String tid=req.getParameter("Tid");
        String name=req.getParameter("Name");
        String Sub_name=req.getParameter("sub_name");
        String day=req.getParameter("Day");
        String night=req.getParameter("Night");
        String Description=req.getParameter("disc");
        String cfile=req.getParameter("Cfile");
        String Price=req.getParameter("price");
        String event=req.getParameter("sub");
        
        out.println(tid);
        out.println(name);
        out.println(Sub_name);
        out.println(day);
        out.println(night);
        out.println(Description);
        out.println(cfile);
        out.println(Price);
        
        Database db=new Database();
        out.println(db.connectdb());
        
        if(event.equals("Insert"))
       {
           String insert=db.Insert("insert into add_tours( name_, sub_name, Day,night, description, imsge, price)value('"+name.toString()+"','"+Sub_name.toString()+"','"+day.toString()+"','"+night.toString()+"','"+Description.toString()+"','"+cfile.toString()+"','"+Price.toString()+"')");
           out.println(insert);
       }
        
        if(event.equals("Update"))
        {
            String update=db.update("update add_tours set name_='"+name.toString()+"',sub_name='"+Sub_name.toString()+"',Day='"+day.toString()+"',night='"+night.toString()+"',description='"+Description.toString()+"',imsge='"+cfile.toString()+"',price='"+Price.toString()+"' where Tour_id='"+tid.toString()+"'");
            out.println(update);
        }
        
        if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from add_tours where Tour_id='"+tid.toString()+"'");
             out.println(delete);
         }
    }
    }

