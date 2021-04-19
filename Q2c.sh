mysql> SELECT m.LastName, m.FirstName, m.MemberID # Same as Q2a & Q2b
    -> FROM Member m, Entry e # Select from two Tables 
    -> WHERE NOT EXISTS #Churcher's Listing 4-10 & 4-11 Reference
    -> (SELECT * FROM Entry e WHERE m.MemberID=e.MemberID and e.Year=2013) # Provided Synax
    -> AND m.MemberID=e.MemberID; #Filter out all MemberIDs exist in Entry MemberID   
