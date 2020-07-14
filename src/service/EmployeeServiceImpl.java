package service;

import dao.EmployeeDao;
import impl.EmployeeDaompl;
import study.Employee;

public class EmployeeServiceImpl implements EmployeeService {

	EmployeeDao employeeDao = new EmployeeDaompl();

	@Override
	public Employee findIdByempnumber(String epmnumber) {
		Employee employee = employeeDao.findIdByempnumber(epmnumber);
		return employee;
	}

}
