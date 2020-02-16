function Invaders1
%Version 0.1 (beta, so please, give feedback).
%
%This is a game and also an example of how to read/use keypress
%functionality from figures.
%
%This is a tribute to Space invaders[1], without any lucrative pourpouse.
%
%The game opens a figure with the spaceship that must land on the square
%avoiding hitting the land.
%
%Use the arrows to move the spaceship and the spacebar to fire laser against the enemies.
%
%
%  References:
%  [1] Space Invaders, Game,
%      http://en.wikipedia.org/wiki/Space_Invaders
%
%This function was written by :
%                             Héctor Corte
%                             B.Sc. in physics 2010
%                             M.Sc. in Complex physics systems 2012
%                             NPL (National Physical Laboratory), London,
%                             United kingdom.
%                             Email: leo_corte@yahoo.es
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%First prepare Figure and axes.
%Next create figure and prepare it for fun.
figure('MenuBar','none','Color','black',...
    'Resize','off','name','Matlab Space Invaders','position',[50,50,600,500],...
    'CloseRequestFcn','global j;j=1;','BackingStore','on','keypressfcn',@keypress,...
    'KeyReleaseFcn',@keyrelease);
%When BackingStore is on, MATLAB stores a copy of the Figure window in an off-screen pixel buffer. When obscured parts of the Figure window are exposed, MATLAB copies the window contents from this buffer rather than regenerating the objects on the screen.
%Using keypressfcn we can take control in real time of the game.

%%%
global game j l g gg m sound_fire sound_moving sound_crash
load('musicdata.mat')
game.score=0;
game.level=0;
game.lives=3;
game.v=[0.4,0];
j=0;
g=cell(0);
gg=cell(0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Now the intro
%Generate one player and a set of enemies.
l=cell(1,9);
l{1}=player([3-2,1]);
draw_player(l{1},2)
for i=2:8
    hold on
    l{i}=enemy(i,[3*i-2,1]);
    draw_enemy(l{i},2)
end
%The rest of things
axis([0,20,0,20])
colormap jet
caxis([0 8])
set(gca,'color',[0 0 0])
text(2,18.05,'Matlab','color','w','FontSize',49)
text(2,18,'Matlab','color','r','FontSize',50)
text(3,14.05,'Space','color','w','FontSize',39)
text(3,14,'Space','color','b','FontSize',40)
text(5,9.05,'Invaders','color','g','FontSize',59)
text(5,9,'Invaders','color','b','FontSize',60)
text(5,6,'Press Any key to Start','color','w','FontSize',20)
drawnow;
play(sound_intro);
waitforbuttonpress ;
cla
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Game starts
newlvl()
while 1<2
    %This loop is used to render game, update everything.
    render()
    update()
    pause(0.1)
    %And for closing game when player asks.
    if j==1;
        clear game
        delete(gcf)
        break
    end
end
end

function render()
%This function is used to draw everything.
global game l g gg
hold off
%Draw city.
y=[1,1,2,2,2,3,1,1,1,1,3,3,2,2,4,4,3,3,2,2,1,1,3,3,1,1,1,1,2,2,1,1,4,4,3,3,2,2,2,2];
x=[0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20];
plot(x,y,'w')
hold on
%Draw player.
draw_player(l{1},1)
%Draw all the enemies
for i=2:length(l)
    draw_enemy(l{i},1)
end
%Lasers from player.
for i=1:length(g)
    draw_lasser(g{i},1)
end
%Lasers from enemies.
for i=1:length(gg)
    draw_lasser(gg{i},1)
end
%The rest of things
axis([0,20,0,20])
colormap jet
caxis([0 8])
set(gca,'color',[0 0 0])
%Score and lives.
text(0,19,['Score ',num2str(game.score)],'color','w','FontSize',15)
text(5,19,['Lives ',num2str(game.lives)],'color','r','FontSize',15)
hold off
end

function keypress(varargin)
%This is the controls setup.
%I leave the main keys here even if I don´t use them as remainder of names
%and possibilities.
global l g  sound_fire
key = get(gcbf,'CurrentKey');
if strcmp(key,'')
elseif strcmp(key,'shift')
elseif strcmp(key,'space')
    g{length(g)+1}=lasser([l{1}.position(1),l{1}.position(2)+1]);
    play(sound_fire);
elseif strcmp(key,'leftarrow')
    %Moving player left.
    if l{1}.position(1)>2
        l{1}=update_player(l{1},[-0.2,0]);
    end
elseif strcmp(key,'uparrow')
elseif strcmp(key,'rightarrow')
    %Moving player right
    if  l{1}.position(1)<18
        l{1}=update_player(l{1},[0.2,0]);
    end
elseif strcmp(key,'downarrow')
elseif strcmp(key,'return')
end;
end

function keyrelease(varargin)
%This is the controls setup.
%Unused in this game.
%I leave the main keys here even if I don´t use them as remainder of names
%and possibilities.
key = get(gcbf,'CurrentKey');
if strcmp(key,'')
elseif strcmp(key,'shift')
elseif strcmp(key,'space')
elseif strcmp(key,'leftarrow')
elseif strcmp(key,'uparrow')
elseif strcmp(key,'rightarrow')
elseif strcmp(key,'downarrow')
elseif strcmp(key,'return')
end;
end

function update()
%This is where all the game updates takes place.
global game l g gg sound_moving sound_crash sound_fire
%Check if game is finished by killing all enemies.
if length(l)==1
    game.level=game.level+1;
    newlvl()
end
%Update enemies position.
minx=19;
maxx=1;
%We first check if enemies in the laterals had reached the end of the
%frame.
for i=2:length(l)
    if l{i}.position(1)>maxx
        maxx=l{i}.position(1);
    end
    if l{i}.position(1)<minx
        minx=l{i}.position(1);
    end
end
if maxx>=19 || minx<=1
    %In case enemies complete a row they go down and change horizontal
    %movement
    game.v(1)=-game.v(1);
    game.v(2)=-0.2;
end
%With this considerations, enemies are updated (and eventually shoot
%player).
for i=2:length(l)
    %Randomly, enemies shoot player.
    if rand()<1/(100+10*exp(-game.level))
        gg{length(gg)+1}=lasser([l{i}.position(1),l{i}.position(2)-1]);
        play(sound_fire);
    end
    %Use generated velocity to update enemies position.
    l{i}=update_enemy(l{i},game.v);
    if l{i}.position(2) <3
        %if enemies land on earth, player looses.
        lose()
    end
end
game.v(2)=0;


%%And now update lasers from player
lol=length(g);
for i=1:lol
    g{lol-i+1}=update_lasser(g{lol-i+1},[0,5]);
    %This is for deleting lasers if they go out of screen
    if g{lol-i+1}.position(2)>20
        g(lol-i+1)=[];
    end
end

%Now update position of enemies lasers
lolo=length(gg);
for i=1:lolo
    gg{lolo-i+1}=update_lasser(gg{lolo-i+1},[0,-2]);
    %This is for deleting lasers if they go out of screen
    if gg{lolo-i+1}.position(2)<0
        gg(lolo-i+1)=[];
    end
end

lol=length(g);
ask=length(l);
%Check if lasers hit enemy
for i=1:lol
    %This is for deleting lassers in case the hit an enemy.
    ask=length(l);
    for j=2:ask
        if (g{lol-i+1}.position(1)-l{ask-j+2}.position(1))^2+(g{lol-i+1}.position(2)-l{ask-j+2}.position(2))^2<4
            g(lol-i+1)=[];
            %If the laser pass close enougth to an enemy, it destroys it.
            l(ask-j+2)=[];
            play(sound_crash);
            game.score=game.score+10;
            break
        end
    end
end
%Check if enemies lasers hit player or not
lolo=length(gg);
for i=1:lolo
    if (gg{lolo-i+1}.position(1)-l{1}.position(1))^2+(gg{lolo-i+1}.position(2)-l{1}.position(2))^2<2
        gg(lolo-i+1)=[];
        %If the laser pass close enougth to player, it takes one live.
        play(sound_crash);
        game.lives=game.lives-1;
        break
    end
end
%if player looses al his lives game ends.
if game.lives==0
    lose()
end
play(sound_moving);
end

function newlvl()
global game l
%In a new level we need to reinitizlize everything.
%Write the level number
f=text(5,15,['Level: ',num2str(game.level)],'color','w','FontSize',55);
g=text(5,5,'Click on screen to control.','color','b','FontSize',10);
g2=text(5,3,'Use Arrows to move and Space to fire.','color','b','FontSize',10);
pause(2);
delete(f);
delete(g);
delete(g2);
%And restart player and enemies (leveled)
l=cell(1,6*4+1);
l{1}=player([10,1]);
%Depending on level we have different enemies
if game.level<=3
    k=game.level;
else
    k=3;
end
for i=1:6
    for j=0:3
        l{1+i+j*6}=enemy(4+k-j,[3*i,16-j*2]);
    end
end
%Set background
axis([0,20,0,20])
colormap jet
caxis([0 8])
set(gca,'color',[0 0 0])


end

function lose()
%If player dies or enemies invade earth.
global game
%Display losing message.
f=text(5,15,'Losser!!','color','w','FontSize',55);
g=text(4,14,'Losser!!','color','r','FontSize',55);
pause(2);
delete(f);
delete(g);
%Restart the game.
game.score=0;
game.level=0;
game.lives=3;
newlvl()
end