package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class DatMuaController
 */
@WebServlet("/DatMuaController")
public class DatMuaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatMuaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String ms=request.getParameter("ms");
		String ts=request.getParameter("ts");
		String giatam=request.getParameter("gia");
		if(ms!=null){
			giohangbo gh;
			if(session.getAttribute("gh")==null){ //mua lan dau
				gh=new giohangbo(); //
				session.setAttribute("gh",gh );
			}
			gh=(giohangbo)session.getAttribute("gh");
			gh.Themm(ms, ts, Long.parseLong(giatam), 1);
			session.setAttribute("gh", gh);
			/*response.sendRedirect("GioHang.jsp");*/
			/*
			 * RequestDispatcher rd=request.getRequestDispatcher("Tam"); rd.forward(request,
			 * response);
			 */
			response.sendRedirect("Tam");
			
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
