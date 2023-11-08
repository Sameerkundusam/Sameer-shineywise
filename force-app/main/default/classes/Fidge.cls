public class Fidge {
    public String modelNumber;
    public Integer numberInStock;
    public void updateStock(Integer justSold){
        numberInStock = numberInStock - justSold;
    }
    public Fidge(){
        modelNumber='XX-xx';
        numberInStock=0;
    }
    public Fidge(String theModelNumber,Integer theNumberInStock){
        modelNumber=theModelNumber;
        numberInStock=theNumberInStock;
    }

}