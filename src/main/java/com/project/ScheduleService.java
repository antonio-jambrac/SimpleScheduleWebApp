package com.project;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class ScheduleService {
	
	private static int id = 1;

	private static List<ScheduleBeans> schedule = new ArrayList<ScheduleBeans>();
	
	static {
		schedule.add(new ScheduleBeans(1, "Oliva Sernjekova", "Mars inc", "Job Description", "27.08.2063", "31.01.2064", 50));
	}
	
	public List<ScheduleBeans> retrieve () {
		return schedule;
	}
	
	
	public void addPlan (String managerName, String employee, String desc, String startDate, String finishDate, int status) {
		schedule.add(new ScheduleBeans(++id, managerName, employee, desc, startDate, finishDate, status ));
	}
	
	public void deletePlan (int id) {
		Iterator<ScheduleBeans> iterator = schedule.iterator();
		while (iterator.hasNext()) {
			ScheduleBeans schedule = iterator.next();
			if(schedule.getId() == id) {
				iterator.remove();
			}
		}
	}
	
	public void updateSchedule (ScheduleBeans sch) {
		schedule.remove(sch);
		schedule.add(sch);
	}
	
	public ScheduleBeans retrieveSchedule (int id) {
		for (ScheduleBeans sch : schedule) {
			if (sch.getId()==id) {
				return sch;
			}
		}
		return null;
	}
	
	public String showDate() {
		Date date = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("E dd.MM.yyyy");
		return  ft.format(date);
	}
	
	public String showTime() {
		Date date = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("dd.MM.yyyy");
		return  ft.format(date);
	}

}
