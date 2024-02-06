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
public class userlogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();
        
        String uname=req.getParameter("uname");
        String pas=req.getParameter("passw");
        String btn=req.getParameter("sub");
        
        out.println(uname);
        out.println(pas);
        
        Database db=new Database();
        out.println(db.connectdb());
        
        if(btn.equals("Login"))
        {
            String insert=db.Insert("insert into user_login(User_name, Password)values('"+uname.toString()+"','"+pas.toString()+"')");
            out.println(insert);
                  
        }
    }

    
}