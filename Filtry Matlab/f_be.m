% Filtr Bessela
N = 4; % rzad
Wo = 100000; % cz�stotliwo�� do kt�rej op�nienie jest sta�e
[B,A] = besself(N,Wo);
HBe = tf([B],[A]);