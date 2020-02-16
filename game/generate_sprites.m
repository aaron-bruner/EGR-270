%This file is not needed to play, but I share it for allow others learn.
%First we load the different sprites for the spaceship and the enemies.
a=imread('Sprites_g.png');
[heigth,width,j]=size(a);
x=linspace(-0.5,0.5,heigth);
y=1-linspace(-0.5,0.5,width/10);
[X,Y]=meshgrid(x,y);
%We have draw 10 figures inside Sprites_g.png.
for n=1:10
%Each sprite is being saved into a diferent matrix
game.sprites{n}=n*double(a(1:heigth,(n-1)*width/10+1:n*width/10,1))/255;
%And the coordinates of each pixel.
game.X{n}=X;
game.Y{n}=Y; 
%To allow us to see trougth black areas on sprite, we need to set that pixels to NaN. 
       for i=1:heigth
           for k=1:width/10
          if game.sprites{n}(i,k)==0
              game.sprites{n}(i,k)=NaN;
           end
           end
       end
end
%Finally, we store the data to use it in the game.
save('gamedata','game')