/*2. Create an apex class AccountManager that updates the Description field for the newly created records with AccountHandlerInfo class. Let's make sure to use the values passed in name for account while updating the Description field.
New value of the Description should be the combination of the Name of the account and created date of account.
For an example, the name Of the account is <<Jimmy Thakkar>>, and the record has been create on <<2022-0212T10.57.75.000.0000>> then the Description of the record will be ==> Jimmy Thakkar2022-0212T10.57.75.000.0000*/

public  class AccountManager {
   public static void updatesTheDescriptionField() {
       List<string> list1 = new List<string>{'Vitap', 'Jimmy', 'Sumit', 'Enesh', 'Burak'};
       List<account> accList = new List<account>();
       accList = AccountHandlerInfo.insertNewAccount(List1);
       for (account eachAcc : accList) {
           string newDateString = string.valueOf(eachAcc.CreatedDate);
           eachAcc.description = eachAcc.name + newDateString;
           System.debug(eachAcc.Description);
       }
       update accList;
   }
}
