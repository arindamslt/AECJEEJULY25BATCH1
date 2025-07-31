package master;
import java.sql.*;
import java.util.Scanner;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Scalar;
class TestConnection
{
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql="select * from product";
	private String insert_sql="insert into product values(?,?,?,?)";
	private String update_sql="update product set pname=?,pqty=?,price=? where pid=?";
	private String delete_sql="delete from product where pid=?";
	private String search_sql="select * from product where pname=?";
	private Scanner sc;
	public void getConn()
	{
		try
		{
		 //Class.forName("com.mysql.cj.jdbc.Driver");
		 //cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","arindam");
		   ConnectionFactory con=new ConnectionFactory();
		   cn=con.getConn();
			st=cn.createStatement();
		 rs=st.executeQuery(select_sql);
		 while(rs.next())
		 {
			 /*System.out.println(rs.getString(1));
			 System.out.println(rs.getString(2));
			 System.out.println(rs.getInt(3));
			 System.out.println(rs.getDouble(4));*/
			 System.out.println(rs.getString(1)+"==>"+rs.getString(2)+"===>"+rs.getInt(3)+"===>"+rs.getDouble(4));
		 }
		}
		/*catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}*/
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void addData()
	{
		try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","arindam");
		  ps=cn.prepareStatement(insert_sql);
		  ps.setString(1,"P3");
		  ps.setString(2,"TAB");
		  ps.setInt(3,2);
		  ps.setDouble(4,22000.00);
		  ps.executeUpdate();
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData()
	{
		try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","arindam");
		  ps=cn.prepareStatement(update_sql);
		  ps.setString(4,"P3");
		  ps.setString(1,"MOBILE");
		  ps.setInt(2,12);
		  ps.setDouble(3,12000.00);
		  ps.executeUpdate();
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData()
	{
		try
		{
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","arindam");
		  ps=cn.prepareStatement(delete_sql);
		  ps.setString(1,"P3");
		  ps.executeUpdate();
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void searchPname()
	{
		String pname;
		try
		{
			sc=new Scanner(System.in);
			System.out.println("ENTER THE PRODUCT NAME");
			 pname=sc.next();
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","arindam");
		ps=cn.prepareStatement(search_sql);
		  ps.setString(1,pname);
		  ResultSet rs=ps.executeQuery();
		  while(rs.next())
		  {
			  System.out.println(rs.getString(1)+"==>"+rs.getString(2)+"===>"+rs.getInt(3)+"===>"+rs.getDouble(4)); 
		  }
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
}
public class JavaMySqlConn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
   TestConnection ts=new TestConnection();
   //ts.addData();
   //ts.updateData();
   //ts.deleteData();
   ts.getConn();
   //ts.searchPname();
   
	}

}
