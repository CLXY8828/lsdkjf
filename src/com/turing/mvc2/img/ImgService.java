package com.turing.mvc2.img;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.Map;

import com.turing.framework.dao.Dao;
import com.turing.framework.dao.DaoImpl;

public class ImgService {
	Dao dao = new DaoImpl();
	public List<Map<String,Object>> query() throws ClassNotFoundException, SQLException {
		return dao.executeQueryForList("select * from picture");
	}
	
	public Map<String, Object> downloadForid(String id) throws ClassNotFoundException, SQLException, FileNotFoundException, IOException {
		
		return dao.executeQueryForMap("select * from picture where id=?",new int[]{Types.INTEGER}, new Object[]{id});
	}
	
	public void save(Picture picture) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
		dao.executeUpdate("insert into picture values(0,?,?,?,?,?)",new int[]{Types.VARCHAR,Types.BLOB,Types.VARCHAR,Types.VARCHAR,Types.VARCHAR}, new Object[]{picture.name,picture.upload,picture.uploadFileName,picture.uploadContentType,picture.remark});
		
	}

}
