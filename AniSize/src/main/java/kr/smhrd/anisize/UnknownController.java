package kr.smhrd.anisize;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UnknownController {

	@RequestMapping("/test.do")
	public void test(Model model) {
		String str = "images/4월 ";
		model.addAttribute("str",str);
//		File file = new File("images/4월 일정표.png");
//		boolean isExists = file.exists();
//		System.out.println(isExists);
//		String path = System.getProperty("user.dir");
//		System.out.println(path);
//		Path currentPath = Paths.get("");
//		String path = currentPath.toAbsolutePath().toString();
//		System.out.println("현재 작업 경로: " + path);
	}
}
