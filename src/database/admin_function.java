
package database;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class admin_function extends connect_to_database{
    
    static String sql;
    static food_grediant food_g = new food_grediant();
    static admin_description admin_d = new admin_description();
    //................................//
    public static boolean check_admin(String user_name , String pass)
    {
        try {
            setconnection();
            Statement s = (Statement) con.createStatement();
            sql = "select * from admin where " + "username = '"+user_name+"' and password = '"+pass+"'";
            s.executeQuery(sql);
            con.close();
            return true;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return false;
    }
    
    // to add gradient ...... (food ) in database ....
    public static void insert_food()
    {
        try {
            setconnection();
            Statement s = (Statement) con.createStatement();
            sql = "INSERT INTO food ( name , description , image ) VALUES ('"+food_g.getName()+"' , '"+food_g.getDescription()+"' , '"+food_g.getImage()+"')";
            s.executeUpdate(sql);
            System.out.println("food saved");
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }
    // to add gradient ...... (drink ) in database ....
    public static void insert_drink()
    {
        try {
            setconnection();
            Statement s = (Statement) con.createStatement();
            sql = "INSERT INTO drinks ( name , description , image ) VALUES ('"+food_g.getName()+"' , '"+food_g.getDescription()+"' , '"+food_g.getImage()+"')";
            s.executeUpdate(sql);
            System.out.println("food saved");
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }
    // to add gradient ...... (drink ) in database ....
    public static void insert_desert()
    {
        try {
            setconnection();
            Statement s = (Statement) con.createStatement();
            sql = "INSERT INTO desert ( name , description , image ) VALUES ('"+food_g.getName()+"' , '"+food_g.getDescription()+"' , '"+food_g.getImage()+"')";
            s.executeUpdate(sql);
            System.out.println("food saved");
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }
    // to add new admin ......  in database ....
    public static void insert_admin()
    {
        try {
            setconnection();
            Statement s = (Statement) con.createStatement();
            sql = "INSERT INTO `admin`(`username`, `name`, `password`) VALUES ('"+admin_d.getUsername()+"' , '"+admin_d.getName()+"' , '"+admin_d.getPassword()+"')";
            s.executeUpdate(sql);
            System.out.println("food saved");
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }
    
}
