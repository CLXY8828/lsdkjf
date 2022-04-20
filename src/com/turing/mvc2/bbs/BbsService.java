package com.turing.mvc2.bbs;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.Map;

import com.turing.framework.dao.Dao;
import com.turing.framework.dao.DaoImpl;

/**
 * 模型层
 * @author wyh
 */
public class BbsService {

	private Dao dao = new DaoImpl();

	/**
	 * 查询所有
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public List<Map<String, Object>> query() throws ClassNotFoundException, SQLException {
	
		return dao.executeQueryForList("select * from tb_bbs");

	}

	/**
	 * 把bbs对象的数据存进tb_bbs表中
	 * @author wyh
	 * @param bbs
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 * @throws FileNotFoundException 
	 */
	public void add(Bbs bbs) throws FileNotFoundException, ClassNotFoundException, SQLException, IOException {

		String sql  = "insert into tb_bbs values(0,?,?)";
		int[] types = new int[2];
		types[0] = Types.VARCHAR;
		types[1] = Types.VARCHAR;
		
		Object[] values = new Object[2];
		values[0] = bbs.getContent();
		values[1] = bbs.getInTime();
		
		dao.executeUpdate(sql, types, values);
	}

	/**
	 * 根据id查询对应的一条数据
	 * @author wyh
	 * @param id  主键
	 * @return map  一条数据
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	public Map<String, Object> queryById(String id) throws ClassNotFoundException, SQLException {
		
		String sql  = "select * from tb_bbs where id = ?";
		int[] types = { Types.INTEGER };
		Object[] values = { id };

		return dao.executeQueryForMap(sql, types, values);
	}
	
	/**
	 * 修改bbs表
	 * @param bbs
	 * @throws IOException 
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 * @throws FileNotFoundException 
	 */
	public void edit(Bbs bbs) throws FileNotFoundException, ClassNotFoundException, SQLException, IOException {
	
		String sql  = "update tb_bbs set content=?,inTime=? where id=?";
		int[] types = new int[3];
		types[0] = Types.VARCHAR;
		types[1] = Types.VARCHAR;
		types[2] = Types.INTEGER;
		
		Object[] values = new Object[3];
		values[0] = bbs.getContent();
		values[1] = bbs.getInTime();
		values[2] = bbs.getId();
		
		dao.executeUpdate(sql, types, values);
	}

	/**
	 * 修改bbs表,中的一条数据
	 * @param ids  传来的id数组
	 * @throws IOException 
	 * @throws ClassNotFoundException 
	 * @throws FileNotFoundException 
	 * @throws SQLException 
	 */
	public void delete(String[] ids) throws FileNotFoundException, ClassNotFoundException, IOException, SQLException {
	
		for (int i = 0; i < ids.length; i++) {

			dao.executeUpdate("delete from tb_bbs where id = ?", new int[]{Types.INTEGER}, new Object[]{ids[i]});
		}

		
	}
	

	

}
