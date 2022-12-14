package com.jinfw.infra.common.constans;

public class Constants {

	/*for paging*/
	public static final int ROW_NUM_TO_SHOW = 20;
	public static final int PAGE_NUM_TO_SHOW = 5;
	
	/*for session*/
	public static final int SESSION_MINUTE = 30;		// 세션 타임아웃
	
	/*login check*/
	public static final String URL_LOGINFORM_FOR_ADMIN = "/";
	public static final String URL_LOGINFORM_FOR_USER = "/";
	
	/* for date */
	public static final String DATETIME_FORMAT_BASIC = "yyyy-MM-dd HH:mm:ss";
	public static final String TIME_FORMAT_BASIC = "HH:mm:ss";
	public static final int DATE_INTERVAL = -7;
	
	/* for upload */
	public static final String UPLOAD_PATH_PREFIX = "";
	public static final String UPLOAD_PATH_PREFIX_FOR_VIEW = "/resources/uploaded";
	
    /* image upload server path */
	public static final String UPLOAD_SERVER_PATH = "http://localhost:4000/api/uploadImg/";
			
}
