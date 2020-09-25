function admit = eligible (v,q)
a=[v q];
admit = (v > 88) && (q > 88) && (mean(a) >= 92);