package j2ee.project.service;

import java.util.List;

import j2ee.project.entity.StudentInfo;

public interface StudentDaoService {
public List<StudentInfo> ListFromService();

public StudentInfo getStudent(int theId);

public StudentInfo getStudentForEdit(int theId);

//public void updateStudent(StudentInfo studentInfo);

public void saveStudents(StudentInfo student);

public void deleteStudent(int theId);
}
