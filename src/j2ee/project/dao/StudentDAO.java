package j2ee.project.dao;

import java.util.List;

import j2ee.project.entity.StudentInfo;

public interface StudentDAO {
	public List<StudentInfo> ListFromDAO();

	public StudentInfo getSpecificUser(int theId);

	public StudentInfo getStudentForEdit(int theId);

	//public void updateStudent(StudentInfo studentInfo);

	public void saveStudents(StudentInfo student);

	public void deleteStudent(int theId);

	
}
