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
public class ad_register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String Fname=req.getParameter("Fname");
        String address=req.getParameter("Add");
        String Email=req.getParameter("eid");
        String cno=req.getParameter("cno");
        String Gender=req.getParameter("gen");
        String Uname=req.getParameter("uname");
        String password=req.getParameter("pass");
        String Cpassword=req.getParameter("Cpass");
        String event=req.getParameter("sub");
        
        out.println(Fname);
        out.println(address);
        out.println(Email);
        out.println(cno);
        out.println(Gender);
        out.println(Uname);
        out.println(password);
        out.println(Cpassword);
        
        Database db=new Database();
        out.println(db.connectdb());
    
     if(event.equals("Register here"))
       {
           String insert=db.Insert("insert into ad_registation(name_,address,Email,contact_no,Gender,U_name, Password,C_password)values('"+Fname.toString()+"','"+address.toString()+"','"+Email.toString()+"','"+cno.toString()+"','"+Gender.toString()+"','"+Uname.toString()+"','"+password.toString()+"','"+Cpassword.toString()+"')");
           out.println(insert);
       }
    
    
    }
}