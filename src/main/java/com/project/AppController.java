package com.project;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AppController {
       

    public AppController() {
        super();
    }

    @Autowired
    ScheduleService sch;
    
    @InitBinder
    protected void iniBinder(WebDataBinder binder) {
    	SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
    	binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
    
    @RequestMapping(value="/list", method = RequestMethod.GET)
    public String showSchedule (ModelMap model) {
    	model.put("schedule", sch.retrieve());
    	model.put("date", sch.showDate());
    	return "schedule-list";
    }
    
    @RequestMapping(value="/add-schedule", method = RequestMethod.GET)
    public String addSchedule (ModelMap model) {
    	
    	model.addAttribute("schedule", new ScheduleBeans());
    	model.put("time", sch.showTime());
    	return "add"; 
    }

    @RequestMapping(value="/add-schedule", method= RequestMethod.POST)
    public String handleAddschedule (@ModelAttribute("schedule") @Valid ScheduleBeans schedule, BindingResult result) {
    	
    	if (result.hasErrors()) {
    		return "add";
    	}
    	
    	sch.addPlan(schedule.getManagerName(), schedule.getEmployee(), schedule.getDesc(), 
    			schedule.getStartDate(), schedule.getFinishDate(), schedule.getStatus() );
  
    	return "redirect:/list";
    }
    
    @RequestMapping(value="/delete-schedule", method = RequestMethod.GET)
    public String deleteSchedule (@RequestParam int id) {
    	sch.deletePlan(id);
    	return "redirect:/list";
    }
    
    @RequestMapping(value="/update-list", method = RequestMethod.GET)
    public String updateSchedule (ModelMap model, @RequestParam int id) {
    	model.addAttribute("schedule", sch.retrieveSchedule(id));
    	return "add";
    }
    
    @RequestMapping(value="/update-list", method = RequestMethod.POST)
    public String returnUpdateSchedule (@ModelAttribute("schedule") @Valid ScheduleBeans schedule, BindingResult result ) {
    	
    	if(result.hasErrors()) {
    		return "add";
    	}
    	
    	sch.updateSchedule(schedule);
    	return "redirect:/list";
    }
}
