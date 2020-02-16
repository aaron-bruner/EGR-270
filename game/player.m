classdef player
    %This is a classdef to use with Invaders1 game. Note that some features
    %are not used in the game.
    properties
        position
        hull %not used
        missile %not used
        sprite
    end
    methods
        function obj =player(varargin)
            %Create the player. The object gamedata.mat is where we
            %previously generated sprites are.
            load('gamedata.mat')
            obj.position=varargin{1};%in the form [x,y]
            obj.hull=100; %Complete health
            obj.missile=3; %We are not using missiles in this version of game, but more firepower is always good idea.
            %This other things are for drawing.
            obj.sprite.X=game.X{1};
            obj.sprite.Y=game.Y{1};
            obj.sprite.sprite=game.sprites{1};%This is the sprite corresponding to player.
        end
        function draw_player(obj,scale)
            %Using the sprite it's very easy to draw the object, just give
            %position and scale.
            s= pcolor(scale*obj.sprite.X+obj.position(1),scale*obj.sprite.Y+obj.position(2),obj.sprite.sprite);
            set(s,'edgecolor','none');
        end
        function obj=update_player(obj,v)
            %Player only need one update, move.
            obj.position(1)=obj.position(1)+v(1);
            obj.position(2)=obj.position(2)+v(2);
        end
    end
end