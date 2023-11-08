public class MathCalculator {
	private static Integer add(Integer num1,Integer num2){
        return num1+num2;
    }
    private static Integer multiply(Integer num1,Integer num2){
        return num1*num2;
    }
    private static Integer subtract(Integer num1,Integer num2){
        return num1-num2;
    }
    private static void printout(Integer num1, Integer num2){
        Integer a = add( num1, num2);
        system.debug('The summation of the integers is'+a);
        Integer m = multiply( num1, num2);
        system.debug('The multiplication of the integers is'+m);
        Integer s = subtract( num1, num2);
        system.debug('The subtraction of the integers is'+s);
    }
    public void doMath(Integer num1,Integer num2){
        printout( num1, num2);
    }
}