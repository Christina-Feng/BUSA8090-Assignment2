mysql> SELECT m.LastName, m.FirstName, m.MemberID
    -> FROM Member m 
    -> WHERE Year(m.JoinDate)=2013; 
#Command is very similar to Q2a, except parameter JoinDate
#JoinDate has DATETIME parameter as per Churcher Chp1, to extract year info, we need to specify Year(m.JoinDate).
