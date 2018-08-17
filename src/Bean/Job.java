package Bean;

public class Job {
    private int id;     //数据表中的索引
    private String job;   //月薪范围
    private String salary;  //职位类别
    private String experience;   //工作经验
    private String edu;       //学历要求
    private String advantage;   //职位诱惑
    private String url;         //公司主页
    private String city;        //城市
    private String place;        //具体地址
    private String company;      //公司名称
    private String jobkind;      //工作种类   比如后台/技术...
    private String attribute;   //工作性质  实习之类的
    private String companykind;   //公司类别
    private String number;        //招聘人数
    private String duty;   //暂时先写死
    private String email;    //接收简历的邮箱
    private String depart;    //所属部门
	public Job() {
		// TODO 自动生成的构造函数存根
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
