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
 * @author DELL
 */
public class u_register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String F_Name=req.getParameter("Fname");
        String add=req.getParameter("address");
        String email=req.getParameter("Eid");
        String contact=req.getParameter("cno");
        String gender=req.getParameter("gender");
        String uname=req.getParameter("uname");
        String password=req.getParameter("Pass");
        String c_password=req.getParameter("CPass");
        String event=req.getParameter("sub");
        
        out.println(F_Name);
        out.println(add);
        out.println(email);
        out.println(contact);
        out.println(gender);
        out.println(uname);
        out.println(password);
        out.println(c_password);
        
        Database db=new Database();
        out.println(db.connectdb());
        
       if(event.equals("Register here"))
       {
           String insert=db.Insert("insert into user_register(Name,Address,email,contact_no,Gender,U_name,pass,cpass)values('"+F_Name.toString()+"','"+add.toString()+"','"+email.toString()+"','"+contact.toString()+"','"+gender.toString()+"','"+uname.toString()+"','"+password.toString()+"','"+c_password.toString()+"')");
           out.println(insert);
       }
    }

    
}