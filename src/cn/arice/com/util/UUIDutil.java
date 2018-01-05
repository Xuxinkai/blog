package cn.arice.com.util;

import java.util.UUID;

public class UUIDutil {
	
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}
	public static void main(String[] args) {
		System.out.println(getUUID());
	}

}
