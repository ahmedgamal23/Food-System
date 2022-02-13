package database;

public class food_grediant {
    
    private static int id;
    private static String name;
    private static String description;
    private static String image;
    
    public food_grediant()
    {
    }
    
    public static int getId() {
        return id;
    }

    public static void setId(int id) {
        food_grediant.id = id;
    }

    public static String getName() {
        return name;
    }

    public static void setName(String name) {
        food_grediant.name = name;
    }

    public static String getDescription() {
        return description;
    }

    public static void setDescription(String description) {
        food_grediant.description = description;
    }

    public static String getImage() {
        return image;
    }

    public static void setImage(String image) {
        food_grediant.image = image;
    }
    
}
