package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds= new ArrayList<sachbean>();
		
		DungChung dc =new DungChung();
		dc.KetNoi();
		//b2: thiet lap cau lenh sql
		String sql="select * from sach";
		//b3: cho thuc hien cau lenh sql
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		//b3: duyt qua cac loai va luu vao ds
		while(rs.next()) {
			String maloai =rs.getString("maloai");
			String anh =rs.getString("anh");
			String tensach=rs.getString("tensach");
			String tacgia=rs.getString("tacgia");
			long gia =rs.getLong("gia");
			String masach =rs.getString("masach");
			sachbean sach=new sachbean(maloai, anh, tensach, tacgia, gia, masach);
			ds.add(sach);
		} 	rs.close();
			dc.cn.close();
		
		
		return ds;
}
}
