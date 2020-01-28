package com.project;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

public class ScheduleBeans {
	
	private int id;
	private String managerName;
	private String employee;
	
	@Size(min=6, message="Enter atleast 6 Characters.")
	private String desc;
	
	private String startDate;
	
	private String finishDate;
	
	@Min(value = 0, message = "Be Serious!")
	@Max(value = 100, message = "No one is above 100 %")
	private int status;
	
	
	public ScheduleBeans(int id, String managerName, String employee, String desc, String startDate,
			String finishDate, int status) {
		super();
		this.id = id;
		this.managerName = managerName;
		this.employee = employee;
		this.desc = desc;
		this.startDate = startDate;
		this.finishDate = finishDate;
		this.status = status;
	}
	

	public ScheduleBeans () {
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getManagerName() {
		return managerName;
	}


	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}


	public String getEmployee() {
		return employee;
	}


	public void setEmployee(String employee) {
		this.employee = employee;
	}


	public String getDesc() {
		return desc;
	}


	public void setDesc(String desc) {
		this.desc = desc;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getFinishDate() {
		return finishDate;
	}


	public void setFinishDate(String finishDate) {
		this.finishDate = finishDate;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return String.format(
				"ScheduleBeans [id=%s, managerName=%s, employee=%s, desc=%s, startDate=%s, finishDate=%s, status=%s]",
				id, managerName, employee, desc, startDate, finishDate, status);
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ScheduleBeans other = (ScheduleBeans) obj;
		if (id != other.id)
			return false;
		return true;
	}	

	
}
