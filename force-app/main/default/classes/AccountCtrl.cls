public with sharing class AccountCtrl {
    @AuraEnabled(cacheable=true)
    public static List<Account> getBiotechAccounts(){
        List<Account> accounts= [SELECT Name, Type, Industry, AnnualRevenue
                                FROM Account
                                WHERE Industry = 'Biotechnology'
                                With SECURITY_ENFORCED];
        return accounts;   
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsByType(String type) {
        List<Account> accounts= [SELECT Name, Type, Industry, AnnualRevenue
                                FROM Account
                                WHERE Type = :type
                                With SECURITY_ENFORCED
                                LIMIT 4];
        return accounts;  
    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsByIndustry(String industry) {
        List<Account> accounts= [SELECT Name, Type, Industry, AnnualRevenue
                                FROM Account
                                WHERE Industry = :industry
                                With SECURITY_ENFORCED];
        return accounts;  
    }      
}
