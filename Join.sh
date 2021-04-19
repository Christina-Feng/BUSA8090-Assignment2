# Sort by gene names alphabetically 

# Expression – save it as s.exp.tab 
sort -t : -k 1 expression.tab >> s.exp.tab
cat s.exp.tab

# Annotation – save it as s.ann.tab 
sort -t : -k 1 annotation.tab >> s.ann.tab
cat s.ann.tab

# Add headers to both sorted tables 

# echo -e to add header and populate s.exp.tab into the new hs.exp.tab 
echo -e "gene\texpr_value" > hs.exp.tab
cat s.exp.tab >> hs.exp.tab
cat hs.exp.tab

# echo -e to add header and populate s.ann.tab into the new hs.ann.tab 
echo -e "gene\tfunction_1\tmetabolism" > hs.ann.tab
cat s.ann.tab >> hs.ann.tab
cat hs.ann.tab

# Join hs.exp.tab & hs.ann.tab with \t and output Gene (Table 1, Column 1), function_1 (Table 2, Column 2), expr_value (Table 1, Column 2) metabolism (Table 2, Column 3)

join -t$'\t' -o '1.1,2.2,1.2,2.3' hs.exp.tab hs.ann.tab

