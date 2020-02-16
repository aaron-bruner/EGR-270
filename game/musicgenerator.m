%This file is not neceesary for the game, but I include it to share
%information and allow other people make changes.
alfa=10000;
t1=1/alfa:1/alfa:0.5;
t2=1/alfa:1/alfa:0.25;
si=(sin(2*pi*246.94*t1));
ret2=sin(2*pi*293.66*t2);
sit2=sin(2*pi*246.94*t2);
fadt1=(sin(2*pi*369.99*t1));
solt1=(sin(2*pi*196*t1));
solupt1=(sin(2*pi*392*t1));

noise=(sin(2*pi*392*t1))+0.1*rand(1,length(t1));
noise2=(sin(2*pi*176*t1))+0.4*rand(1,length(t1));
noise3=(sin(2*pi*76*t1))+0.8*rand(1,length(t1));

%First song
track1=[si,si,ret2,si,si,ret2,si,si,solt1,solt1,si,si,ret2,...
    ret2,ret2,si];
sound_intro = audioplayer(track1,alfa);
%Second
alfa=20000;
track2=[si,solt1,si,solt1];
sound_moving = audioplayer(track2,alfa);
%Third
alfa=40000;
track3=[noise,noise2,noise3,noise3,noise3];
sound_crash = audioplayer(track3,alfa);
%fourth
alfa=40000;
track4=[noise,noise,ret2];
sound_fire = audioplayer(track4,alfa);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


save('musicdata','sound_intro','sound_moving','sound_crash','sound_fire')



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%More usefull functions to use with audioplayer.
% start the playback
play(sound_intro);
play(sound_moving);
play(sound_crash);
play(sound_fire);


% pause the playback
pause(sound_intro);

% resume the playback
resume(sound_intro)

% stop the playback
stop(sound_intro)
