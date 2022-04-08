package kr.smhrd.anisize;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UnknownController {

	@RequestMapping("/test.do")
	public void test() {
		
		File file = new File("images/4월 일정표.png");
		boolean isExists = file.exists();
		System.out.println(isExists);
//		String path = System.getProperty("user.dir");
//		System.out.println(path);
		Path currentPath = Paths.get("");
		String path = currentPath.toAbsolutePath().toString();
		System.out.println("현재 작업 경로: " + path);
	}
}
