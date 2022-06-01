RankHandler rh = new RankHandler();
string prize1 = rh.rankPrize(1);
system.debug('you are the first.You won ; '+prize1+'.');
string prize2 = rh.rankPrize(2);
system.debug('you are the second.You won ; '+prize2+'.');
string prize3 = rh.rankPrize(3);
system.debug('you are the third.You won ; '+prize3+'.');
string prize4 = rh.rankPrize(4);
system.debug('you are not in top 10.You won ; '+prize4+'.');


RankHandler r = new RankHandler();
system.debug(r.rankPrizeSwitch(1));
system.debug(r.rankPrizeSwitch(10));
system.debug(r.rankPrizeSwitch(100));