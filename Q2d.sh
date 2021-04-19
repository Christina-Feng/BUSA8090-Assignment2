# Method 1 
mysql> SELECT DISTINCT e.Year from Entry e; # How many years of tournament 

# Members who joined tournament
mysql> SELECT m.LastName, m.FirstName, m.MemberID
    -> FROM Member m
    -> WHERE EXISTS
-> (SELECT * FROM Entry e WHERE e.MemberID=m.MemberID);

# Members who joined tournament in 2013 

mysql> SELECT DISTINCT m.LastName, m.FirstName, m.MemberID, e.Year
    -> FROM Entry e, Member m
    -> WHERE e.MemberID=m.MemberID
-> AND e.Year=2013;


# Members who joined tournament in 2014

mysql> SELECT DISTINCT m.LastName, m.FirstName, m.MemberID, e.Year
    -> FROM Entry e, Member m
    -> WHERE e.MemberID=m.MemberID
-> AND e.Year=2014;

# Members who joined tournament in 2015

mysql> SELECT DISTINCT m.LastName, m.FirstName, m.MemberID, e.Year
    -> FROM Entry e, Member m
    -> WHERE e.MemberID=m.MemberID
-> AND e.Year=2015;

# Member who joined tournament in all three years

mysql> SELECT DISTINCT m.LastName, m.FirstName, m.MemberID
    -> FROM Entry e, Member m
    -> WHERE e.MemberID=m.MemberID
    -> AND e.Year IN ('2013', '2014','2015');

# Method 2 - Relational Calculus 
mysql> SELECT m.LastName, m.FirstName, m.MemberID
    -> FROM Member m
    -> WHERE NOT EXISTS
    -> (Select e1.Year from Entry e1 WHERE NOT EXISTS
    -> (Select * from Entry e2
    -> where e2.MemberID=m.MemberID and e1.Year=e2.Year));
