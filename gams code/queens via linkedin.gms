Scalar n 'size of the grid' /7/;

$eval N n

Sets
    i       'row'           /i1*i%N%/,
    j       'col'           /j1*j%N%/,
    g       'groups'        /g1*g%N%/    ;

Parameter
    group(g)
;

group(g) = ord(g);

Binary Variable
    x(i,j) 'cells in the grid'
;
 
Variable
    z 'dummy objective'
;

Table grid(i,j)
    j1  j2  j3  j4  j5  j6  j7
i1  1   7   7   7   7   7   7
i2  1   1   7   5   5   6   7
i3  2   1   1   5   6   6   7
i4  2   2   1   6   6   6   7
i5  4   2   1   1   6   7   7
i6  4   4   4   3   7   7   7
i7  4   4   4   3   7   7   7

;

Equation
    dummy 'dummy equation'
    eq1 'all rows contain one queen'
    eq2 'all cols contain one queen'
    eq3 'all groups contain one queen'
    eq4 'no queens touch'
;

dummy.. z =e= 0;

eq1(i).. sum(j,x(i,j)) =e= 1;

eq2(j).. sum(i,x(i,j)) =e= 1;

eq3(g).. sum((i,j) $ (grid(i,j) = group(g)), x(i,j)) =e= 1;

eq4(i,j) $ (ord(i) > 1 and ord(i) < %N%
            and ord(j) > 1 and ord(j) < %N%)..
             x(i+1,j-1) + x(i+1,j+1) + x(i-1,j+1) + x(i-1,j-1) =l= 2*(1 - x(i,j));

Model queens / all /;

option limrow = 50 ;

option decimals = 0;

solve queens minimizing z using mip;

display x.l;