package beans;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.sql.DataSource;


public class ConnectionUtilities 
{

private static	DataSource	ds;
private static Connection con;
public static Connection  getInstance()
{
		  if(con==null)
		  {
					try {
						InitialContext initContext = new InitialContext();
				
						Context env = (Context) initContext.lookup("java:comp/env");
				
						ds = (DataSource) env.lookup("jdbc/webshop");
				
					} 
					catch (NamingException e) 
					{
					e.printStackTrace();
					System.err.println("Error in creating connection in getInstance Method");
					return null;
					}
					try {
						con = (Connection) ds.getConnection();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return null;
					}
		   }
		  return con;
		}

}
