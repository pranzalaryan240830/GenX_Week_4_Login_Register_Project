package com.genx.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.genx.model.Login;
import com.genx.utils.jdbcUtils;

public class LoginDao {
	public boolean validate(Login loginData) throws ClassNotFoundException {
		boolean status = false;

		try (Connection connection = jdbcUtils.getConnected();
				PreparedStatement preparedStatement = connection
						.prepareStatement("select * from users where email = ? and pass = ? ")) {
			preparedStatement.setString(1, loginData.getUsername());
			preparedStatement.setString(2, loginData.getPassword());

			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();
		} catch (SQLException e) {
			jdbcUtils.printSQLException(e);
		}
		return status;
	}
}
