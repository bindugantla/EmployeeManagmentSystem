package emss;

public class Emp
{
	int id;
	String name;
	String email;
	String password;
	long salary;
	int dno;
	public Emp(int id, String name, String email, String password, long salary, int dno) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.salary = salary;
		this.dno = dno;
	}
	public Emp()
	{
		
	}
	@Override
	public String toString() {
		return "Emp [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", salary=" + salary
				+ ", dno=" + dno + "]";
	}
	
	

}
