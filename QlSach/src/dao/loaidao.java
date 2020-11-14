package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception {
		ArrayList<loaibean> ds = new ArrayList<loaibean>();

		/*
		 * ds.add(new loaibean("s1", "Bí quyết cuộc sống")); ds.add(new loaibean("s2",
		 * "Địa lý")); ds.add(new loaibean("s3", "Hóa học")); ds.add(new loaibean("s4",
		 * "Ngoại ngữ")); ds.add(new loaibean("s5", "Công nghệ thông tin")); ds.add(new
		 * loaibean("s6", "BookType")); 
		 */
		//b1:ket noi cao sql
		DungChung dc =new DungChung();
		dc.KetNoi();
		//b2: thiet lap cau lenh sql
		String sql="select * from loai";
		//b3: cho thuc hien cau lenh sql
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		//b3: duyt qua cac loai va luu vao ds
		while(rs.next()) {
			String maloai =rs.getString("maloai");
			String tenloai = rs.getString("tenloai");
			loaibean loai=new loaibean(maloai, tenloai);
			ds.add(loai);
		} 	rs.close();
			dc.cn.close();
		
		return ds;

	}
}
