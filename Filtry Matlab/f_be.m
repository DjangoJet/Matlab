% Filtr Bessela
N = 4; % rzad
Wo = 100000; % czêstotliwoœæ do której opóŸnienie jest sta³e
[B,A] = besself(N,Wo);
HBe = tf([B],[A]);