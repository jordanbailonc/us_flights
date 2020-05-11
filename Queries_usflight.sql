1.- SELECT count(flightID) FROM flights;
2.- SELECT origin, avg(ArrDelay) as "prom_arribades", avg(ArrTime) as "prom_sortides" FROM flights group by Origin;
3.- SELECT Origin, colYear, colMonth, avg(ArrDelay) as "prom_arribades" FROM flights group by Origin, colYear, colMonth;
4.- SELECT a.City, f.colYear, f.colMonth, avg(f.ArrDelay) as "prom_arribades" 
FROM usairports a join Flights f on a.IATA=f.Origin 
group by a.City, f.colYear, f.colMonth;
5.- select Uniquecarrier, colyear, colmonth, sum(cancelled) as "total_cancelled"
from Flights group by UniqueCarrier, colyear, colMonth order by total_cancelled desc;
6.- SELECT TailNum, sum(Distance) as "totalDistance" 
FROM Flights group by TailNum order by totalDistance desc LIMIT 1, 10;
7.- SELECT UniqueCarrier, avg(ArrDelay) as "avgDelay" 
FROM Flights group by UniqueCarrier having AvgDelay > 10 order by avgDelay desc;
