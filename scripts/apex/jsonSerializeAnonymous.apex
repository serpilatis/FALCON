Account a = new account();
a.Name = 'Mona';
a.phone = '';
a.AnnualRevenue = 90909854;

account b = new account();
b.name = 'Lisa';
b.Phone = '';
b.AnnualRevenue = 987654123;

List<account> ab = new list<account>{a,b};
system.debug(ab);
string accountJSON1 = JSON.serialize(ab);
system.debug(accountJSON1);

list<account> listAccount = [select id, name, phone, site, annualrevenue from account limit 5];
string accountJSON22 = JSON.serialize(listAccount);
system.debug(accountJSON22);

