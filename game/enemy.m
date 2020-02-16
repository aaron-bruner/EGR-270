classdef enemy
    %This is a classdef to use with Invaders1 game. Note that some features
    %are not used in the game.
    properties
        kind
        position
        health
        sprite
    end
    methods
        function obj =enemy(varargin)
            %Create the enemy. The object gamedata.mat is where we
            %previously generated sprites for each enemy kind.
            load('gamedata.mat')
            obj.kind=varargin{1};%could be from 1 to 7
            obj.position=varargin{2}; %in the form [x,y]
            obj.health=100; %Complete health
            %This other things are for drawing the enemy.
            obj.sprite.X=game.X{obj.kind+1};
            obj.sprite.Y=game.Y{obj.kind+1};
            obj.sprite.sprite=game.sprites{obj.kind+1};
        end
        
        function draw_enemy(obj,scale)
            %Using the sprite it's very easy to draw the object, just give
            %position and scale.
            s= pcolor(scale*obj.sprite.X+obj.position(1),scale*obj.sprite.Y+obj.position(2),obj.sprite.sprite);
            set(s,'edgecolor','none');
        end
        function obj=update_enemy(obj,v)
            %Enemies only need one update, move.
            obj.position(1)=obj.position(1)+v(1);
            obj.position(2)=obj.position(2)+v(2);
        end
    end
end