package com.web.dao;

import com.web.pojo.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    public void insert(User user);
    @Select("select * from tb_user where name=#{name} and pwd=#{pwd}")
    public List<User> login(User user);
    @Select("select * from tb_user ")
    public List<User> findAll();
    @Delete("delete from tb_user where id=#{id}")
    public void delete(Integer id);
    @Select("select * from tb_user where id=#{id}")
    public User findById(Integer id);
    @Update("update tb_user set name=#{name},pwd=#{pwd},sex=#{sex},age=#{age},phone=#{phone} where id=#{id}")
    public void update(User user);
    @Select({"<script>"
            +"select * from tb_user"
            +"<where>"
            + "<if test='name!=null'> and name like concat('%',#{name},'%')</if>"
            + "<if test='sex!=null'> and sex like concat('%',#{sex},'%')</if>"
            + "<if test='age!=null'> and age like concat('%',#{age},'%')</if>"
            + "<if test='phone!=null'> and phone like concat('%',#{phone},'%')</if>"
            +"</where>"
            + "</script>"})
    public List<User> findByUser(User user);
}
