package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	
	public ArrayList<giohangbean> ds=new ArrayList<giohangbean>();
	public void Themm(String masach,String tensach, long gia, long soluong) {
		for(giohangbean g:ds)
			if(g.getMasach().equals(masach)) {
				g.setSoluong(g.getSoluong()+soluong);
				return;
			}
		giohangbean gh=new giohangbean(masach, tensach, gia, soluong);
		ds.add(gh);	
		}
	
	public void SuaGiohang(String masach,String tensach, long gia, long soluong) {
		for(giohangbean g:ds)
			if(g.getMasach().equals(masach)) {
				g.setSoluong(soluong);
				return;
			}
		giohangbean gh=new giohangbean(masach, tensach, gia, soluong);
		ds.add(gh);	
		}
	
	
	public void Xoa(String masach) {
		for(giohangbean g:ds)
			if(g.getMasach().equals(masach)) {
				ds.remove(g);
				return;
			}
	}
	
	public long Tong() {
		long s=0;
		for(giohangbean g:ds)
			s+=g.getThanhtien();
			return s;
	}
	public long sumOfAmount() { 	
		return ds.size();
		}

}
	