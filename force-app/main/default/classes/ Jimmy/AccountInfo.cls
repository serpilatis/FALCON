//Create one class called AccountInfo, which contains the method called showAccounts. This method should print all accounts' names and related oppotunities where the opportunity close date is in future.

public  class AccountInfo {
   public static void showAccounts(){
       
    List<Account> accountOppFuture =[SELECT name, (SELECT closeDate FROM Opportunities WHERE closeDate > TODAY) FROM Account];

       System.debug(accountOppFuture);
   }
}