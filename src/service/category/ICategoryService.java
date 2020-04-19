package service.category;

import model.Category;

import java.sql.SQLException;
import java.util.List;

public interface ICategoryService {
    public List<Category> findAll(); //tra ve list danh sach;

    public void insert(Category category) throws SQLException; //Them moi san pham


    public boolean update(Category category) throws SQLException;

    public boolean remove(int id) throws SQLException;

    public List<Category> findByCategoryName(String name) throws SQLException;

}

