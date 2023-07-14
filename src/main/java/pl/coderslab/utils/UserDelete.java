package pl.coderslab.utils;

import pl.coderslab.utils.entity.User;
import pl.coderslab.utils.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/delete") public class UserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userIdToDelete = Integer.parseInt(req.getParameter("id"));
        User userToDelete = UserDao.read(userIdToDelete);
        req.setAttribute("userToDelete", userToDelete);
        getServletContext().getRequestDispatcher("/user/delete.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userIdToDelete = Integer.parseInt(req.getParameter("id"));
        String confirmation = req.getParameter("confirmation");
        if(confirmation.equals("Yes")){
            UserDao.delete(userIdToDelete);
            resp.sendRedirect(req.getContextPath() + "/user/list");
        }
        else {
            resp.sendRedirect(req.getContextPath() + "/user/list");
        }
    }
}
