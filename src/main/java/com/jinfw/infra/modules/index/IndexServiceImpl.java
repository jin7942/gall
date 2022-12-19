package com.jinfw.infra.modules.index;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jinfw.infra.common.util.UtilDateTime;
import com.jinfw.infra.common.util.UtilRegMod;

@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    IndexDao dao;
    
	@Override
	public void setRegMod(Index dto) throws Exception {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		dto.setRegIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setRegDevice(UtilRegMod.getDevice());
		dto.setRegDate(UtilDateTime.nowDate());
		
		dto.setModIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setModDevice(UtilRegMod.getDevice());
		dto.setModDate(UtilDateTime.nowDate());
	}


}
