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
public class Add_subcat extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String Sid=req.getParameter("subid");
        String name=req.getParameter("Name");
        String Cname=req.getParameter("cname");
        String cfile=req.getParameter("Cfile");
        String Discription=req.getParameter("disc");
        String event=req.getParameter("sub");
        
        out.println(Sid);
        out.println(name);
        out.println(Cname);
        out.println(cfile);
        out.println(Discription);
                        
        Database db=new Database();
        out.println(db.connectdb());
        
         if(event.equals("Insert"))
       {
           String insert=db.Insert("insert into sub_category(name_, catagory_name, imsge, description)values('"+name.toString()+"','"+Cname.toString()+"','Image/"+cfile.toString()+"','"+Discription.toString()+"')");
           out.println(insert);
       }
         
         if(event.equals("Update"))
         {
             String update=db.update("update sub_category set name_='"+name.toString()+"',catagory_name='"+Cname.toString()+"',imsge='Image/"+cfile.toString()+"',description='"+Discription.toString()+"' where sub_id='"+Sid.toString()+"'");
             out.println(update);
         }
         
         if(event.equals("Delete"))
         {
             String delete=db.Delete("delete from sub_category where sub_id='"+Sid.toString()+"'");
             out.println(delete);
         }
    }
    }

