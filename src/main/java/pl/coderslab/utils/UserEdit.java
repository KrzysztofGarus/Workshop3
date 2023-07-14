package pl.coderslab.utils;

import pl.coderslab.utils.entity.User;
import pl.coderslab.utils.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userIdToEdit = Integer.parseInt(req.getParameter("id"));
        User userToEdit = UserDao.read(userIdToEdit);
        req.setAttribute("userToEdit", userToEdit);
        getServletContext().getRequestDispatcher(getServletContext().getContextPath() +"/user/edit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String userName = req.getParameter("userName");
        String email = req.getParameter("userEmail");
        String password = req.getParameter("userPassword");

        User editedUser = new User(id, userName,email,password);
        UserDao userDao = new UserDao();
        UserDao.update(editedUser);

        resp.sendRedirect(req.getContextPath() + "/user/list");

    }
}
