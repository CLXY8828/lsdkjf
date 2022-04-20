package com.turing.mvc2.img;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;



public class ImgAction {
	
	ImgService service = new ImgService();
	private String id;
	private List<Map<String, Object>> list;
	private InputStream inputStream;
	private String myFileFileName;
	private Picture picture;
	
	
	
	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	


	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<Map<String, Object>> getList() {
		return list;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}

	public String query() throws ClassNotFoundException, SQLException{
		list=service.query();
		return "query";
	}
	
	public String download() throws ClassNotFoundException, SQLException, FileNotFoundException, IOException{
		
		Map<String, Object> map = service.downloadForid(id);
		System.out.println(map);
		inputStream=(InputStream)map.get("upload");
		myFileFileName = (String) map.get("uploadFileName");
		
		return "download";
		
	}
	
	public String upload() throws ClassNotFoundException, FileNotFoundException, SQLException, IOException{
		
		service.save(picture);
		
		return "requery";
	}
	
	public String addpage(){
		return "addpage";
	}
	
}
