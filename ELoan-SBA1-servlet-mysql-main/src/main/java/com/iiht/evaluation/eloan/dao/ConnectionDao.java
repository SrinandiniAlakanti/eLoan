package com.iiht.evaluation.eloan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.iiht.evaluation.eloan.dto.LoanDto;
import com.iiht.evaluation.eloan.model.ApprovedLoan;
import com.iiht.evaluation.eloan.model.LoanInfo;
import com.iiht.evaluation.eloan.model.User;

public class ConnectionDao {
	private static final long serialVersionUID = 1L;
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;

	public ConnectionDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

	public  Connection connect() throws SQLException {
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
		return jdbcConnection;
	}

	public void disconnect() throws SQLException {
		if (jdbcConnection != null && !jdbcConnection.isClosed()) {
			jdbcConnection.close();
		}
	}
	
	// put the relevant DAO methods here..
	public int registeruserloan(LoanInfo Apploaninfo) throws SQLException {
	Connection conn = connect();
	String sql= "insert into Apploaninfo(applno,purpose,amtrequest,doa,bstructure,bindicator,address,email,mobile";
	PreparedStatement pst = conn.prepareStatement(sql);
	pst.setString(1,Apploaninfo.getApplno());
	pst.setString(2, Apploaninfo.getPurpose());
	pst.setInt(3, Apploaninfo.getAmtrequest());
	pst.setString(4, Apploaninfo.getDoa());
	pst.setString(5, Apploaninfo.getBstructure());
	pst.setString(6, Apploaninfo.getBindicator());
	pst.setString(7, Apploaninfo.getAddress());
	pst.setString(8, Apploaninfo.getEmail());
	pst.setString(9, Apploaninfo.getMobile());
	int k= pst.executeUpdate();
	return k;
	}


	public String validateuser(User user) throws SQLException {
		String pageToBeDisplayed=null;
		Connection connection=connect();
			try {
			String sql="Select * from user where userid=? and password=?";
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, user.getUsername());
			st.setString(2, user.getPassword());
			ResultSet rs= st.executeQuery();
			if(rs.next())  {
			if (user.getUsername().equals("admin")) {
				pageToBeDisplayed="adminhome1.jsp";
			} else {
				pageToBeDisplayed="userhome1.jsp";
			}
			}else {
				pageToBeDisplayed="index.jsp";
			}
		}catch (SQLException e)	{
			e.printStackTrace();
		}
			
			return pageToBeDisplayed;
		}	
		
		/*ConnectionDao conn=new ConnectionDao("jdbc:mysql://localhost:3306/eloan", "root", "root");
		Connection con;
		try {
			con = conn.connect();
			String sql="Select * from user where userid=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, user.getUsername());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				if(user.getPassword().equals(rs.getString(2)))
				{
					if("admin".equals(rs.getString(3)))
					{
						return "admin";
					}
					else if("user".equals(rs.getString(3)))
					{
						return "user";
					}
				}
			}
				else return "incorrect credentials";
			}
			 catch (SQLException e) {
			e.printStackTrace();}*/
		
		
	public int userlogin(User user) throws SQLException {	
	Connection connection = connect();
	String sql = "insert into user values(?, ?)";
	PreparedStatement st = connection.prepareStatement(sql);
	st.setString(1, user.getUsername());
	st.setString(2, user.getPassword());
	int rs = st.executeUpdate();
	return rs;
}	
	
}
		
		
		
	
			
		
	
	
	
	
