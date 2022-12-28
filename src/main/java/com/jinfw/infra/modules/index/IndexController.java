package com.jinfw.infra.modules.index;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/index/")
public class IndexController {

	@Autowired
	IndexServiceImpl service; 

}
