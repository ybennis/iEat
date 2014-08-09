package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Account {

	private Connection conn;

	public Account(Connection conn) {
		this.conn = conn;
	}

	public boolean login(String email, String password) throws SQLException {
		System.out.println("email : " + email);
		System.out.println("password : " + password);

		String sql = "Select count(*) as count from users where email=?";
		if (password != null && !password.isEmpty()) {
			sql += " and password=?";
		}
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, email);

		if (password != null && !password.isEmpty()) {
			statement.setString(2, password);
		}
		System.out.println("statement : " + statement.toString());
		ResultSet rs = statement.executeQuery();
		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
			System.out.println("count is " + count);
			rs.close();
			if (count == 1) {
				return true;
			}
		}
		System.out.println("count is " + count);
		return false;

	}

	public boolean exists(String email) throws SQLException {
		return login(email, null);
	}

	public void create(String email, String password) {
		System.out.println("email : " + email);
		System.out.println("password : " + password);

		String sql = "insert into users (email,password) values ( ?, ?)";

		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, email);
			statement.setString(2, password);
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
