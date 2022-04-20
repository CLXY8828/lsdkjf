package com.turing.tag;

import java.sql.SQLException;
import java.util.List;

import com.turing.framework.dao.Dao;
import com.turing.framework.dao.DaoImpl;

/**
 * 模型层
 * @author wyh
 */
public class TagService {
	/**
	 * 持久层
	 */
	private Dao dao = new DaoImpl();
	
	/**
	 * 查询tb_user表的所有数据
	 */
	public List<?> queryUser() throws ClassNotFoundException, SQLException {

		return this.dao.executeQueryForList("select * from tb_user");
	}

}
