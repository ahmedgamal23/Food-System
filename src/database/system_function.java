package database;

import gui.create_panel;
import gui.system;
import java.awt.Color;
import java.awt.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class system_function extends connect_to_database{
    
    private static Statement statement;
    static create_panel cp = new create_panel();
    
    public system_function()
    {}
    
    // to get food or get drinks or ...
    public static void get_food_grediant(String name_table , JPanel main_panel)
    {
        // select all data from database ....
        String query = "SELECT * FROM " +name_table;
        ResultSet rs = null;
        int size_X = main_panel.getWidth();
        int size_y = main_panel.getHeight();
        try {
            int w = 0 , h = 0;
            setconnection();
            statement = con.createStatement();
            rs = statement.executeQuery(query);
            while (rs.next()) {
                /*Retrieve one food details 
                and store it in food object*/
                
                JPanel panel = new JPanel();
                panel.setLayout(null);
                panel.setBackground(Color.white);
                panel.setVisible(true);
                panel.setBounds(w, h, size_X , 320);
                 
                main_panel.add(panel);
                cp.label_txt("", 0 , 0 , size_X , 250 , 0 , new JLabel() , new ImageIcon(rs.getString("image")) , main_panel , panel);
                cp.label_txt(rs.getString("name") , 10 , 255 , size_X , 20 , 18 , new JLabel() , null , main_panel , panel);
                cp.label_txt(rs.getString("description") , 10 , 280 , size_X , 20 , 18 , new JLabel() , null , main_panel , panel);
                
                w = 0;
                h = h + 320;
            }
            
            con.close();
        } catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
    
}
