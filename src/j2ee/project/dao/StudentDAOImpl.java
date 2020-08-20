package j2ee.project.dao;

import java.io.File;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import j2ee.project.entity.StudentInfo;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<StudentInfo> ListFromDAO() {
		Session session = sessionFactory.getCurrentSession();
		Query<StudentInfo> query = session.createQuery("from StudentInfo order by name", StudentInfo.class);
		List<StudentInfo> list = query.getResultList();

		return list;
	}

	@Override
	public StudentInfo getSpecificUser(int theId) {
		Session session = sessionFactory.getCurrentSession();
		StudentInfo studentInfo = session.get(StudentInfo.class, theId);
		return studentInfo;
	}

	@Override
	public StudentInfo getStudentForEdit(int theId) {
		Session session = sessionFactory.getCurrentSession();
		StudentInfo info = session.get(StudentInfo.class, theId);
		return info;
	}

	@Override
	public void saveStudents(StudentInfo student) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Hei...------------------------");
		String file = student.getPhoto();
		File fileToModify = new File(file);
		System.out.println(fileToModify.getAbsolutePath());
		session.saveOrUpdate(student);
	}

	@Override
	public void deleteStudent(int theId) {
		Session session = sessionFactory.getCurrentSession();
		StudentInfo info = session.get(StudentInfo.class, theId);
		if (info != null) {
			session.delete(info);
		} else {
			System.out.println("Empty User!");

		}
	}

}
