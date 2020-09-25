function too_young = under_age(age,limit)
if nargin == 2
    too_young = age < limit;
else
    too_young = age < 21;
end