% Filtr Butterwortha
N = 4; % rzad
Wn = 1; % częstotliwosc odciecia
[B,A] = butter(N,Wn,'s');
HBu = tf([B],[A]);