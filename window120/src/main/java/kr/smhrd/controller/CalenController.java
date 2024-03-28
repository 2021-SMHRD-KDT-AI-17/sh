package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import kr.smhrd.entity.Board;
import kr.smhrd.entity.Calendar;
import kr.smhrd.entity.EventData;
import kr.smhrd.entity.tCalendar;
import kr.smhrd.mapper.CalendarMapper;

@Controller
public class CalenController extends HttpServlet {


	
	
	@RequestMapping("/goCalMain")
	public String goCalMain(Model model) {
		List<Calendar> c_list =calendarMapper.CalList();
		model.addAttribute("c_list",c_list);

		return "Calendar";
	}
	@RequestMapping("/gotCalMain")
	public String gotCalMain() {
		

		return "t_Calendar";
	}
	
	
	@RequestMapping("/Test2")
	public void Test2(HttpServletRequest request, HttpServletResponse response, Model model) {
		ArrayList<Calendar> c_list =calendarMapper.CalList();
		model.addAttribute("c_list",c_list);
		
		Gson gson  = new Gson();
		

		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(gson.toJson(c_list));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@RequestMapping("/tTest2")
	public void tTest2(HttpServletRequest request, HttpServletResponse response, Model model) {
		ArrayList<tCalendar> tc_list =calendarMapper.tCalList();
		model.addAttribute("tc_list",tc_list);
		
		Gson gson  = new Gson();
		

		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(gson.toJson(tc_list));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
//	@RequestMapping("/saveEvents")
//    public String saveEvents(@RequestBody Calendar[] eventData) {
//        // 클라이언트로부터 받은 JSON 배열을 MyData 객체 배열로 변환
//        // 이벤트 데이터를 데이터베이스에 저장하는 로직을 구현하고, 그 결과를 리스트로 반환
//		ArrayList<Calendar> eventList = new ArrayList<Calendar>();
//        for (Calendar data : eventData) {
//            // 예시로 ArrayList에 저장하는 것으로 대체
//            eventList.add(data);
//        }
//        // 클라이언트에 응답할 데이터를 리스트로 반환
//        System.out.println(eventList);
//        return "redirect:/goCalMain";
//    }
	

	@RequestMapping("/Test1")
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    ArrayList<Calendar> myList = new ArrayList<Calendar>();
	    
	    myList.add(new Calendar("1차 필기시험접수","20240123","20240126","green",false));
	    myList.add(new Calendar("1차 필기시험","20240215","20240307","green",false));
	    myList.add(new Calendar("1차 실기시험접수","20240326","20240329","green",false));
	    myList.add(new Calendar("1차 실기시험","20240427","20240512","green",false));
	    		
  
	    // Gson 객체 생성
	    Gson gson = new Gson();
	  
	    // JSON으로 변환하여 출력
	    response.setContentType("application/json"); // 응답의 컨텐츠 타입 설정
	    PrintWriter out = response.getWriter(); 
	    out.print(gson.toJson(myList)); 
	}
	 
	@RequestMapping("/Test3")
	protected void service2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    ArrayList<Calendar> myList2 = new ArrayList<Calendar>();
	    
	    myList2.add(new Calendar("2차 필기시험접수","20240416","20240419","green",false));
	    myList2.add(new Calendar("2차 필기시험","20240509","20240528","green",false));
	    myList2.add(new Calendar("2차 실기시험접수","20240625","20240628","green",false));
	    myList2.add(new Calendar("2차 실기시험","20240728","20240814","green",false));
	    		
  
	    // Gson 객체 생성
	    Gson gson = new Gson();
	  
	    // JSON으로 변환하여 출력
	    response.setContentType("application/json"); // 응답의 컨텐츠 타입 설정
	    PrintWriter out = response.getWriter(); 
	    out.print(gson.toJson(myList2)); 
	}

	@RequestMapping("/Test4")
	protected void service3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    ArrayList<Calendar> myList3 = new ArrayList<Calendar>();
	    
	    myList3.add(new Calendar("3차 필기시험접수","20240618","20240621","green",false));
	    myList3.add(new Calendar("3차 필기시험","20240705","20240727","green",false));
	    myList3.add(new Calendar("3차 실기시험접수","20240910","20240913","green",false));
	    myList3.add(new Calendar("3차 실기시험","20241019","20241108","green",false));
	    		
  
	    // Gson 객체 생성
	    Gson gson = new Gson();
	  
	    // JSON으로 변환하여 출력
	    response.setContentType("application/json"); // 응답의 컨텐츠 타입 설정
	    PrintWriter out = response.getWriter(); 
	    out.print(gson.toJson(myList3)); 
	}
	
	@Autowired
	private CalendarMapper calendarMapper; // 매퍼 주입
	
	@RequestMapping("/saveEvents")
	public String saveEvents(@RequestBody Calendar[] eventDataArray,HttpServletRequest request, HttpServletResponse response) {
	System.out.println("Tes11");
	    for (Calendar eventData : eventDataArray) {
	        calendarMapper.insertEvent(eventData); // 매퍼를 통한 데이터베이스 저장
	        System.out.println(eventData);
	    }
	    
	 
	    
//	    PrintWriter out;
//		try {
//			out = response.getWriter();
//			out.print("Test");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	
	    return "Calendar";
	}
	
	@RequestMapping("/tsaveEvents")
	public String tsaveEvents(@RequestBody tCalendar[] eventDataArray,HttpServletRequest request, HttpServletResponse response) {
	System.out.println("Tes12");
	    for (tCalendar eventData : eventDataArray) {
	        calendarMapper.tinsertEvent(eventData); // 매퍼를 통한 데이터베이스 저장
	        System.out.println(eventData);
	    }
	    
	 
	    
//	    PrintWriter out;
//		try {
//			out = response.getWriter();
//			out.print("Test");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	
	    return "tCalendar";
	}
	
	@RequestMapping("/deleteEvent")
	public String deleteEvent(@RequestBody EventData eventData) {
	    try {
	        calendarMapper.deleteEvent(eventData);
	        System.out.println("성공!");
	        return "redirect:/goCalMain"; // 성공적으로 삭제되었을 경우 "goCalMain" 페이지로 리다이렉트
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "redirect:/goCalMain"; // 삭제에 실패한 경우 "goCalMain" 페이지로 리다이렉트
	    }
	}
	
	@RequestMapping("/tdeleteEvent")
	public String tdeleteEvent(@RequestBody EventData eventData) {
	    try {
	        calendarMapper.tdeleteEvent(eventData);
	        System.out.println("성공!");
	        return "redirect:/gotCalMain"; // 성공적으로 삭제되었을 경우 "goCalMain" 페이지로 리다이렉트
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "redirect:/gotCalMain"; // 삭제에 실패한 경우 "goCalMain" 페이지로 리다이렉트
	    }
	}
	

}
	



