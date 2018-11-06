% Filtr Eliptyczny 
N = 4; % rzad
Wp = 300/500; % krawêdz czêstotliwoœci pasma przepustowego
Rp = 0.5; % odleglosc pomiedzy min i max zafalowan pasmo przepustowe
Rs = 20; % odleglosc pomiedzy min i max zafalowan pasmo zaporowe
[B,A] = ellip(N,Rp,Rs,Wp,'s');
HEl = tf([B],[A]);