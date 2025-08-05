package master.dao;
import java.sql.*;

import master.dto.FoodDto;
import master.dto.OrderDto;
import master.utilities.ConnectionFactory;
public class OrderDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//private String select_sql="select * from product order by pname";
	private String insert_sql="insert into order_dtls(fid,qty,uname) values(?,?,?)";
	//private String delete_sql="delete from food where fid=?";
	//private String update_sql="update food set price=? where fid=?";
	//private String select_sql="select * from food order by fid";
	public ResultSet billing(String uname)
	{
		String search_billing="select * from billing where uname='"+uname+"'";
		try
		{
		
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(search_billing);
		}
		
	
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public void insertData(OrderDto fdto)
	{
		try
		{
		
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
		 ps.setString(1,fdto.getFid());
		 ps.setInt(2,fdto.getQty());
			 ps.setString(3,fdto.getUname());
		 ps.executeUpdate();
		}
		
	
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
}
