mysql -u christinaf -p # Login mysql

mysql> SELECT m.LastName, m.FirstName, m.MemberID # Select Output
    -> FROM Member m #From Prefix Member m
    -> WHERE m.Coach is NULL; #Members with Coach NULL
