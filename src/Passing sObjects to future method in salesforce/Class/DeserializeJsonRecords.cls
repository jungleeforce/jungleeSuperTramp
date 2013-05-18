public class DeserializeJsonRecords{
    
    @future
    public static void insertAccount(string accountString){
        //Deserialize the list and cast it to account list.
        list<account> insertAccList =  (list<account>)JSON.deserializeStrict(accountString, list<account>.class);
		//Insert the accounts
        insert insertAccList;
    }
}
    