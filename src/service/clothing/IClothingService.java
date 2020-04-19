package service.clothing;

import model.Clothing;

import java.sql.SQLException;
import java.util.List;

public interface IClothingService {
    public List<Clothing> findAll(); //tra ve list danh sach;

    public List<Clothing> findAllClothingCategory();

    public void insert(Clothing clothing) throws SQLException; //Them moi san pham


    public boolean update(Clothing clothing) throws SQLException;

    public boolean remove(int id) throws SQLException;

    public List<Clothing> findByPrice(int price) throws SQLException;


    public List<Clothing> findByStatus(String status) throws SQLException;


    List<Clothing> findAllByStatus(String status);
}
