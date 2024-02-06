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
public class Payment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
  PrintWriter out=resp.getWriter();
        
        String cno=req.getParameter("Cno");
        String Card_Holder_Name =req.getParameter("CHN");
        String cvv=req.getParameter("cvv");
        String expdate=req.getParameter("Expdate");
        String event=req.getParameter("sub");
        
        out.println(cno);
        out.println(Card_Holder_Name);
        out.println(cvv);
        out.println(expdate);
                
        Database db=new Database();
        out.println(db.connectdb());
        
        if(event.equals("Pay"))
       {
           String insert=db.Insert("insert into payment(Card_no, C_Holder_name, CVV, Expiry_Date)values('"+cno.toString()+"','"+Card_Holder_Name.toString()+"','"+cvv.toString()+"','"+expdate.toString()+"')");
           out.println(insert);
       }
    }
    }

