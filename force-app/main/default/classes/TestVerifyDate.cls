@isTest
public class TestVerifyDate {
    
	//Integer day1 = myDate1.day();
    //Integer day2 = myDate2.day();
	
    @isTest static void TestCheckDates(){
        date myDate1 = date.newInstance(2022, 4, 1);
    date myDate2 = date.newInstance(2022, 4, 21);
        Date check = VerifyDate.CheckDates(myDate1,myDate2);
        System.assertEquals(myDate2, check);
    }
     @isTest static void TestCheckDatesElse(){
        date myDate1 = date.newInstance(2022, 4, 1);
    date myDate2 = date.newInstance(2022, 4, 31);
        Date check = VerifyDate.CheckDates(myDate1,myDate2);
        System.assertEquals(myDate2, check);
    }

}