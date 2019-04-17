package cetiitkgp.db;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
//import com.mysql.jdbc.Driver;
//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.Statement;

/**
 * @author Anirban Chakraborty
 * @version 0.01
 */
public class DBManager {
  private String DRIVER;
  private String DB_URL;
  private String USER;
  private String PASS;
  private Connection CONNECTION;
  private Statement STATEMENT;
  public PreparedStatement PREPARED_STATEMENT;
  
  public DBManager(){
    // JDBC driver name and database URL
    this.DRIVER         = "com.mysql.jdbc.Driver";
    this.DB_URL         = "jdbc:mysql://localhost:3306/pedagogy_new";

    //  Database credentials
    this.USER           = "root";
    this.PASS           = "Pedagogy_cet123";
    
    //java.sql.DriverManager, com.mysql.jdbc.Driver
    this.CONNECTION     = null;
    this.STATEMENT      = null;
  }
  public DBManager(String driver, String db_url, String user, String pass){
    this();
    // JDBC driver name and database URL
    this.DRIVER         = driver;
    this.DB_URL         = db_url;

    //  Database credentials
    this.USER           = user;
    this.PASS           = pass;
    
    //java.sql.DriverManager, com.mysql.jdbc.Driver
    this.CONNECTION     = null;
    this.STATEMENT      = null;
    this.PREPARED_STATEMENT = null;
  }
  public void initConnectionAndStatement(){
    try {
        Class.forName(DRIVER).newInstance();
        this.CONNECTION = DriverManager.getConnection(DB_URL, USER, PASS);
        this.STATEMENT = CONNECTION.createStatement();
    } catch (ClassNotFoundException e) {
        System.err.println(e.toString());
    } catch (Exception ex) {
        System.err.println(ex.toString());
    }
  }
  public ResultSet execQuery(String query){
    ResultSet rs = null;
    try {
      rs = STATEMENT.executeQuery(query);
    } catch (SQLException ex) {
      rs = null;
    } catch (Exception ex) {
      System.err.println(query);
    }
    return rs;
  }
  public void createPreparedStatement(String query) {
    try {
      this.PREPARED_STATEMENT = this.CONNECTION.prepareStatement(query);
    }
    catch (SQLException ex) {
      System.err.print("Error: Image doesn't exist.");
    }
    catch (Exception ex) {
      System.err.print("Error: You probably didn't initialize the class with initConnectionAndStatement().");
    }
  }
  
  public void free() throws SQLException{
    this.CONNECTION.close();
  }
}