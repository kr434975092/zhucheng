package Bean;

public class Job {
    private int id;     //���ݱ��е�����
    private String job;   //��н��Χ
    private String salary;  //ְλ���
    private String experience;   //��������
    private String edu;       //ѧ��Ҫ��
    private String advantage;   //ְλ�ջ�
    private String url;         //��˾��ҳ
    private String city;        //����
    private String place;        //�����ַ
    private String company;      //��˾����
    private String jobkind;      //��������   �����̨/����...
    private String attribute;   //��������  ʵϰ֮���
    private String companykind;   //��˾���
    private String number;        //��Ƹ����
    private String duty;   //��ʱ��д��
    private String email;    //���ռ���������
    private String depart;    //��������
	public Job() {
		// TODO �Զ����ɵĹ��캯�����
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	public String getAdvantage() {
		return advantage;
	}
	public void setAdvantage(String advantage) {
		this.advantage = advantage;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
    public String getJobkind() {
		return jobkind;
	}
	public void setJobkind(String jobkind) {
		this.jobkind = jobkind;
	}
	public String getCompanykind() {
		return companykind;
	}
	public void setCompanykind(String companykind) {
		this.companykind = companykind;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAttribute() {
		return attribute;
	}
	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String toString() {
    	return job+" "+company+" "+salary;
    }
}
