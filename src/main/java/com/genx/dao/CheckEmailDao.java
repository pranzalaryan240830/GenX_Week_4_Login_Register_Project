package com.genx.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.genx.model.CheckEmail;
import com.genx.utils.jdbcUtils;

public class CheckEmailDao {
	public boolean validate(CheckEmail emailData) throws ClassNotFoundException {
		boolean status = false;

		try (Connection connection = jdbcUtils.getConnected();
				PreparedStatement preparedStatement = connection
						.prepareStatement("select * from users where email = ?")) {
			preparedStatement.setString(1, emailData.getUsername());
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();
		} catch (SQLException e) {
			jdbcUtils.printSQLException(e);
		}
		return status;
	}
}
