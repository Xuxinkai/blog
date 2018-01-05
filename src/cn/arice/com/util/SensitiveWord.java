package cn.arice.com.util;
/**
 * 
 * @author Arice 徐新凯
 * @description blog:cn.arice.com.util:SensitiveWord.java 敏感词过滤
 * @version 1.0
 * @data 2016-5-24
 */
public class SensitiveWord {
	private static String[] word = new String[]{"sb","nishishabi","shabi","傻逼","骚货","下贱","卑鄙"};
	public static String filteSensitiveWord(String masssge){
		String mas = masssge;
		for(String s:word){
		mas = mas.replace(s, "***");
			
		}
		return mas;
	}
}
