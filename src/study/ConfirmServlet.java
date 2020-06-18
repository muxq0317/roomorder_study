package study;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.RoomOrderService;
import service.RoomOrderServiceImpl;
import service.RoomService;
import service.RoomServiceImpl;

/**
 * Servlet implementation class ConfirmServlet
 */
@WebServlet(name = "ConfirmServlet", urlPatterns = "/confirm" )
public class ConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
//		List<People> list = (List<People>) req.getSession().getAttribute("list"); 
		
		String name = req.getParameter("name");
        String number = req.getParameter("number");
        String meetingroom = req.getParameter("meetingroom");
        String orderdate = req.getParameter("orderdate");
        String starttime = req.getParameter("starttime");
        String endtime = req.getParameter("endtime");
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        Date now = new Date();
        Date odate;
		try {
			odate = sdf.parse(orderdate);
			if(odate.before(now)){
	            System.out.println("不能输入之前的时间");
	        }
		} catch (ParseException e) {
			e.printStackTrace();
		}
               
        
        int starttimeint=0;
        int endtimeint=0;
        if(starttime!=null){
        	starttimeint = Integer.valueOf(starttime);
       }if(endtime!=null){
    	   endtimeint = Integer.valueOf(endtime);
       }
      
        if(starttimeint<0 || starttimeint>24 || endtimeint<0 || endtimeint>24 || starttimeint==endtimeint) {
        	req.getRequestDispatcher("/fail.jsp").forward(req,resp);
        }
		
		RoomService roomService=new RoomServiceImpl();
		Room room = roomService.findIdByroomnm(number);
		
		RoomOrderService roomorderservice = new RoomOrderServiceImpl();
		List<RoomOrder> list= roomorderservice.findALL(room.getRoomid().toString(), orderdate);
		int key = 1;
		if(list==null) {
			//TODO 登录数据库操作
			req.getRequestDispatcher("/success.jsp").forward(req,resp);
		}else {
			for(RoomOrder t:list) {
				if((t.getStarttime()>=starttimeint && t.getStarttime()<endtimeint) || 
						(t.getEndtime()>starttimeint && t.getStarttime()<=endtimeint)) {
					key = 0;
					break;
				}
			}
			if(key==1) {
				//TODO 登录数据库操作
				req.getRequestDispatcher("/success.jsp").forward(req,resp);
			}else {
				req.getRequestDispatcher("/fail.jsp").forward(req,resp);
			}
		}
   
        
    
	}
	
	
		
	
		
	
	

}
