map=[
    0 0 0;              %black
    1 1 1;              %white
    1 0 0;              %red
    0 1 0;              %green
    0 0 1;              %blue
    127/255 1 212/255;  %aquamarine
    ];

%create colored squares
black = 1*ones(200,200);
white = 2*ones(200,200);
red = 3*ones(200,200);
green = 4*ones(200,200);
blue = 5*ones(200,200);
aqua = 6*ones(200,200);

%concatenate the squares so tha tthey look like a cross
A=[
   black red black;
   green white blue;
   black aqua black;
   ];

imwrite(A,map,'colors_cross.jpg','jpg');