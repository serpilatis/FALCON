try{
    account a = new account();
    a.Name = 'something';
    insert a;
} catch(DmlException dex){
    //system.debug('something went wrong buddy.');
    system.debug('DML went wrong buddy.');
}
catch(Exception ex){
    system.debug('something went wrong buddy.');
}
//system.debug('account inserted?');
system.debug('Apex is SIMPLE.');