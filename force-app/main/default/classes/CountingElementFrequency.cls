public class CountingElementFrequency {

    public static void CountElemnts(){
        Map<Integer,Integer> frequencyMap = new Map<Integer,Integer>();
        List<Integer> intList = new List<Integer>{1,1,12,2,3,1,2,5,6,67,8};
         //  Set<Integer> setList=new Set<Integer> () ;
         //	setList.addAll(intList);
            for(Integer i =0; i< intList.size(); i++){
                if(frequencyMap.containsKey(intList[i])){
                    Integer k ;
                    k = frequencyMap.get(intList[i]);
                    k = k+1;
                    frequencyMap.put(intList[i],k);
                }else{
                    frequencyMap.put(intList[i],1);
                }
            }
       	System.debug('Elements Frequency = '+frequencyMap);
       // System.debug('element = '+frequencyMap.get(2));
     //  System.debug('setList = '+setList);
           
    }
}