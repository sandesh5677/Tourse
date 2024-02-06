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
public class Enquiry extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out=resp.getWriter();
       
        String Fname=req.getParameter("Ename");
        String eid=req.getParameter("eid");
        String mno=req.getParameter("mno");
        String ano=req.getParameter("subj");
        String Pname=req.getParameter("Desc");
        String event=req.getParameter("sub");
        
        out.println(Fname);
        out.println(eid);
        out.println(mno);
        out.println(ano);
        out.println(Pname);
        
        Database db=new Database();
        out.println(db.connectdb());
        
        if(event.equals("Enquiry"))
       {
           String insert=db.Insert("insert into enquiry(Name, Email, cno, Subj, description)values('"+Fname.toString()+"','"+eid.toString()+"','"+mno.toString()+"','"+ano.toString()+"','"+Pname.toString()+"')");
           out.println(insert);
       }
    }
}
        