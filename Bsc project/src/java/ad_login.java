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
public class ad_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String Uname=req.getParameter("uname");
        String password=req.getParameter("pass");
        String event=req.getParameter("sub");
        
        
        out.println(Uname);
        out.println(password);
                
        Database db=new Database();
        out.println(db.connectdb());
        
         if(event.equals("Login"))
       {
           String insert=db.Insert("insert into ad_login(User_name, Password)values('"+Uname.toString()+"','"+password.toString()+"')");
           out.println(insert);
       }
    }
    }