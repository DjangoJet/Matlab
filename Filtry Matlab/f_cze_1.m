% Filtr Czebyszewa I
N = 4; % rzad
Wp = 0.5; % krawêdz czêstotliwoœci pasma przepustowego
R = 0.5; % odleglosc pomiedzy min i max zafalowan
[B,A] = cheby1(N,R,Wp,'s');
HCz1 = tf([B],[A]);