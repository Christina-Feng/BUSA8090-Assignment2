mysql> SELECT DISTINCT a1.metabolism # Filter out repeated metabolism
    -> FROM annotation a1 INNER JOIN annotation a2 #Self-join annotation
    -> on a1.metabolism = a2.metabolism #Find two metabolisms are the same
    -> where a1.gene<>a2.gene; #Filer out those genes are equal
