package utils;


import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JdbcUtil {
	public static DataSource ds=null;
	static {
		ComboPooledDataSource cpds=new ComboPooledDataSource() ;
		ds=cpds;
		}
	
	public static DataSource getDataSource() {
		return ds;
		
	}
	
}
