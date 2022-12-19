package com.jinfw.infra.common.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class UtilRegMod {

	public static String getClientIp() {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes) RequestContextHolder
				.currentRequestAttributes()).getRequest();
		return getClientIpCore(httpServletRequest);
	}

	public static String getClientIp(HttpServletRequest httpServletRequest) {
		return getClientIpCore(httpServletRequest);
	}

	public static String getClientIpCore(HttpServletRequest httpServletRequest) {
		String ip = null;

		ip = httpServletRequest.getHeader("X-Forwarded-For");

		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getHeader("X-Real-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getHeader("X-RealIP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getHeader("REMOTE_ADDR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = httpServletRequest.getRemoteAddr();
		}
		return ip;
	}

	public static String getSessionSeq() {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes) RequestContextHolder
				.currentRequestAttributes()).getRequest();
		return getSessionSeqCore(httpServletRequest);
	}

	public static String getSessionSeq(HttpServletRequest httpServletRequest) {
		return getSessionSeqCore(httpServletRequest);
	}

	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession = httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}

	public static String getDevice() {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes) RequestContextHolder
				.currentRequestAttributes()).getRequest();
		return getDeviceCore(httpServletRequest);
	}

	public static String getDevice(HttpServletRequest httpServletRequest) {
		return getDeviceCore(httpServletRequest);
	}

	public static String getDeviceCore(HttpServletRequest httpServletRequest) {
		
		String device = "";
		String userAgent = httpServletRequest.getHeader("User-Agent").toUpperCase();

		if (userAgent.indexOf("iphone") > -1) {
			device = "iPhone";
		} else if (userAgent.indexOf("ipad") > -1) {
			device = "iPad";
		} else if (userAgent.indexOf("android") > -1) {
			device = "android";
		} else {
			if (userAgent.indexOf("Trident") > -1) {
				// IE : 5
				device = "ie";
			} else if (userAgent.indexOf("Edge") > -1) {
				// Edge: 1
				device = "edge";
			} else if (userAgent.indexOf("Whale") > -1) {
				// Naver Whale : 8
				device = "whale";
			} else if (userAgent.indexOf("Opera") > -1 || userAgent.indexOf("OPR") > -1) {
				// Opera : 3
				device = "opera";
			} else if (userAgent.indexOf("Firefox") > -1) {
				// Firefox : 6
				device = "firefox";
			} else if (userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1) {
				// Safari : 7
				device = "safari";
			} else if (userAgent.indexOf("Chrome") > -1) {
				// Chrome : 4
				device = "chrome";
			} else {
				// 12
				device = "other";
			}
		}

		return device;
	}
}
