package todo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class KakuninServlet
 */
@WebServlet("/KakuninServlet")
public class KakuninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public KakuninServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/

		request.setCharacterEncoding("UTF-8");

		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("date");
		String company = request.getParameter("company");
		String name = request.getParameter("name");
		String purpose_form = request.getParameter("purpose_form");
		String purpose2 = request.getParameter("purpose1");
		String morning_afternoon = request.getParameter("morning_afternoon");
		String hour = request.getParameter("hour");
		String minute = request.getParameter("minute");
		String visitor = request.getParameter("visitor");
		String morning_afternoon_exit = request.getParameter("morning_afternoon_exit");
		String hour_exit = request.getParameter("hour_exit");
		String minute_exit = request.getParameter("minute_exit");
		String exit = request.getParameter("exit");




		String s = null;
		if(purpose_form.compareTo("その他") == 0){
			s = purpose_form + "：" + purpose2;
		}else{
			s = purpose_form;
		}

		String[]accompany = {request.getParameter("accompanyName1"),request.getParameter("accompanyName2"),request.getParameter("accompanyName3"),request.getParameter("accompanyName4")};

		int i = 0;
		for(String str : accompany){
			if(str.isEmpty()){
				str = "";
			}else{
				str = "<td>" + str + "</td>";
			}
				switch(i){
				case 0:
					request.setAttribute("accompanyName1", str );
					break;
				case 1:
					request.setAttribute("accompanyName2", str );
					break;
				case 2:
					request.setAttribute("accompanyName3", str );
					break;
				case 3:
					request.setAttribute("accompanyName4", str );
					break;
				}

		i++;
		}
		request.setAttribute("year", year);
		request.setAttribute("month", month );
		request.setAttribute("day", day );
		request.setAttribute("company", company );
		request.setAttribute("name", name );


		request.setAttribute("purpose_form", s );
	/*	request.setAttribute("purpose2", s );*/
		request.setAttribute("morning_afternoon", morning_afternoon );
		request.setAttribute("hour", hour );
		request.setAttribute("minute", minute );
		request.setAttribute("visitor", visitor );
		request.setAttribute("morning_afternoon_exit", morning_afternoon_exit );
		request.setAttribute("hour_exit", hour_exit );
		request.setAttribute("minute_exit", minute_exit );
		request.setAttribute("exit", exit );



		String view = "/WEB-INF/view/kakunin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
