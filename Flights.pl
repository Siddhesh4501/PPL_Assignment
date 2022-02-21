connection(mumbai,pune,
       [flight(mumbai,pune,9-40,10-50,ba4733,[mo,tu,we,th,fr,sa,su]),
	flight(mumbai,pune,13-40,14-50,ba4773,[mo,tu,we,th,fr,sa,su]),
	flight(mumbai,pune,19-40,20-50,ba4833,[mo,tu,we,th,fr,su])]).

connection(pune,mumbai,
       [flight(pune,mumbai,9-40,10-50,ba4732,[mo,tu,we,th,fr,sa,su]),
	flight(pune,mumbai,11-40,12-50,ba4752,[mo,tu,we,th,fr,sa,su]),
	flight(pune,mumbai,18-40,19-50,ba4822,[mo,tu,we,th,fr])]).

connection(pune,delhi,
       [flight(pune,delhi,13-20,16-20,oa212,[mo,tu,we,fr,su]),
	flight(pune,delhi,16-30,19-30,ba473,[mo,we,th,sa])]).

connection(pune,sikkim,
       [flight(pune,sikkim,9-10,11-45,ba614,[mo,tu,we,th,fr,sa,su]),
	flight(pune,sikkim,14-45,17-20,sr805,[mo,tu,we,th,fr,sa,su])]).

connection(pune,chennai,
       [flight(pune,chennai,8-30,11-20,ba510,[mo,tu,we,th,fr,sa,su]),
	flight(pune,chennai,11-00,13-50,az459,[mo,tu,we,th,fr,sa,su])]).

connection(delhi,sikkim,
        [flight(delhi,sikkim,11-30,13-10,oa322,[tu,th])]).

connection(delhi,pune,
       [flight(delhi,pune,11-10,14-20,oa211,[mo,tu,we,fr,su]),
	flight(delhi,pune,20-00,23-10,ba472,[mo,we,th,sa])]).

connection(chennai,pune,
       [flight(chennai,pune,9-10,11-00,az458,[mo,tu,we,th,fr,sa,su]),
	flight(chennai,pune,12-20,14-20,ba511,[mo,tu,we,th,fr,sa,su])]).

connection(chennai,sikkim,
       [flight(chennai,sikkim,9-25,10-15,sr621,[mo,tu,we,th,fr,sa,su]),
	flight(chennai,sikkim,12-45,13-35,sr623,[mo,tu,we,th,fr,sa,su])]).

connection(sikkim,delhi,
       [flight(sikkim,delhi,13-30,15-10,oa323,[tu,th])]).

connection(sikkim,pune,
       [flight(sikkim,pune,9-00,10-40,ba613,[mo,tu,we,th,fr,sa]),
	flight(sikkim,pune,16-10,16-55,sr806,[mo,tu,we,th,fr,su])]).

connection(sikkim,chennai,
       [flight(sikkim,chennai,7-55,8-45,sr620,[mo,tu,we,th,fr,sa,su])]).

connection(shillong,delhi,
       [flight(shillong,delhi,6-30,7-00,oa3333,[mo,tu,we,th,fr,sa,su]),
	flight(shillong,delhi,9-30,10-00,oa3334,[mo,tu,we,th,fr,sa,su]),
	flight(shillong,delhi,13-30,14-00,oa3335,[mo,tu,we,th,fr,sa,su]),
	flight(shillong,delhi,18-30,19-00,oa3336,[mo,tu,we,th,fr,sa,su])]).

connection(delhi,shillong,
       [flight(delhi,shillong,8-00,8-30,oa3343,[mo,tu,we,th,fr,sa,su]),
	flight(delhi,shillong,11-00,11-30,oa3353,[mo,tu,we,th,fr,sa,su]),
	flight(delhi,shillong,15-00,15-30,oa3363,[mo,tu,we,th,fr,sa,su]),
	flight(delhi,shillong,20-00,20-30,oa3373,[mo,tu,we,th,fr,sa,su])]).

connection(shillong,sikkim,
       [flight(shillong,sikkim,12-00,13-15,oa888,[mo,tu,we,th,fr,sa,su])]).

connection(sikkim,shillong,
       [flight(sikkim,shillong,15-30,16-45,oa889,[mo,tu,we,th,fr,sa,su])]).


:-dynamic connection/3.
 % best_route/7
 best_route(Place1,Place2,Day,BestRoute,DeptTime,ArrTime,ShortestLength):-
    setof(Length-Route-A-D,route(Place1,Place2,Day,Route,D,A,Length),[ShortestLength-BestRoute-ArrTime-DeptTime|_]).
