package kr.smhrd.mapper;

import java.util.ArrayList;


import kr.smhrd.entity.Calendar;
import kr.smhrd.entity.EventData;
import kr.smhrd.entity.tCalendar;

public interface CalendarMapper {
		void insertEvent(Calendar event);
		
		ArrayList<Calendar> CalList();

		ArrayList<tCalendar> tCalList();

		void tinsertEvent(tCalendar eventData);

		void deleteEvent(EventData eventData);

		void tdeleteEvent(EventData eventData);
}
