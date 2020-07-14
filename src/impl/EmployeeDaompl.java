package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.EmployeeDao;
import dao.RoomDao;
import study.Employee;
import study.Room;
import util.DButil;

public class EmployeeDaompl implements EmployeeDao{

	@Override
	public Employee findIdByempnumber(String empnumber) {
		Employee employee=null;
        ResultSet resultSet=null;
        PreparedStatement statement=null;
        Connection connection=null;
        try {
            connection= DButil.getConnection();
            String sql="select * from employee where empnumber=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1,empnumber);
            resultSet=statement.executeQuery();
            while (resultSet.next()){
            	employee=new Employee();
            	employee.setEmpid(resultSet.getInt(1));
            	employee.setEmpnm(resultSet.getString(2));
            	employee.setEmpnumber(resultSet.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DButil.closeAll(resultSet,statement,connection);
        }
		return employee;
	}


}
