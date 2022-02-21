package com.genx.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.genx.model.changePass;
import com.genx.utils.jdbcUtils;

public class changePassDao {
	public boolean validate(changePass passData) throws ClassNotFoundException {
		boolean status = false;
		if(passData.getNewPass() != passData.getConfNewPass())
			return false;
		int rs=0;
		try (Connection connection = jdbcUtils.getConnected();
				PreparedStatement preparedStatement = connection
						.prepareStatement("UPDATE users SET pass = ? WHERE email=?")) {
			preparedStatement.setString(1, passData.getNewPass());
			preparedStatement.setString(2, passData.getUser());
			rs = preparedStatement.executeUpdate();
			System.out.println(rs);
			if(rs!=0)
				status=true;
		} catch (SQLException e) {
			jdbcUtils.printSQLException(e);
		}
		
		return status;
	}

}
