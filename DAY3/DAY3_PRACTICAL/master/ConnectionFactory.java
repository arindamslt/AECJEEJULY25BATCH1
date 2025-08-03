package master;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private Connection cn=null;
public Connection getConn()
{
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");//REGISTER AND LOAD THE JDBC DRIVER
	//ESTABLISH THE CONNECTION
	 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/DBJEE","root","arindam");
	
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
