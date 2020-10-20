package products;

public abstract class Product {
    public abstract int getId();
    public abstract void setId(int id);
    public abstract String getTitle();
    public abstract void setTitle(String title);
    public abstract double getPrice();
    public abstract void setPrice(double price);
    public abstract String getDescription();
    public abstract void setDescription(String description);
    public abstract void setImage(String image);
    public abstract String getImage();

}
