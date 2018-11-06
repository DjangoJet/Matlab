
% Filtr Butterwortha
N = 4; % rzad
Wn = 1; % czêstotliwosc odciecia
[B,A] = butter(N,Wn,'s');
HBu = tf([B],[A]);

% Filtr Czebyszewa I
N = 4; % rzad
Wp = 0.5;
R = 0.5; % odleglosc pomiedzy min i max zafalowan
[B,A] = cheby1(N,R,Wp,'s');
HCz1 = tf([B],[A]);

% Filtr Czebyszewa II
N = 4; % rzad
Wst = 0.5;
R = 0.5;
[B,A] = cheby2(N,R,Wst,'s');
HCz2 = tf([B],[A]);

% Filtr Eliptyczny 
N = 4; % rzad
Wp = 300/500;
Rp = 0.5;
Rs = 20;
[B,A] = ellip(N,Rp,Rs,Wp,'s');
HEl = tf([B],[A]);

% Filtr Bessela
N = 4; % rzad
Wo = 100000;
[B,A] = besself(N,Wo);
HBe = tf([B],[A]);

% Charakterystyka skokowa
figure(1)
step(HBu)
hold on
step(HCz1)
hold on
step(HCz2)
hold on
step(HEl);
hold on
step(HBe);
legend('Butterworth','Czebeszyw I','Czebeszyw II','Eliptyczny','Brassela');


% Charakterystyki amplitudowe
figure(2)
bode(HBu) 
hold on
bode(HCz1)
hold on
bode(HCz2)%
hold on
bode(HEl);%
hold on
bode(HBe);
legend('Butterworth','Czebeszyw I','Czebeszyw II','Eliptyczny','Brassela');