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
	pst.setString(2, Apploaninfo.getDoa());
	pst.setString(2, Apploaninfo.getBstructure());
	pst.setString(2, Apploaninfo.getBindicator());
	pst.setString(2, Apploaninfo.getAddress());
	pst.setString(2, Apploaninfo.getEmail());
	pst.setString(2, Apploaninfo.getMobile());
	int k= pst.executeUpdate();
	return k;
	}


	public boolean validateuser(User user) throws SQLException {
		System.out.println("in the validation of connection");
		String displayPage=null;
		Connection connection=connect();
		System.out.println("after the connection");
		boolean isUser=false;
		try {
			String sql="Select * from user";
			Statement statement = connection.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while(rs.next())  {
			String tid= rs.getString(1);
			String tpwd=rs.getString(2);
			if(tid.equals(user.getUsername())  && tpwd.equals(user.getPassword()))
				isUser=true;
				break;
				
			}
			return isUser;
		}	
		
		
			 catch (Exception e) {
				throw new SQLException(e);
			}
	}
}
		
		
		
	
			
		
	
	
	
	
