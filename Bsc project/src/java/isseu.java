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
public class isseu extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out=resp.getWriter();
    
        String Name=req.getParameter("name");
        String email=req.getParameter("eid");
        String mno=req.getParameter("mno");
        String subject=req.getParameter("Subj");
        String Discription=req.getParameter("Desc");
        String event=req.getParameter("sub");
        
        
        out.println(Name);
        out.println(email);
        out.println(mno);
        out.println(subject);
        out.println(Discription);
                
        Database db=new Database();
        out.println(db.connectdb());
        
       if(event.equals("Issue"))
       {
           String insert=db.Insert("insert into issue(Name, email, Contact_No, subject, Discription)values('"+Name.toString()+"','"+email.toString()+"','"+mno.toString()+"','"+subject.toString()+"','"+Discription.toString()+"')");
           out.println(insert);
       }
    }
}