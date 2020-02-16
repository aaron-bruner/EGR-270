classdef lasser
    %This is a classdef to use with Invaders1 game.
    properties
        position
        sprite
    end
    methods
        function obj =lasser(varargin)
            %Create the player. The object gamedata.mat is where we
            %previously generated sprites are.
            load('gamedata.mat')
            obj.position=varargin{1};%in the form [x,y]
            %This other things are for drawing.
            obj.sprite.X=game.X{1};
            obj.sprite.Y=game.Y{1};
            obj.sprite.sprite=game.sprites{end-1};%This is the sprite corresponding to laser.
        end
        function draw_lasser(obj,scale)
            %Using the sprite it's very easy to draw the object, just give
            %position and scale.
            s= pcolor(scale*obj.sprite.X+obj.position(1),scale*obj.sprite.Y+obj.position(2),obj.sprite.sprite);
            set(s,'edgecolor','none');
        end
        function obj=update_lasser(obj,v)
            %Laser only need one update, move.
            obj.position(1)=obj.position(1)+v(1);
            obj.position(2)=obj.position(2)+v(2);
        end
    end
end