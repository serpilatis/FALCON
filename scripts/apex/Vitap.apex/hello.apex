

/* Apex Anonim kısmını kullanarak verilen bilgilerle bir tane Account insert edin. 
       Name           : Summer Fest LLC
       Parent Account : University of Arizona
       Type           : Technology Partner
       Rating         : Hot
       Annual Revenue : 200,000,000*/
Account acc1 = [Select Id, name From Account Where name = 'University Of Arizona'];

    Account newAcc = new Account();
    newAcc.Name = 'Summer Fest LLC';
    newAcc.ParentId = acc1.Id;
    newAcc.Type = 'Technology Partner';
    newAcc.Rating = 'Hot';
    newAcc.AnnualRevenue = 200000000;

    insert newAcc;
    system.debug(newAcc);






















// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

/*string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);*/