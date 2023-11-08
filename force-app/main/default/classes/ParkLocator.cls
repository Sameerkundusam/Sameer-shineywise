public class ParkLocator {
    public static List<String> country(string con){
        ParkService.ParksImplPort park = new ParkService.ParksImplPort();
        return park.byCountry(con);
    }
}