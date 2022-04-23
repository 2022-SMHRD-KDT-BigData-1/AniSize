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
import kr.smhrd.model.SearchMapper;

@Controller
public class SearchController {
	@Inject
	private SearchMapper mapper;
	@Inject
	FilterMapper filterMapper;
	@Inject
	AnimalMapper animalMapper;
	@Inject
	ProductMapper productMapper;

	@RequestMapping("/search.do")
	public void search(Model model, HttpServletRequest request, HttpSession session) {
		List<String> popularSearchWordList = mapper.getPopularSearchWord();
		model.addAttribute("popularSearchWordList",popularSearchWordList);
		
		
		int page = 1;
		if (request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		List<ProductVO> pdList = filterMapper.getHighSalesProductList();
		int lastPage = (pdList.size()-1)/10+1;
		if (lastPage == 0) {
			lastPage =1;
		}
		if (page > lastPage) {
			page = lastPage;
		} else if (page < 1) {
			page = 1;
		}
		int max = page*10;
		int min = max-9;
		
		List<ProductVO> productList = filterMapper.getHighSalesProductListByPage(new MinMaxVO(min,max));
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
			if (ani != null) {
				if (ani.getAni_back_length() != 0) {
					for (int i = 0; i < productList.size(); i++) {
						List<ProductStockVO> stkList = productMapper.getProductSizeList(productList.get(i).getPd_num());
						List<Integer> tmp = new ArrayList<Integer>();
						for (int j = 0; j < stkList.size(); j++) {
							if (ani.getAni_back_length() < stkList.get(j).getStk_back_length()
									&& ani.getAni_neck_length() < stkList.get(j).getStk_neck_length()
									&& ani.getAni_chest_length() > (stkList.get(j).getStk_chest_length()-3.9)
									&& ani.getAni_chest_length() < stkList.get(j).getStk_chest_length()) {
								String aaa = stkList.get(j).getStk_size().toUpperCase();
								int n = sizeMap.get(aaa);
								tmp.add(n);
							}
						}
						if (!tmp.isEmpty()) {
//							System.out.println("여긴옴");
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

		}
		model.addAttribute("productList", productList);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage",lastPage);
	}
//	@RequestMapping("/searched.do")
//	public void searched(Model model) {
//		List<String> popularSearchWordList = mapper.getPopularSearchWord();
//		model.addAttribute("popularSearchWordList",popularSearchWordList);
//		
//	}
	
	
	@RequestMapping("/doSearch.do")
	public String doSearch(Model model, HttpServletRequest request, HttpSession session) {
//		System.out.println(ssw);
		String searchWord = request.getParameter("searchWord");
		if(mapper.selectSearchWord(searchWord) == null) {
			mapper.insertSearchWord(searchWord);
		}else {
			mapper.countSearchWord(searchWord);
		}
//		+검색하는해서 결과값 출력하는 기능
		
		List<String> popularSearchWordList = mapper.getPopularSearchWord();
		model.addAttribute("popularSearchWordList",popularSearchWordList);
		
		int page = 1;
		if (request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		List<ProductVO> pdList = mapper.searchedProductList("%" + searchWord + "%");
		int lastPage = (pdList.size()-1)/10+1;
		if (lastPage == 0) {
			lastPage =1;
		}
		if (page > lastPage) {
			page = lastPage;
		} else if (page < 1) {
			page = 1;
		}
		int max = page*10;
		int min = max-9;
		List<ProductVO> searchedProductList = mapper.searchedProductListByPage(new MinMaxVO(min,max,"%" + searchWord + "%"));
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
			if (ani != null) {
				if (ani.getAni_back_length() != 0) {
					for (int i = 0; i < searchedProductList.size(); i++) {
						List<ProductStockVO> stkList = productMapper.getProductSizeList(searchedProductList.get(i).getPd_num());
						List<Integer> tmp = new ArrayList<Integer>();
						for (int j = 0; j < stkList.size(); j++) {
							if (ani.getAni_back_length() < stkList.get(j).getStk_back_length()
									&& ani.getAni_neck_length() < stkList.get(j).getStk_neck_length()
									&& ani.getAni_chest_length() > (stkList.get(j).getStk_chest_length()-3.9)
									&& ani.getAni_chest_length() < stkList.get(j).getStk_chest_length()) {
								String aaa = stkList.get(j).getStk_size().toUpperCase();
								int n = sizeMap.get(aaa);
								tmp.add(n);
							}
						}
						if (!tmp.isEmpty()) {
//							System.out.println("여긴옴");
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
							searchedProductList.get(i).setRecommend_size(rcmSize);
						}

					}
				}
			}

		}
		model.addAttribute("searchedProductList", searchedProductList);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("searchWord",searchWord);
		
		return "searched";
		
	}
	
}
