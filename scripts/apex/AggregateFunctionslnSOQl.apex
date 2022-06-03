Select COUNT() from opportunity;

Select COUNT(Id) from opportunity;

AggregateResult arg = [Select COUNT(id) from opportunity ];
system.debug('@@@@::2:'+arg);

Integer arg = [Select COUNT() from opportunity ];
system.debug('@@@@::1:'+arg);