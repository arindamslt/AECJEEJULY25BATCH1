package master;
import java.sql.*;
public class ConnectionFactory {
private Connection cn=null;
public Connection getConn()
{
	try
	{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","arindam");
	 
	}
	catch(ClassNotFoundException ce)
	{
		ce.printStackTrace();
	}
	catch(SQLException se)
	{
		se.printStackTrace();
	}
	return cn;
}
}
