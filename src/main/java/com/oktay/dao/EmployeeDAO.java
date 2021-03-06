/**
 * 
 */
package com.oktay.dao;

import java.util.List;

import com.oktay.model.Employee;

/**
 * @author oktay
 *
 */
public interface EmployeeDAO {

	public void addEmployee(Employee employee);

	public List<Employee> getAllEmployees();

	public void deleteEmployee(Integer employeeId);

	public Employee updateEmployee(Employee employee);

	public Employee getEmployee(int employeeId);
}
