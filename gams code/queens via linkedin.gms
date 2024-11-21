Scalar n 'size of the grid' /9/;

$eval N n

Sets
    i       'row'           /i1*i%N%/,
    j       'col'           /j1*j%N%/,
    g       'groups'        /g1*g%N%/    ;

Binary Variable
    x(i,j) 'cells in the grid'
;
 
Variable
    z 'dummy objective'
;

Table grid(i,j)
    j1  j2  j3  j4  j5  j6  j7  j8  j9
i1  1   1   1   1   1   1   1   1   1
i2  1   1   1   1   4   1   1   1   1
i3  1   4   4   4   4   4   6   6   1
i4  1   1   5   5   4   6   6   1   1
i5  2   1   1   5   4   6   1   1   9
i6  2   2   1   1   4   1   1   9   9
i7  3   2   2   1   1   1   7   8   9
i8  3   3   2   2   1   7   7   8   9
i9  3   2   2   2   2   2   8   8   8
;

Equation
    dummy ''
    eq1 'all rows contain one queen'
    eq2 'all cols contain one queen'
    eq3 'all groups contain one queen'
    eq4 'no queens touch'
;

dummy.. z =e= 0;

eq1(i).. sum(j,x(i,j)) =e= 1;

eq2(j).. sum(i,x(i,j)) =e= 1;

eq3(g).. sum((i,j) $ (grid(i,j) = ord(g)), x(i,j)) =e= 1;

eq4(i,j) $ (ord(i) > 1 and ord(i) < %N%
            and ord(j) > 1 and ord(j) < %N%)..
             x(i+1,j-1) + x(i+1,j+1) + x(i-1,j+1) + x(i-1,j-1) =l= 2*(1 - x(i,j));

Model queens / all /;

option limrow = 50 ;

option decimals = 0;

solve queens minimizing z using mip;

display x.l
;


*--------------------------------------------------------------------

* plot board
* code via: https://yetanothermathprogrammingconsultant.blogspot.com/

*--------------------------------------------------------------------

 

$set html qvl.html

Acronyms
*    #a6cee3,'#1f78b4','#b2df8a','#33a02c','#fb9a99', '#e31a1c', '#fdbf6f','#ff7f00', '#cab2d6', '#6a3d9a'
  green, red,  PAPAYAWHIP,  blue, maroon, lime,Salmon,olive, purple, yellow, navy,  aqua
;

Parameters
    c(g) 'colors of groups' /g1 green, g2 red, g3 PAPAYAWHIP,g4 blue, g5 maroon, g6 lime, g7 Salmon, g8 olive, g9 purple/
*                            , g10 yellow, g11 navy,  g12 aqua/
;
scalar

   posx        'x position'

   posy        'y position'
      
;

file f /%html%/;

put f;

 
*

*  Title

*



put '<h1>Queens via LinkedIn</h1>'/;

put '<p>The goal is to have exactly one queen in each row, column, and color region.</p>'/;


put '<table>'/;

put '<tr>'/;

put '<td>'/;

put '<svg height="600" width="600" viewbox="0 0 ',(n+1),' ',(n+1),'">'/;
   
loop(g,
    loop((i,j),
    
        put '<rect x="',ord(j):0:0,'" y="',ord(i):0:0,'" width="1" height="1" ';
    
        put$(grid(i,j) = ord(g)) 'fill="',c(g),'"';
        put$(grid(i,j) <> ord(g)) 'fill-opacity="0"';

        
        put 'stroke-width="0.01" stroke="black" />'/;
    
    );
);

*

*  placing queens

*

   loop((i,j)$x.l(i,j),

      posx = 0.5+ord(j);

      posy = 0.9+ord(i);

      put '<text x="',posx:0:1,'" y="',posy:0:1,'" '

            'text-anchor="middle" stroke="black" '

            'stroke-width="0.01" fill="black" font-size="1">♕</text>'/;

      );            

put '</tr></table>'/;

putclose;

executetool 'win32.ShellExecute "%html%"';