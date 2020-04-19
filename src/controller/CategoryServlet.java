package controller;

import model.Category;
import model.Clothing;
import service.category.CategoryServiceImpl;
import service.category.ICategoryService;
import service.clothing.ClothingServiceImpl;
import service.clothing.IClothingService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CategoryServlet", urlPatterns = "/category")
public class CategoryServlet extends HttpServlet {
    private final IClothingService clothingService = new ClothingServiceImpl();
    private final ICategoryService categoryService = new CategoryServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        String action = request.getParameter("action");

        try {
            switch (action != null ? action : "") {
                case "createCategory":
                    createCategory(request, response);
                    break;
                case "updateCategory":
                    editCategory(request, response);
                    break;
                default:
                    break;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        String action = request.getParameter("action");

        try {
            switch (action != null ? action : "") {
                case "createCategory":
                    showCreateCategory(request, response);
                    break;
                case "editCategory":
                    showEditCategory(request, response);
                    break;
                case "listCategory":
                    showListCategory(request, response);
                    break;
                case "deleteCategory":
                    deleteCategory(request, response);
                    break;
                case "findByCategoryName":
                    findByCategoryName(request, response);
                    break;
                default:
                    listClothingCategory(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    private void listClothingCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Clothing> clothing = this.clothingService.findAllClothingCategory();
        request.setAttribute("clothing", clothing);
//        List<Category> categories = this.categoryService.findAll();
//        request.setAttribute("categories",categories);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listHome/list_clothing_category.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showListCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,
            IOException, ServletException {
        List<Category> categories = this.categoryService.findAll();
        request.setAttribute("categories", categories);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listCategory/list_category.jsp");
        requestDispatcher.forward(request, response);

    }

    private void createCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,
            IOException, ServletException {
        String name = request.getParameter("name");
        String status = request.getParameter("status");
        Category category = new Category(name, status);
        this.categoryService.insert(category);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listCategory/create_category.jsp");
        requestDispatcher.forward(request, response);

    }


    private void showCreateCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,
            ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listCategory/create_category.jsp");
        requestDispatcher.forward(request, response);
    }


    private void editCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,
            ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String status = request.getParameter("status");

        Category category = new Category(id, name, status);
        this.categoryService.update(category);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listCategory/edit_category.jsp");
        requestDispatcher.forward(request, response);

    }


    private void showEditCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listCategory/edit_category.jsp");
        requestDispatcher.forward(request, response);
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,
            ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        this.categoryService.remove(id);
        List<Category> categories = this.categoryService.findAll();
        request.setAttribute("categories", categories);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listCategory/list_category.jsp");
        requestDispatcher.forward(request, response);
    }

    private void findByCategoryName(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {

        List<Category> categories = this.categoryService.findAll();
        request.setAttribute("categories", categories);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listCategory/list_category.jsp");
        requestDispatcher.forward(request, response);
    }
}

