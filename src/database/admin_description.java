
package database;

public class admin_description {
    
    private static String name;
    private static String password;
    private static String username;
    
    public admin_description()
    {}

    public static String getName() {
        return name;
    }

    public static void setName(String name) {
        admin_description.name = name;
    }

    public static String getPassword() {
        return password;
    }

    public static void setPassword(String password) {
        admin_description.password = password;
    }

    public static String getUsername() {
        return username;
    }

    public static void setUsername(String username) {
        admin_description.username = username;
    }
    
    
}
