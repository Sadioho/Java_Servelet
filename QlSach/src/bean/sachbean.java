package bean;

public class sachbean {
	private String maloai;
	private String anh;
	private String tensach;
	private String tacgia;
	private long gia;
	private String masach;
	public sachbean(String maloai, String anh, String tensach, String tacgia, long gia, String masach) {
		super();
		this.maloai = maloai;
		this.anh = anh;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.gia = gia;
		this.masach = masach;
	}
	
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
}
