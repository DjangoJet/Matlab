% Filtr Czebyszewa II
N = 4; % rzad
Wst = 0.5; % krawędz częstotliwości pasma zaporowego
R = 0.5; % odleglosc pomiedzy min i max zafalowan
[B,A] = cheby2(N,R,Wst,'s');
HCz2 = tf([B],[A]);