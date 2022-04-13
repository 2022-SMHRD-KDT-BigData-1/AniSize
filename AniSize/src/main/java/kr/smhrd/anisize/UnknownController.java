package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.ProductStockVO;
import kr.smhrd.model.TestMapper;

@Controller
public class UnknownController {
	@Inject
	TestMapper mapper;

	@RequestMapping("/test.do")
	public void test(Model model) {
//		String str = "images/4월 ";
//		model.addAttribute("str",str);
//		File file = new File("images/4월 일정표.png");
//		boolean isExists = file.exists();
//		System.out.println(isExists);
//		String path = System.getProperty("user.dir");
//		System.out.println(path);
//		Path currentPath = Paths.get("");
//		String path = currentPath.toAbsolutePath().toString();
//		System.out.println("현재 작업 경로: " + path);
		List<ProductStockVO> psList = mapper.getProductStock();
		String[] size = {"s","m","l","xl"};	
		for (int i = 0; i < psList.size(); i++) {
			int pd_num = psList.get(i).getPd_num();
			int pd_price = mapper.selectProductPrice(pd_num);
			String option = psList.get(i).getStk_option();
			if (option == null) {
				for (int j = 0; j < size.length; j++) {
					ProductStockVO vo = new ProductStockVO();
					vo.setPd_num(pd_num);
					vo.setStk_quantity(100);
					vo.setStk_price(pd_price);
					vo.setStk_option(null);
					vo.setStk_size(size[j]);
					mapper.insertProductStock(vo);
				}
			}else {
				String[] optionList = option.split(",");
				for(int j = 0; j<optionList.length; j++) {
					for (int k = 0; k < size.length; k++) {
						ProductStockVO vo = new ProductStockVO();
						vo.setPd_num(pd_num);
						vo.setStk_quantity(100);
						vo.setStk_price(pd_price);
						vo.setStk_option(optionList[j]);
						vo.setStk_size(size[k]);
						mapper.insertProductStock(vo);
					}
				}
			}
		}

	}
}
