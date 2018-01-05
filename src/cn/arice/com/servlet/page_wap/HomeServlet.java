package cn.arice.com.servlet.page_wap;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.arice.com.bean.AlbumBean;
import cn.arice.com.bean.ArticelTypeBean;
import cn.arice.com.bean.ArticleBean;
import cn.arice.com.bean.ImgBean;
import cn.arice.com.service.AlbumService;
import cn.arice.com.service.ArticelService;
import cn.arice.com.service.ArticelTypeService;
import cn.arice.com.service.ImgService;
import cn.arice.com.service.impl.AlbumServiceImpl;
import cn.arice.com.service.impl.ArticelCommentServiceImpl;
import cn.arice.com.service.impl.ArticelServiceImpl;
import cn.arice.com.service.impl.ArticelTypeServiceImpl;
import cn.arice.com.service.impl.ImgServiceImpl;

/**
 * 
 * @author Arice徐新凯
 *
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取照片只需要五张照片
		ImgService imgSer = new ImgServiceImpl();
		List<ImgBean> imgList = imgSer.getAllImg(3);
		//获取相册信息
		AlbumService albumSer = new AlbumServiceImpl();
		List<AlbumBean> albumList = albumSer.getAllAlbum();
		//获取博文分类信息
		ArticelTypeService atSer = new ArticelTypeServiceImpl();
		List<ArticelTypeBean> atList = atSer.getAllArticelType();
		//获取阅读量前12的文章
		ArticelService arSer = new ArticelServiceImpl();
		List<ArticleBean> articList = arSer.getArticelByNum(12);
		
		//传输信息
		request.setAttribute("title", "首页-粒米博客");
		request.setAttribute("imgList", imgList);
		request.setAttribute("albumList", albumList);
		request.setAttribute("atList", atList);
		request.setAttribute("articList", articList);
		request.getRequestDispatcher("/page_wap/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
