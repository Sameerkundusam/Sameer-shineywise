public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
    List<String> newList = new List<String>();
        
			for(Integer i=0;i<n;i++) {
                newList.add('Test '+ i);
      }
        return newList;
    }
}