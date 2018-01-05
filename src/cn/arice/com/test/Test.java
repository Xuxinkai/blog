package cn.arice.com.test;

import java.util.List;

import cn.arice.com.bean.AlbumBean;
import cn.arice.com.bean.LoginHistoryBean;
import cn.arice.com.service.AlbumService;
import cn.arice.com.service.LoginHistoryService;
import cn.arice.com.service.impl.AlbumServiceImpl;
import cn.arice.com.service.impl.LoginHistoryServiceImpl;

public class Test {

	public static void main(String[] args) {
		
//		AlbumService albumService = new AlbumServiceImpl();
//		
//		List<AlbumBean> als = albumService.getAllAlbum();
//		for(AlbumBean a:als){
//			System.out.println(a.getAlname()+a.getAldesc());
//		}
		
		LoginHistoryService ser = new LoginHistoryServiceImpl();
		for(int i=0;i<50;i++){
			int count = ser.addLoginHistory(new LoginHistoryBean(null, "ac28164a6f824c0eb77fc4a671c1bec7", null, "121.199.46.153", null));
			
			System.out.println(count);
		}
		
		
	}

}
