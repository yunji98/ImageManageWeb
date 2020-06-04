package kr.ac.hansung.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.model.Auto;
import kr.ac.hansung.model.Meta;
import kr.ac.hansung.model.Remove;
import kr.ac.hansung.service.AutoService;
import kr.ac.hansung.service.MetaService;
import kr.ac.hansung.service.RemoveService;

@Controller
public class PhotoController {

	@Autowired
	MetaService metaService;

	@Autowired
	AutoService autoService;

	@Autowired
	RemoveService removeService;
	
	@RequestMapping("/metaView")
	public String getMetaImage(Model model) {
		List<Meta> metaList = new ArrayList<Meta>();

		try {
			metaList = metaService.getProducts();
			model.addAttribute("metaList", metaList);

		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "metaView";
	}
	
	@RequestMapping("/viewImage/{upload}")
	public String getMetaView(@PathVariable Long upload, Model model) {
		Meta metaDetail = new Meta();
		try {
			metaDetail = metaService.getViewImage(upload);
			model.addAttribute("metaDetail", metaDetail);

		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "viewImage";
	}

	@RequestMapping("/autoTagView")
	public String getAutoImage(Model model) {
		List<Auto> autoList = new ArrayList<Auto>();
		try {
			autoList = autoService.getProducts();
			model.addAttribute("autoList", autoList);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "autoTagView";
	}
	
	@RequestMapping("/detailTagView/{autoTag}")
	public String getAutoTag(@PathVariable String autoTag,Model model) {
		List<Auto> autoList = new ArrayList<Auto>();
		
		try {
			autoList = autoService.getTagProducts(autoTag);
			model.addAttribute("autoList", autoList);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "detailTagView";
	}

	@RequestMapping("/darkedRecommend")
	public String getDarkImage(Model model) {
		List<Remove> darkList = new ArrayList<Remove>();

		try {
			darkList = removeService.getDarkProducts();
			model.addAttribute("darkList", darkList);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "darkedRecommend";
	}

	@RequestMapping("/screenshotRecommend")
	public String getScreenshotImage(Model model) {
		List<Remove> screenshotList = new ArrayList<Remove>();

		try {
			screenshotList = removeService.getScreenshotProducts();
			model.addAttribute("screenshotList", screenshotList);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "screenshotRecommend";
	}

	@RequestMapping("/shakenRecommend")
	public String getShakenRecommendImage(Model model) {
		List<Remove> shakenList = new ArrayList<Remove>();

		try {
			shakenList = removeService.getShakenProducts();
			model.addAttribute("shakenList", shakenList);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "shakenRecommend";
	}

	@RequestMapping("/similarRecommend")
	public String getSimilarRecommendImage(Model model) {
		List<Remove> similarList = new ArrayList<Remove>();

		try {
			similarList = removeService.getSimiliarProducts();
			model.addAttribute("similarList", similarList);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "similarRecommend";
	}

	@RequestMapping("/trash")
	public String getDeletedImage(Model model) {
		List<Meta> trashList = new ArrayList<Meta>();

		try {
			trashList = metaService.getDeletedProducts();
			model.addAttribute("trashList", trashList);

		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}

		return "trash";
	}

}
