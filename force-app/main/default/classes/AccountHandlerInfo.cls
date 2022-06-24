/*1. Create an Apex class that inserts new accounts named after an incoming parameter as list of string. If the accounts are successfully inserted. the method should return the List of account records. If a parameter is blank than we should show the error message from class and the method should return null.
The Apex class must be called AccountHandlerInfo and be in public scope
The Apex class must have a public static method called insertNewAccount
The method must accept an incoming List of string as a parameter, which mill be used to create the Account names 
The list of accounts will be created based on the list of string, that means If we are passing the list of 5 strings clan 5 account records will be created 
The method must insert the accounts into the system and then return the records*/


public  class AccountHandlerInfo {
  public static list<account> insertNewAccount(list<string> accountsNames){
        List<account> newAccList = new List<account>();

        if(!accountsNames.isEmpty()){
           
                for (string eachAccNames : accountsNames) {
                Account acc = new Account();
                acc.name = eachAccNames;
                newAccList.add(acc);
            }
            System.debug('My new list :' + newAccList);
            insert newAccList;

        
        } else{
            System.debug('The list is empty =' + newAccList);
        } 
        return newAccList;  
    
   } 
}