package cn.arice.com.servlet.page_wap;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.arice.com.bean.ArticelTypeBean;
import cn.arice.com.bean.ArticleBean;
import cn.arice.com.bean.ArticleCommentBean;
import cn.arice.com.service.ArticelCommentService;
import cn.arice.com.service.ArticelService;
import cn.arice.com.service.ArticelTypeService;
import cn.arice.com.service.impl.ArticelCommentServiceImpl;
import cn.arice.com.service.impl.ArticelServiceImpl;
import cn.arice.com.service.impl.ArticelTypeServiceImpl;

/**
 * 
 * @author Arice徐新凯
 *
 */
public class ArticleDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ArticleDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取传过来的值
		String aid = request.getParameter("article_id");
		//根据aid获取文章详情
		ArticelService artSer = new ArticelServiceImpl();
		ArticleBean article = artSer.getArticleById(aid);
		//给该文章加一次访问
		artSer.updataArticleScantimeByAid(aid);
		//获取文章的类别
		ArticelTypeService ATSer = new ArticelTypeServiceImpl();
		String articelType = ATSer.getArticelType(article.getTid()).getTname();
		//获取文章的评论
		ArticelCommentService ACSer = new ArticelCommentServiceImpl();
		List<ArticleCommentBean> ACList = ACSer.getCommentsByAid(aid);
		
		//传输数据
		request.setAttribute("article", article);
		request.setAttribute("articelType", articelType);
		request.setAttribute("ACList", ACList);
		request.setAttribute("title", article.getTitle()+"-粒米博客");
		request.getRequestDispatcher("article_detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
