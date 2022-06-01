Account acc = new Account();
Account accArizona = [select id, name from account where name = 'University of Arizona'];
acc.name = 'Summer Fest LLC';
acc.Type = 'Technology Partner';
acc.Rating = 'Hot';
acc.AnnualRevenue = 200000000;
acc.parentId = accArizona.id;
insert acc;
system.debug(acc);

List<contact> conList = new List<contact>();
for (integer i = 1; i < 4; i++){
contact con = new contact();
con.lastName = 'Event Planner ' + i;
con.phone = '+1 2345 7896';
con.leadSource = 'Web';
con.AccountId = acc.id;
conList.add(con);
system.debug( 'inside ' + con);
}
system.debug('outside ' + conList);
