package com.yedam.myserver.emp.vo;


import java.sql.Date;

//import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
@Builder  //생성자 만들어줌
@NoArgsConstructor
@AllArgsConstructor
public class Employee {

	private Integer department_id;
	private Integer manager_id;
	private Integer commission_pct;
	private Integer salary;
	private String job_id;
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date hire_date;
	@JsonIgnore
	private String phone_number;
	private String email;
	private String last_name;
	@JsonProperty("fname")
	private String first_name;
	private Integer employee_id;
	private String department_name;
	
	private Departments department;
	
}
