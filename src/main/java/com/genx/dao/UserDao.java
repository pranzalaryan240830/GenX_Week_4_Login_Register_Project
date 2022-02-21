package com.genx.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.genx.model.User;
import com.genx.utils.jdbcUtils;

public class UserDao {
	public int registerEmployee(User employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO users"
				+ "  (first_name, last_name, email, pass) VALUES "
				+ " (?, ?, ?, ?);";

		int result = 0;
		
		try(Connection connection = jdbcUtils.getConnected();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)){ 
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getEmail());
			preparedStatement.setString(4, employee.getPassword());
			System.out.println("Successfully Registered!");
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			jdbcUtils.printSQLException(e);
		}
		return result;
	}

}
