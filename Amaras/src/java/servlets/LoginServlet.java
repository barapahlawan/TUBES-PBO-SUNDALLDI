package servlets;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/amaras", "root", "");

            // Cek apakah email ada
            String checkEmailSql = "SELECT * FROM pengguna WHERE email=?";
            PreparedStatement checkEmailStmt = conn.prepareStatement(checkEmailSql);
            checkEmailStmt.setString(1, email);
            ResultSet emailRs = checkEmailStmt.executeQuery();

            if (!emailRs.next()) {
                // Email tidak ditemukan
                response.sendRedirect("Login.jsp?error=emailNotRegistered");
            } else {
                // Email ditemukan, cek password
                String checkPasswordSql = "SELECT * FROM pengguna WHERE email=? AND password=?";
                PreparedStatement checkPasswordStmt = conn.prepareStatement(checkPasswordSql);
                checkPasswordStmt.setString(1, email);
                checkPasswordStmt.setString(2, password);
                ResultSet loginRs = checkPasswordStmt.executeQuery();

                if (loginRs.next()) {
                    String fullname = loginRs.getString("fullname");
                    String role = loginRs.getString("role");

                    HttpSession session = request.getSession();
                    session.setAttribute("fullname", fullname);
                    session.setAttribute("email", email);
                    session.setAttribute("role", role);

                    
                    if ("admin".equalsIgnoreCase(role)) {
                        response.sendRedirect("dashboardAdmin.jsp"); 
                    } else {
                        response.sendRedirect("dashboard.jsp");
                    }
                } else {

                    response.sendRedirect("Login.jsp?error=wrongPassword");
                }

                loginRs.close();
                checkPasswordStmt.close();
            }

            emailRs.close();
            checkEmailStmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Login.jsp?error=exception");
        }
    }
}
