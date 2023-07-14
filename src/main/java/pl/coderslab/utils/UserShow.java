package pl.coderslab.utils;

import pl.coderslab.utils.entity.User;
import pl.coderslab.utils.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/show") public class UserShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userIdToShow = Integer.parseInt(req.getParameter("id"));
        User userToShow = UserDao.read(userIdToShow);
        req.setAttribute("userToShow", userToShow);
        getServletContext().getRequestDispatcher(getServletContext().getContextPath() +"/user/show.jsp").forward(req,resp);
    }
}