package com.turing.framework.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class Test {

	/**
	 * @param args
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
	
		
		Dao dao = new DaoImpl();
		List<Map<String, Object>> list = dao.executeQueryForList("select * from tb_user");
		
		for (Map<String, Object> map : list) {
			System.out.println( map );
		}
		
		
	}

}
