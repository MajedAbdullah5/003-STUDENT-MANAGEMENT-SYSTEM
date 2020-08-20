package j2ee.project.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;



@Entity
@Table(name="student_info")
public class StudentInfo {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY )
	@Column(name="id")
	private int id;
	
	@NotNull(message="*is required!")
	@Pattern(regexp="^[a-zA-Z\\s]+",message="invalid name!")
	@Size(min=1,max=25, message="Between 1 to 25 character")
	@Column(name="name")
	private String name;
	
	@NotNull(message="*is required!")
	@Column(name="gender")
	private String gender;
	
	
	@Column(name="major")
	private String major;
	
	@NotNull(message="*is required!")
	@Pattern(regexp="^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$",message="dd/mm/yyyy" )
	@Column(name="birthday") 
	private  String birthday;
	
	@NotNull(message ="*is required!")
	@Min(value=0,message="must be greater than or equal to 0 ")
	@Max(value=100,message="must be less than or equal to 100 ")
	@Column(name="credit")
	private Integer	credit;
	
	@NotNull(message="*is required!")
	//@Pattern(regexp="^[a-zA-Z]{30}",message="*Numeric can't allow!")
	@Column(name="remarks")
	private String remarks;
	
	@NotNull(message="*is required!")
	@Column(name="photo")
	private String photo;
	
	public StudentInfo(){
		
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public Integer getCredit() {
		return credit;
	}

	public void setCredit(Integer credit) {
		this.credit = credit;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "StudentInfo [id=" + id + ", name=" + name + ", gender=" + gender + ", major=" + major + ", birthday="
				+ birthday + ", credit=" + credit + ", remarks=" + remarks + ", photo=" + photo + "]";
	} 
	
	
	
	
	

}
