package master.dao;
import java.sql.*;

import master.dto.FoodDto;
import master.utilities.ConnectionFactory;
public class FoodDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//private String select_sql="select * from product order by pname";
	private String insert_sql="insert into food values(?,?,?)";
	private String delete_sql="delete from food where fid=?";
	private String update_sql="update food set price=? where fid=?";
	private String select_sql="select * from food order by fid";
	public ResultSet searchFid(String fid)
	{
		String search_fid_sql="select * from food where fid='"+fid+"'";
		try
		{
		
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(search_fid_sql);
		}
		
	
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public void insertData(FoodDto fdto)
	{
		try
		{
		
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
		 ps.setString(1,fdto.getFid());
		 ps.setString(2,fdto.getFname());
			 ps.setDouble(3,fdto.getPrice());
		 ps.executeUpdate();
		}
		
	
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData()
	{
		try
		{
		
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
		}
		
	
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public void updateData(FoodDto fdto)
	{
		try
		{
		
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(update_sql);
		 ps.setString(2,fdto.getFid());
		ps.setDouble(1,fdto.getPrice());
		 ps.executeUpdate();
		}
		
	
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData(FoodDto fdto)
	{
		try
		{
		
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(delete_sql);
		 ps.setString(1,fdto.getFid());
		
		 ps.executeUpdate();
		}
		
	
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
}
