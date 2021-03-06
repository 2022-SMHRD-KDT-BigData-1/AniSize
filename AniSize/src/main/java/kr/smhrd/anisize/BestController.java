package kr.smhrd.anisize;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.AnimalMapper;
import kr.smhrd.model.AnimalVO;
import kr.smhrd.model.FilterMapper;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.MinMaxVO;
import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.ProductStockVO;
import kr.smhrd.model.ProductVO;

@Controller
public class BestController {
	@Inject
	ProductMapper productMapper;
	@Inject
	FilterMapper filterMapper;
	@Inject
	AnimalMapper animalMapper;

	@RequestMapping("/best.do")
	public void best(Model model, HttpServletRequest request, HttpSession session) {

		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		String filter = request.getParameter("filter");
		List<ProductVO> pdList = null;
		if (filter.equals("recent")) {
			pdList = productMapper.getProductList();
		} else if (filter.equals("highSales")) {
			pdList = filterMapper.getHighSalesProductList();
		} else if (filter.equals("highScore")) {
			pdList = filterMapper.getHighScoreProductList();
		}

		int lastPage = (pdList.size() - 1) / 10 + 1;
		if (lastPage == 0) {
			lastPage = 1;
		}
		if (page > lastPage) {
			page = lastPage;
		} else if (page < 1) {
			page = 1;
		}
		int max = page * 10;
		int min = max - 9;

		List<ProductVO> productList = null;
		if (filter.equals("recent")) {
			productList = filterMapper.getRecentProductListByPage(new MinMaxVO(min, max));
		} else if (filter.equals("highSales")) {
			productList = filterMapper.getHighSalesProductListByPage(new MinMaxVO(min, max));
		} else if (filter.equals("highScore")) {
			productList = filterMapper.getHighScoreProductListByPage(new MinMaxVO(min, max));
		}
		MemberVO mem = (MemberVO) session.getAttribute("member");
		Map<String, Integer> sizeMap = new HashMap<>();
		sizeMap.put("XS", 1);
		sizeMap.put("S", 2);
		sizeMap.put("M", 3);
		sizeMap.put("L", 4);
		sizeMap.put("XL", 5);
		sizeMap.put("XXL", 6);

		if (mem != null) {
			AnimalVO ani = animalMapper.getAniInfo(mem.getMem_num());
			System.out.println("????????? ?????? ????????? : " + ani.getAni_back_length());
			System.out.println("????????? ?????? ??? : " + ani.getAni_neck_length());
			System.out.println("????????? ?????? ???????????? : " + ani.getAni_chest_length());

			if (ani.getAni_back_length() != 0) {

				for (int i = 0; i < productList.size(); i++) {
					List<ProductStockVO> stkList = productMapper.getProductSizeList(productList.get(i).getPd_num());
					List<Integer> tmp = new ArrayList<Integer>();
					System.out.println("pd _ num : "+productList.get(i).getPd_num());
					for (int j = 0; j < stkList.size(); j++) {
						// s??? 3cm ??????
						if (ani.getAni_back_length() < stkList.get(j).getStk_back_length()
								&& ani.getAni_neck_length() < stkList.get(j).getStk_neck_length()
								&& ani.getAni_chest_length() < stkList.get(j).getStk_chest_length()) {
							String aaa = stkList.get(j).getStk_size().toUpperCase();
							int n = sizeMap.get(aaa);
							tmp.add(n);
							//???????????? ????????? ??????
						}
					}
					System.out.println("tmp to string : "+tmp.toString());
					if (!tmp.isEmpty()) {
//						System.out.println("?????????");
						int sizeNum = Collections.min(tmp);
						String rcmSize = "";
						for (String key : sizeMap.keySet()) {
							Integer value = sizeMap.get(key);
							if (value == sizeNum) {
								System.out.println("key : " + key);
								rcmSize = key;
								break;
							}
						}
						productList.get(i).setRecommend_size(rcmSize);
					}

				}
			}
		}

		model.addAttribute("productList", productList);
		model.addAttribute("filter", filter);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage", lastPage);
	}
}
