package Bean;

public class News {
	private int id;   //���ŵ�id
	private String time;  //���ŷ���ʱ��
	private String title; //���ű���
    private String detail; //��Ƹ��������
    private String company;  //��Ƹ���ŷ����Ĺ�˾
	public News() {
		// TODO �Զ����ɵĹ��캯�����
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
    
}
