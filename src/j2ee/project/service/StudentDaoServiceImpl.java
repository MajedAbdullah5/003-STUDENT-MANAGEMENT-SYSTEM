package j2ee.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import j2ee.project.dao.StudentDAO;
import j2ee.project.entity.StudentInfo;
@Service
public class StudentDaoServiceImpl implements StudentDaoService {
	
	@Autowired
	private StudentDAO studentdao;
	
	@Override
	@Transactional
	public List<StudentInfo> ListFromService() {
		return studentdao.ListFromDAO();
	}

	@Override
	@Transactional
	public StudentInfo getStudent(int theId) {
		return studentdao.getSpecificUser(theId);
	}

	@Override
	@Transactional
	public StudentInfo getStudentForEdit(int theId) {	
		return studentdao.getStudentForEdit(theId);
	}

//	@Override
//	@Transactional
//	public void updateStudent(StudentInfo studentInfo) {
//		studentdao.updateStudent(studentInfo);
//		
//	}

	@Override
	@Transactional
	public void saveStudents(StudentInfo student) {
		studentdao.saveStudents(student);
		
	}

	@Override
	@Transactional
	public void deleteStudent(int theId) {
		studentdao.deleteStudent(theId);
	}

	
	
}
