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
public class Booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String Fname=req.getParameter("Fname");
        String Email=req.getParameter("eid");
        String mno=req.getParameter("mno");
        String ano=req.getParameter("ano");
        String Pname=req.getParameter("Pname");
        String Ptype=req.getParameter("Ptype");
        String price=req.getParameter("price");
        String date=req.getParameter("date");
        String event=req.getParameter("sub");
        
        out.println(Fname);
        out.println(Email);
        out.println(mno);
        out.println(ano);
        out.println(Pname);
        out.println(Ptype);
        out.println(price);
        out.println(date);
        
        Database db=new Database();
        out.println(db.connectdb());
        
        if(event.equals("Book Your Tour"))
       {
           String insert=db.Insert("insert into booking(FName,email,Contact_No,Adharcard_No,package_name,package_type,price,Date1)values('"+Fname.toString()+"','"+Email.toString()+"','"+mno.toString()+"','"+ano.toString()+"','"+Pname.toString()+"','"+Ptype.toString()+"','"+price.toString()+"','"+date.toString()+"')");
           out.println(insert);
       }
    }
    }

