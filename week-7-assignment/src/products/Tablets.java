package products;

public class Tablets extends Product {
    private int id;
    private String title;
    private double price;
    private String description;
    private String image;

    public Tablets(int id, String title, double price, String description,String image) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.image=image;
    }

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String getTitle() {
        return title;
    }

    @Override
    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public double getPrice() {
        return price;
    }

    @Override
    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String getDescription() {
        return description;
    }

    @Override
    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public void setImage(String image) {this.image = image;}

    @Override
    public String getImage() {return image;}
}
