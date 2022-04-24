package com.msu.springmvc.dao;

import com.msu.springmvc.entity.Employee;

import java.util.List;

public interface EmployeeDao {
    public List<Employee> getAllEmployees();
}
