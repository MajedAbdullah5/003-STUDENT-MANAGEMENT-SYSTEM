package j2ee.project.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import j2ee.project.entity.StudentInfo;
import j2ee.project.service.StudentDaoService;

@Controller
@RequestMapping("/course")
public class HomeController {
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@Autowired
	private StudentDaoService service;
	
	//List all the Students
	@GetMapping("/list")
	public String test(Model model) {
		List<StudentInfo> studentlist = service.ListFromService();
		model.addAttribute("list",studentlist);
		return "startup";
	}
	
	//View Specific Student details
	@GetMapping("/viewDetails")
	public String viewDetails(@RequestParam("userId") int theId ,Model theModel) {
		StudentInfo student = service.getStudent(theId);
		theModel.addAttribute("specificstudent",student);		
		return "viewDetails";
	}
	
	//Update Students
	@GetMapping("/updateStudent")
	public String updateStudent(@RequestParam("userId") int theId,Model model) {
		StudentInfo student = service.getStudentForEdit(theId);
		model.addAttribute("student",student);
		return "addStudents";
	}
	
	@GetMapping("/addStudents")
	public String addStudents(Model model) {
		StudentInfo info = new StudentInfo();
		model.addAttribute("student",info);
		return "addStudents";
	}
	
	@PostMapping("/saveStudents")
	public String saveStudents(@Valid @ModelAttribute("student") StudentInfo student, BindingResult theBindingResult) {
		
		
		if(theBindingResult.hasErrors()) {
			return "addStudents";
		}
		else {
			service.saveStudents(student);
			return "redirect:/course/list";				
		}	
		
	
	}
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("userId") int theId,Model model) {
		service.deleteStudent(theId);
		
		return "redirect:/course/list";
	}

}
