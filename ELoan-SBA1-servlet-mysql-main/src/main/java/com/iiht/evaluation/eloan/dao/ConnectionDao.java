package com.iiht.evaluation.eloan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
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
	pst.setDouble(3, Apploaninfo.getAmtrequest());
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
			
		
	public int userlogin(User user) throws SQLException {	
	Connection connection = connect();
	String sql = "insert into user values(?, ?)";
	PreparedStatement st = connection.prepareStatement(sql);
	st.setString(1, user.getUsername());
	st.setString(2, user.getPassword());
	int rs = st.executeUpdate();
	return rs;
}	
	
	public List<LoanInfo> listAll() throws SQLException {
		List<LoanInfo> loans=new ArrayList<LoanInfo>();
			
		Connection connection = connect();
		String sql = "select * from loaninfo;";
		PreparedStatement st = connection.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
	//appl_no,loan_desc,amount_requested,appl_date			
				while(rs.next()) {
					LoanInfo loan = new LoanInfo();
					loan.setApplno(rs.getString(1));
					loan.setPurpose(rs.getString(2));
					loan.setAmtrequest(Double.parseDouble(rs.getString(3)));
					loan.setDoa(rs.getString(4));
					loan.setStatus(rs.getString(5));
					loan.setEmail(rs.getString(6));
					loan.setMobile(rs.getString(7));
					loans.add(loan);
				}
				return loans;
	}
}
		
		
		
	
			
		
	
	
	
	
