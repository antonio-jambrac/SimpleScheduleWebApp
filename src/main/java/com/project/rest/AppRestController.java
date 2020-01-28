package com.project.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.ScheduleBeans;
import com.project.ScheduleService;

@RestController
public class AppRestController {

	@Autowired
	ScheduleService service;
	
	@RequestMapping(path="/schedule")
	public List<ScheduleBeans> retrieveAllTodos() {
		return service.retrieve();
	}
	
	@RequestMapping(path="/schedule/{id}")
	public ScheduleBeans retrieveList(@PathVariable int id) {
		return service.retrieveSchedule(id);
	}
}
