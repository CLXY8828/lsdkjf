package com.turing.mvc2.bookinfo;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.Map;

import com.turing.framework.dao.Dao;
import com.turing.framework.dao.DaoImpl;

public class BookinfoService {
	Dao dao = new DaoImpl();
	public List<Map<String,Object>> query() throws ClassNotFoundException, SQLException {
		return dao.executeQueryForList("select * from tb_bookinfo");
	}
	public void add(Bookinfo bookinfo) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
		String sql = "insert into tb_bookinfo values(?,?,?,?,?,?,?,?,?,?,?,?)";
		int[] types= new int[12];
		types[0]=Types.INTEGER;
		types[1]=Types.VARCHAR;
		types[2]=Types.VARCHAR;
		types[3]=Types.VARCHAR;
		types[4]=Types.VARCHAR;
		types[5]=Types.VARCHAR;
		types[6]=Types.VARCHAR;
		types[7]=Types.VARCHAR;
		types[8]=Types.VARCHAR;
		types[9]=Types.VARCHAR;
		types[10]=Types.VARCHAR;
		types[11]=Types.VARCHAR;
		Object[] values = new Object[12];
		values[0]=0;
		values[1]=bookinfo.getBookName();
		values[2]=bookinfo.getType();
		values[3]=bookinfo.getPublisher();
		values[4]=bookinfo.getWriter();
		values[5]=bookinfo.getPrice();
		values[6]=bookinfo.getPdate();
		values[7]=bookinfo.getCover();
		values[8]=bookinfo.getInTime();
		values[9]=bookinfo.getNewbook();
		values[10]=bookinfo.getCommend();
		values[11]=bookinfo.getIntroduce();
		dao.executeUpdate(sql, types, values);
	}
	public void delete(String[] ids) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
		String sql = "delete from tb_bookinfo where isbn=?";
		for (int i = 0; i < ids.length; i++) {
			dao.executeUpdate(sql, new int[]{Types.INTEGER}, new Object[]{ids[i]});
		}
		
	}
	public Map<String, Object> editpage(String isbn) throws ClassNotFoundException, SQLException, FileNotFoundException, IOException {
		
		return dao.executeQueryForMap("select * from tb_bookinfo where isbn=?", new int[]{Types.INTEGER}, new Object[]{isbn});
	}
	public void edit(Bookinfo bookinfo) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
		String sql = "update tb_bookinfo set bookName=?,type=?,publisher=?,writer=?,price=?,pdate=?,cover=?,inTime=?,newbook=?,commend=?,introduce=? where isbn=?";
		
		int[] types= new int[12];
		types[11]=Types.INTEGER;
		types[0]=Types.VARCHAR;
		types[1]=Types.VARCHAR;
		types[2]=Types.VARCHAR;
		types[3]=Types.VARCHAR;
		types[4]=Types.VARCHAR;
		types[5]=Types.VARCHAR;
		types[6]=Types.VARCHAR;
		types[7]=Types.VARCHAR;
		types[8]=Types.VARCHAR;
		types[9]=Types.VARCHAR;
		types[10]=Types.VARCHAR;
		Object[] values = new Object[12];
		values[11]=bookinfo.getIdsn();
		values[0]=bookinfo.getBookName();
		values[1]=bookinfo.getType();
		values[2]=bookinfo.getPublisher();
		values[3]=bookinfo.getWriter();
		values[4]=bookinfo.getPrice();
		values[5]=bookinfo.getPdate();
		values[6]=bookinfo.getCover();
		values[7]=bookinfo.getInTime();
		values[8]=bookinfo.getNewbook();
		values[9]=bookinfo.getCommend();
		values[10]=bookinfo.getIntroduce();
		dao.executeUpdate(sql, types, values);
	}

}
