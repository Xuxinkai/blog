package cn.arice.com.servlet.page_wap;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.arice.com.bean.ArticleCommentBean;
import cn.arice.com.service.ArticelCommentService;
import cn.arice.com.service.impl.ArticelCommentServiceImpl;
import cn.arice.com.util.GetIpAddr;

/**
 * Servlet implementation class ArticleCommentServlet
 */
public class ArticleCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comment_user = request.getParameter("comment_user");
		String comment_content = request.getParameter("comment_content");
		String aid = request.getParameter("aid");
		
		//存储数据
		ArticelCommentService ACSer = new  ArticelCommentServiceImpl();
		ACSer.addCommentByAid(new ArticleCommentBean(null, aid, comment_user, comment_content, null, GetIpAddr.getIpAddr(request), 0));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
