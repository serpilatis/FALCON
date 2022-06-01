List<Account> deleteList = [select id, name from account where name like 'Softinnovas%'];
System.debug(deleteList.size());
delete deleteList;
List<Account> deleteList2 = [select id, name from account where name like 'Softinnovas%'];
System.debug(deleteList2.size());






AccountInfo.showAccounts();

